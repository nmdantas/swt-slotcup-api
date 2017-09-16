DELIMITER $$

DROP PROCEDURE IF EXISTS `atualizar_classificacao_piloto` $$

CREATE PROCEDURE `atualizar_classificacao_piloto`(IN _campeonato_id BIGINT)

BEGIN

	/* 
	 * Atualiza posicao geral e por categoria dos pilotos
     */

    DECLARE categoria INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			c.Id
		FROM 
			categoria c
		WHERE
			c.Campeonato_Id = _campeonato_id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO categoria;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            UPDATE 
				piloto_categoria AS pc
				INNER JOIN (
					SELECT @rn:=@rn+1 AS Posicao, t1.id
					FROM (
						SELECT pc.id, COUNT(*) AS ordercount
						FROM 
							piloto_categoria AS pc
						WHERE 
							pc.Categoria_Id = categoria
						GROUP BY
							pc.Id
						ORDER BY pontos_cup DESC
					) t1, (SELECT @rn:=0) t2
				) AS src ON pc.id = src.id
			SET 
				pc.posicao_categoria = src.posicao;
    
		END LOOP loopCur;
    
    CLOSE cur;
    
    /* Atualiza classificação geral de pilotos
     */
    UPDATE 
		piloto_categoria AS pc
		INNER JOIN (
			SELECT @rn:=@rn+1 AS Posicao, t1.id
			FROM (
				SELECT pc.id, COUNT(*) AS ordercount
				FROM 
					piloto_categoria AS pc
                    inner join categoria c on pc.Categoria_Id = c.Id
				WHERE 
					c.Campeonato_Id = _campeonato_id
				GROUP BY
					pc.Id
				ORDER BY pontos_cup DESC
			) t1, (SELECT @rn:=0) t2
		) AS src ON pc.id = src.id
	SET 
		pc.posicao_geral = src.posicao;
        
END $$

DELIMITER ;

    