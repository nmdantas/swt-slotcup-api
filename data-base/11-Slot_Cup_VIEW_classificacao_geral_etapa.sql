/*
 * Classificação geral da etapa
 */

CREATE OR REPLACE VIEW classificacao_geral_etapa
AS
	select 
	cp.Id as Campeonato_Id,
    cp.Nome as Campeonato,
	re.Etapa_Id,
    et.Nome as Etapa,
    c.Id as Categoria_Id,
    c.Nome as Categoria,
    e.Id as Equipe_Id,
    e.Nome as Equipe,
    ep.id as Equipe_Piloto_Id,
    p.id as Piloto_Id,
    p.Nome as Piloto,
    re.Voltas,
    re.Zona,
    re.Voltas_Penalidade,
    re.Pontos,
    re.Ponto_Extra,
    re.Total,
    re.Posicao_Categoria,
    re.Posicao_Categoria_Cup,
    re.Pontos_Cup,
    pc.Situacao,
    re.Posicao_Geral
from 
	resultado_etapa re
    inner join etapa et on re.Etapa_Id = et.id
    inner join campeonato cp on et.Campeonato_Id = cp.id
    inner join piloto_categoria pc on re.Piloto_Categoria_Id = pc.Id
    inner join categoria c on pc.Categoria_Id = c.id
    inner join equipe_piloto ep on pc.Equipe_Piloto_Id = ep.Id
    inner join piloto p on ep.Piloto_Id = p.id
    inner join equipe e on ep.Equipe_Id = e.id
group by re.Etapa_Id, pc.Categoria_Id, ep.id
order by re.Etapa_Id, c.Id, re.posicao_categoria;