DELIMITER $$

DROP PROCEDURE IF EXISTS `atualizar_geral_equipe` $$

CREATE PROCEDURE `atualizar_geral_equipe`(IN _campeonato_id BIGINT)

BEGIN

	/* 
	 * Atualiza pontuação geral da equipe
     */

	DECLARE etapa INTEGER;
    DECLARE equipe INTEGER;
    DECLARE total_etapa INTEGER;
	DECLARE v_finished INTEGER DEFAULT 0;
    
	DECLARE cur CURSOR FOR 
		SELECT 
			re.Etapa_Id,
			ep.Equipe_Id
		FROM 
			resultado_etapa re 
			INNER JOIN piloto_categoria pc ON re.Piloto_Categoria_Id = pc.id
            INNER JOIN equipe_piloto ep ON pc.Equipe_Piloto_Id = ep.id
            INNER JOIN etapa e on re.Etapa_Id = e.id
		WHERE
			e.Campeonato_Id = _campeonato_id
		GROUP BY re.Etapa_Id, ep.Equipe_Id;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    /*
	 * Zera pontuações das equipes para atualizar calculo
	 */
	UPDATE campeonato_equipe SET pontos_cup = 0 WHERE Campeonato_Id = _campeonato_id;
    
    OPEN cur;
    
		loopCur: LOOP
    
			FETCH cur INTO etapa, equipe;
            
			IF v_finished = 1 THEN 
				LEAVE loopCur;
			END IF;
            
            /*
             * Soma as duas melhores pontuações da equipe na etapa
             */
            SET @total_etapa = (SELECT COALESCE(SUM(t1.pontos_cup),0) AS pontos_cup 
				FROM (
					select
						eq.Piloto_Id,
						p.nome,
						re.pontos_cup
					from resultado_etapa re 
						 left outer join piloto_categoria pc on re.Piloto_Categoria_Id = pc.id
						 left outer join equipe_piloto eq on pc.Equipe_Piloto_Id = eq.id
						 left outer join piloto p on eq.Piloto_Id = p.Id
					where
						re.Etapa_Id = etapa and eq.Equipe_Id = equipe 
					group by eq.Equipe_Id, eq.Piloto_Id
					order by re.pontos_cup desc
					limit 2
				) AS t1);
            
            /*
             * Atualiza pontuação total da equipe
             */
            UPDATE 
				campeonato_equipe ce 
			SET 
				ce.pontos_cup = (ce.Pontos_Cup + @total_etapa) 
			WHERE 
				ce.Campeonato_Id = _campeonato_id AND 
                ce.Equipe_Id = equipe;
    
		END LOOP loopCur;
    
    CLOSE cur;
    
    /* Atualiza classificação geral de pilotos select * from campeonato_equipe
     */
    UPDATE 
		campeonato_equipe AS ce
		INNER JOIN (
			SELECT @rn:=@rn+1 AS Posicao, t1.Campeonato_Id, t1.Equipe_Id
			FROM (
				SELECT ce.Campeonato_Id, ce.Equipe_Id, COUNT(*) AS ordercount
				FROM 
					campeonato_equipe AS ce
				WHERE 
					ce.Campeonato_Id = _campeonato_id
				GROUP BY
					ce.Campeonato_Id, ce.Equipe_Id
				ORDER BY pontos_cup DESC
			) t1, (SELECT @rn:=0) t2
		) AS src ON ce.Campeonato_Id = src.Campeonato_Id AND ce.Equipe_Id = src.Equipe_Id
	SET 
		ce.posicao = src.posicao;
        
END $$

DELIMITER ;

    