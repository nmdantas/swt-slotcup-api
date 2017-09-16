use swtslotcup_dev;

/*
 * Atualiza classificação geral do campeonato, posição por etapa, posição no campeonato e classificação por equipe
  Param 1 - ID do Campeonato
  Param 2 - ID da etapa
 */
-- CALL atualizar_classificacao_campeonato(1,0);

/* 
 * Atualiza classificação de uma etapa
 * Param 1 - ID do Campeonato
 * Param 2 - ID da Etapa
 */
-- CALL atualizar_etapa_classificacao(1,1);

/* 
 * Atualiza posicao e pontos de TODAS as etapas do campeonato.
 * Param 1 - ID do Campeonato
 */
-- CALL atualizar_etapa_classificacao_cup(1);

/* 
 * Atualiza posicao e pontos de TODAS as etapas do campeonato.
 * Param 1 - ID do Campeonato
 */
-- CALL atualizar_classificacao_campeonato(2,0);

/*
 * Classificação do campeonato por equipe
 */
select * 
from classificacao_geral_equipe 
where Campeonato_Id = 2
order by Campeonato_Id, posicao;

/*
 * Classificação do campeonato por categoria
 */
select * 
from classificacao_geral_categoria 
where Campeonato_Id = 2
group by Categoria_Id, Piloto_Categoria_Id
order by Categoria_Id, posicao_categoria;

/*
 * Classificação da etapa por categoria
 */
select * 
from classificacao_geral_etapa  
where Campeonato_Id = 2
group by Etapa_Id, Categoria_Id, Equipe_Piloto_Id
order by Etapa_Id, Categoria_Id, posicao_categoria;
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    