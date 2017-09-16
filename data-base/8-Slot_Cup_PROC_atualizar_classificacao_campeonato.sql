DELIMITER $$

DROP PROCEDURE IF EXISTS `atualizar_classificacao_campeonato` $$

CREATE PROCEDURE `atualizar_classificacao_campeonato`(IN _campeonato_id BIGINT, IN _etapa_id BIGINT)

BEGIN

	/*
     * Atualiza classificação geral do campeonato, posição por etapa, posição no campeonato e classificação por equipe
     */

	DECLARE _quantidade_etapas INT;
    DECLARE _participacao_minima INT; 
    DECLARE _etapas_realizadas INT;
    DECLARE _pontos_extra INT;

	/*DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
	DECLARE EXIT HANDLER FOR SQLWARNING ROLLBACK;

	START TRANSACTION;*/
    
    SET _etapas_realizadas   = (SELECT COUNT(DISTINCT re.etapa_id) FROM resultado_etapa re LEFT OUTER JOIN etapa e ON re.etapa_id = e.id WHERE e.Campeonato_Id = _campeonato_id);
    SET _quantidade_etapas   = (select Quantidade_Etapas        from campeonato where id = _campeonato_id);
    SET _participacao_minima = (select Participacao_minima      from campeonato where id = _campeonato_id);
    
    -- Verifica se deve atualizar a classificação de todas as etapas ou apenas a informada
    IF _etapa_id = 0 THEN
		CALL atualizar_etapa_classificacao_cup(_campeonato_id);
	ELSE
		CALL atualizar_etapa_classificacao(_campeonato_id, _etapa_id);
    END IF;
    
    -- Iguala voltas na etapa com voltas consideradas para o campeonato
	update 
		resultado_etapa re 
		inner join etapa e on re.Etapa_Id = e.id
        inner join piloto_categoria pc on re.Piloto_Categoria_Id = pc.id
    set 
		re.Voltas_Cup = re.Voltas,
		re.Pontos_Cup = 0,
        re.Posicao_Categoria_Cup = 0
    where 
		e.Campeonato_Id = _campeonato_id;
        
	-- Desclassifica pilotos
    IF _etapas_realizadas > _participacao_minima THEN
		
        -- Desclassifica os pilotos que não participaram do mínimo para o campeonato
        UPDATE 
			piloto_categoria as pc
			inner join (select
							pc.Id as id,
							COALESCE(count(re.id),0) as Participacoes
						from 
							piloto_categoria pc
							left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
							left outer join categoria c on pc.Categoria_Id = c.id
						where 
							c.Campeonato_Id = _campeonato_id 
						group by
							pc.Id
						HAVING Participacoes < _participacao_minima) as src on pc.Id = src.id
            
		SET 
			situacao = 0;
            
    END IF ;
        
	/* 
     * Zera as voltas consideradas para o campeonato para os pilotos desclassificados
	 */ 
    update 
		resultado_etapa re 
		inner join etapa e on re.Etapa_Id = e.id
        inner join piloto_categoria pc on re.Piloto_Categoria_Id = pc.id
    set 
		re.Voltas_Cup = 0
    where 
		e.Campeonato_Id = _campeonato_id and
        pc.Situacao = 0;
    
    /* 
	 * Atualiza posicao e pontos a considerar para o campeonato, os desclassificados nesse momento já estão com as voltas zeradas.
     */
	CALL atualizar_etapa_campeonato(_campeonato_id);
    
    /*
     * Final de Campeonato
     * Atualizar pontuação de Descarte
     * Atualizar pontuação extra por participar de todas as etapas
	 */
    IF _etapas_realizadas = _quantidade_etapas THEN
    
		-- Zera ponto de descarte
		UPDATE 
			piloto_categoria pc 
			inner join categoria c on pc.Categoria_Id = c.Id 
		SET 
			pc.descarte = 0,
            pc.Pontos_Extra_Particip = 0
		where 
			c.Campeonato_Id = _campeonato_id ; 

		-- Atualiza ponto de descarte com menor pontuação no campeonato
		UPDATE 
			piloto_categoria as pc
			inner join (select
						pc.Id as Piloto_Categoria_Id,
						COALESCE(MIN(re.Pontos_Cup), 0) as Descarte,
						COALESCE(COUNT(re.Id), 0) as Participacoes
					from 
						piloto_categoria pc
						left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
						left outer join categoria c on pc.Categoria_Id = c.id
					where 
						c.Campeonato_Id = _campeonato_id 
					group by
						pc.Id
					having Participacoes = _quantidade_etapas) as src on pc.Id = src.Piloto_Categoria_Id
		SET 
			pc.Descarte = src.Descarte;
    
		-- Pilotos que participaram do minimo de etapas ganham bonus de 'Bonus_Participacao_Etapa' pontos por etapas participadas
        SET _pontos_extra = (select Bonus_Participacao_Etapa from campeonato where id = _campeonato_id);
		UPDATE 
			piloto_categoria as pc
			inner join (select
							pc.Id as Piloto_Categoria_Id,
							COALESCE(COUNT(re.Id), 0) as Participacoes,
							(COALESCE(COUNT(re.Id), 0) * _pontos_extra) as Pontos_Extra_Particip
						from 
							piloto_categoria pc
							left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
							left outer join categoria c on pc.Categoria_Id = c.id
						where 
							c.Campeonato_Id = _campeonato_id
						group by
							pc.Id
						having Participacoes >= _participacao_minima) as src on pc.Id = src.Piloto_Categoria_Id
		SET 
			pc.Pontos_Extra_Particip = src.Pontos_Extra_Particip;
            
    END IF;
    
    /*
     * Totalizar pontuação dos pilotos no campeonato
	 */
	UPDATE piloto_categoria pc inner join categoria c on pc.Categoria_Id = c.Id 
	SET pc.Pontos_Categoria = 0, pc.Pontos_Cup = 0
	where c.Campeonato_Id = _campeonato_id;
    
	UPDATE 
		piloto_categoria as pc
		inner join (select
						pc.Id as Piloto_Categoria_Id,
						COALESCE(SUM(re.Pontos_Cup),0) as Total_Pontos_Cup, 
                        COALESCE(pc.Pontos_Extra_Particip,0) as Pontos_Extra_Particip
					from 
						piloto_categoria pc
						left outer join resultado_etapa re on pc.Id = re.Piloto_Categoria_Id
						left outer join categoria c on pc.Categoria_Id = c.id
					where 
						c.Campeonato_Id = _campeonato_id
					group by
						pc.Id) as src on pc.Id = src.Piloto_Categoria_Id
		
	SET 
		pc.Pontos_Categoria = src.Total_Pontos_Cup,
        pc.Pontos_Cup = (src.Total_Pontos_Cup + src.Pontos_Extra_Particip - pc.Descarte);
    
    /*
     * Atualizar posição do piloto no campeonato e na categoria
	 */
    CALL atualizar_classificacao_piloto(_campeonato_id);
    
    /*
     * Atualizar pontuação e posição da equipe no campeonato
	 */
    CALL atualizar_geral_equipe(_campeonato_id);
    
    -- COMMIT;
        
END $$

DELIMITER ;
    