DELIMITER $$

DROP PROCEDURE IF EXISTS `atualizar_etapa_classificacao_cup` $$

CREATE PROCEDURE `atualizar_etapa_classificacao_cup`(IN _campeonato_id BIGINT)

BEGIN

	/* 
	 * Atualiza posicao e pontos de TODAS as etapas do campeonato.
     */
     
    DECLARE etapa INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			re.Etapa_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN etapa e ON re.Etapa_Id = e.id
		WHERE
			e.Campeonato_Id = _campeonato_id
		GROUP BY re.Etapa_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO etapa;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            CALL atualizar_etapa_classificacao(_campeonato_id, etapa);
    
		END LOOP loopCur;
    
    CLOSE cur;
        
END $$

DELIMITER ;