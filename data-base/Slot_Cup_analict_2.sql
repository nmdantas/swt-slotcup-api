-- Classificação geral da etapa por categoria
SET @campeonato = 2;
select 
	cp.Id as Campeonato_Id,
    cp.Nome as Campeonato,
	re.Etapa_Id,
    et.Nome as Etapa,
    c.Id as Categoria_Id,
    c.Nome as Categoria,
    e.Id as Equipe_Id,
    e.Nome as Equipe,
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
-- where
	-- et.Campeonato_Id = @campeonato
group by re.Etapa_Id, pc.Categoria_Id, ep.id
order by re.Etapa_Id, c.Id, re.posicao_categoria;

-- Classificação geral do campeonato por categoria
SET @campeonato = 2;
select 
	cp.Id as Campeonato_Id,
    cp.Nome as Campeonato,
	pc.id,
    e.Id as Equipe_Id,
    e.nome as Equipe,
    c.Id as Categoria_Id,
    c.Nome as Categoria,
    p.id as Piloto_id,
    p.nome as Piloto,
    pc.posicao_categoria,
    pc.Pontos_Categoria as Total_Pontos_Etapas,
    pc.Pontos_Extra_Particip,
    pc.Descarte,
    pc.Pontos_Cup as Total_Pontos_Cup,
    pc.posicao_geral
from 
	piloto_categoria pc
    inner join categoria c on pc.Categoria_Id = c.id
    inner join campeonato cp on c.Campeonato_Id = cp.id
    inner join equipe_piloto ep on pc.Equipe_Piloto_Id = ep.id
    inner join equipe e on ep.Equipe_Id = e.id
    inner join piloto p on ep.Piloto_Id = p.id
-- where
	-- c.Campeonato_Id = @campeonato
group by c.Id, pc.id
order by c.Id, pc.posicao_categoria;

-- Classificação geral do campeonato por equipe
SET @campeonato = 1;
select 
	c.id as Campeonato_Id,
    c.Nome as Campeonato,
    e.id as Equipe_Id,
    e.nome as Equipe,
	ce.Posicao,
	ce.Pontos_Cup
from 
	campeonato_equipe ce
    inner join campeonato c on ce.Campeonato_Id = c.id
    inner join equipe e on ce.Equipe_Id = e.id
-- where
	-- ce.Campeonato_Id = @campeonato
order by 
	c.id, ce.posicao;

