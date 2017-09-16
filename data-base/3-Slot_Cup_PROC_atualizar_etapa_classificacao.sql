DELIMITER $$

DROP PROCEDURE IF EXISTS `atualizar_etapa_classificacao` $$

CREATE PROCEDURE `atualizar_etapa_classificacao`(IN _campeonato_id BIGINT, IN _etapa_id BIGINT)

BEGIN

	/* 
	 * Atualiza posicao e pontos da etapa.
     */

    DECLARE categoria INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT
			pc.Categoria_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN etapa e ON re.Etapa_Id = e.id
		WHERE
			e.Id = _etapa_id
		GROUP BY re.Etapa_Id, pc.Categoria_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    -- Atualiza posição geral da etapa
	UPDATE 
		resultado_etapa AS re
		INNER JOIN (
			SELECT @rn:=@rn+1 AS Posicao, t1.id
			FROM (
				SELECT
					re.id
				FROM 
					resultado_etapa re 
				WHERE 
					re.etapa_id = _etapa_id 
				ORDER BY re.voltas DESC, re.zona DESC
			) t1, (SELECT @rn:=0) t2
		) AS src ON re.id = src.id
	SET 
		re.posicao_geral = src.posicao;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO categoria;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            -- Atualiza pontuações e posicao por categoria
            SET @pontos_cup = 0;
            UPDATE 
				resultado_etapa AS re
				INNER JOIN (
					SELECT @rn:=@rn+1 AS Posicao, t1.id
					FROM (
						SELECT re.id, COUNT(*) AS ordercount
						FROM 
							resultado_etapa AS re
							INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
						WHERE 
							re.Etapa_Id = _etapa_id AND pc.categoria_id = categoria
						GROUP BY id
						ORDER BY voltas DESC, zona DESC
					) t1, (SELECT @rn:=0) t2 
				) AS src ON re.id = src.id
			SET 
				re.posicao_categoria = src.posicao,
				re.pontos = @pontos_cup := (SELECT pontos FROM campeonato_pontuacao WHERE Campeonato_Id = _campeonato_id AND posicao = src.posicao),
                re.total = (@pontos_cup + re.ponto_extra);
    
		END LOOP loopCur;
    
    CLOSE cur;
        
END $$

DELIMITER ;