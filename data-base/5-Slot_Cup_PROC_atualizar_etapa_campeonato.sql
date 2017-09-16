DELIMITER $$

DROP PROCEDURE IF EXISTS `atualizar_etapa_campeonato` $$

CREATE PROCEDURE `atualizar_etapa_campeonato`(IN _campeonato_id BIGINT)

BEGIN

	/* 
	 * Atualiza posicao e pontos a considerar para o campeonato, os desclassificados nesse momento já estão com as voltas zeradas.
     */

	DECLARE etapa INTEGER;
    DECLARE categoria INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			re.Etapa_Id,
			pc.Categoria_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN etapa e ON re.Etapa_Id = e.id
		WHERE
			e.Campeonato_Id = _campeonato_id
		GROUP BY re.Etapa_Id, pc.Categoria_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO etapa, categoria;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
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
							re.Etapa_Id = etapa AND pc.categoria_id = categoria
						GROUP BY id
						ORDER BY voltas_cup DESC, zona DESC
					) t1, (SELECT @rn:=0) t2 
				) AS src ON re.id = src.id
			SET 
				re.posicao_categoria_cup = src.posicao,
				re.pontos_cup = (SELECT pontos FROM campeonato_pontuacao WHERE Campeonato_Id = _campeonato_id AND posicao = src.posicao) + re.ponto_extra;
    
		END LOOP loopCur;
    
    CLOSE cur;
        
END $$

DELIMITER ;

    