/*
 * Classificação geral dos campeonatos por equipe
 */

CREATE OR REPLACE VIEW classificacao_geral_equipe
AS
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
	order by 
		c.id, ce.posicao;