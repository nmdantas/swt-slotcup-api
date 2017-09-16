/*
 * Classificação geral dos campeonatos por categoria
 */

CREATE OR REPLACE VIEW classificacao_geral_categoria
AS
	select 
		cp.Id as Campeonato_Id,
		cp.Nome as Campeonato,
		pc.id as Piloto_Categoria_Id,
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
	group by c.Id, pc.id
	order by c.Id, pc.posicao_categoria;