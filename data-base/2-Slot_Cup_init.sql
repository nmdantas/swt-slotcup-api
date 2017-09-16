USE swtslotcup_dev;

-- Equipes
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('Espaço Formula', 'Fernando', '19 2121-2121', 'Chácara', 'Piracicaba');
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('DG Slot', 'Del', '11 2121-2121', 'Rua Venâncio Aires 456', 'São Paulo');
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('Slot Club São Paulo', 'Jeferson', '11 2121-2121', 'Rua ', 'São Paulo');
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('Slot Car Jundiaí', 'Fábio', '11 2121-2121', 'Rua ', 'Jundiaí');
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('Rato Raceway', 'Rato', '19 2121-2121', 'Rua ', 'Mogi Mirim');
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('Monza', 'Toninho', '11 2121-2121', 'Rua ', 'São Paulo');
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('Rocco Racer', 'Rocco', '11 2121-2121', 'Rua ', 'Valinhos');
insert into equipe (nome, responsavel, telefone, endereco, cidade) values ('Puts Slot Racer', 'Puts', '11 2121-2121', 'Rua ', 'Verificar');

-- Espaço Formula
insert into piloto (nome, telefone, cpf) values ('Thiago Ito','19 99878-4044', '344.412.388-43');
insert into equipe_piloto (equipe_id, piloto_id) values (1,1);
insert into piloto (nome, telefone, cpf) values ('Fernando Schwlle','19 90000-0000', '000.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,2);
insert into piloto (nome, telefone, cpf) values ('Renata Ito','11 99810-2010', '100.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,3);
insert into piloto (nome, telefone, cpf) values ('Gelson','11 90000-0000', '200.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,4);
insert into piloto (nome, telefone, cpf) values ('Ricardo','11 90000-0000', '300.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,5);
insert into piloto (nome, telefone, cpf) values ('Emerson','11 90000-0000', '300.100.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,6);
insert into piloto (nome, telefone, cpf) values ('João Victor','11 90000-0000', '300.200.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,7);
insert into piloto (nome, telefone, cpf) values ('Balinha','11 90000-0000', '300.300.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,8);
insert into piloto (nome, telefone, cpf) values ('Mau Stock','11 90000-0000', '300.400.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,9);
insert into piloto (nome, telefone, cpf) values ('Radar','11 90000-0000', '300.410.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (1,10);

-- DG
insert into piloto (nome, telefone, cpf) values ('Del','11 90000-0000', '400.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,11);
insert into piloto (nome, telefone, cpf) values ('Cassiano','11 90000-0000', '500.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,12);
insert into piloto (nome, telefone, cpf) values ('Felipe','11 90000-0000', '060.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,13);
insert into piloto (nome, telefone, cpf) values ('Zé Horn','11 90000-0000', '090.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,14);
insert into piloto (nome, telefone, cpf) values ('Giba','11 90000-0000', '140.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,15);
insert into piloto (nome, telefone, cpf) values ('Edu','11 90000-0000', '150.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,16);
insert into piloto (nome, telefone, cpf) values ('Tilt','11 90000-0000', '160.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,17);
insert into piloto (nome, telefone, cpf) values ('Aloísio','11 90000-0000', '170.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,18);
insert into piloto (nome, telefone, cpf) values ('Dida','11 90000-0000', '170.500.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,19);
insert into piloto (nome, telefone, cpf) values ('Reno','11 90000-0000', '170.600.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,20);
insert into piloto (nome, telefone, cpf) values ('Cid','11 90000-0000', '170.700.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,21);
insert into piloto (nome, telefone, cpf) values ('João','11 90000-0000', '170.900.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (2,22);

-- Club São Paulo
insert into piloto (nome, telefone, cpf) values ('Jeff','11 90000-0000', '130.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,23);
insert into piloto (nome, telefone, cpf) values ('Joel','11 90000-0000', '180.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,24);
insert into piloto (nome, telefone, cpf) values ('Marcelo','11 90000-0000', '190.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,25);
insert into piloto (nome, telefone, cpf) values ('Pezão','11 90000-0000', '190.120.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,26);
insert into piloto (nome, telefone, cpf) values ('Simões','11 90000-0000', '190.130.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,27);
insert into piloto (nome, telefone, cpf) values ('Fernando','11 90000-0000', '190.250.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,28);
insert into piloto (nome, telefone, cpf) values ('Victor','11 90000-0000', '190.260.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,29);
insert into piloto (nome, telefone, cpf) values ('Charles','11 90000-0000', '190.270.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (3,30);

-- Club Jundiaí
insert into piloto (nome, telefone, cpf) values ('Fábio','11 90000-0000', '141.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,31);
insert into piloto (nome, telefone, cpf) values ('Beto','11 90000-0000', '142.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,32);
insert into piloto (nome, telefone, cpf) values ('Barbosa','11 90000-0000', '143.000.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,33);
insert into piloto (nome, telefone, cpf) values ('Augusto','11 90000-0000', '143.300.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,34);

-- Rato Raceway
insert into piloto (nome, telefone, cpf) values ('Rato','11 90000-0000', '143.310.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,35);
insert into piloto (nome, telefone, cpf) values ('Neto','11 90000-0000', '143.320.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,36);
insert into piloto (nome, telefone, cpf) values ('Márcio','11 90000-0000', '143.330.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,37);
insert into piloto (nome, telefone, cpf) values ('Bernardi','11 90000-0000', '143.340.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,38);
insert into piloto (nome, telefone, cpf) values ('Júlio','11 90000-0000', '143.350.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,39);
insert into piloto (nome, telefone, cpf) values ('Dias','11 90000-0000', '143.360.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,40);
insert into piloto (nome, telefone, cpf) values ('Gerson','11 90000-0000', '143.370.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,41);
insert into piloto (nome, telefone, cpf) values ('Evaldo','11 90000-0000', '143.380.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (5,42);

-- Monza
insert into piloto (nome, telefone, cpf) values ('P. Santana','11 90000-0000', '143.390.000-00');
insert into equipe_piloto (equipe_id, piloto_id) values (6,43);

-- Rocco
insert into piloto (nome, telefone, cpf) values ('Eduardo Traldi','11 90000-0000', '143.391.200-00');
insert into equipe_piloto (equipe_id, piloto_id) values (7,44);
insert into piloto (nome, telefone, cpf) values ('Rocco','11 90000-0000', '143.300.140-00');
insert into equipe_piloto (equipe_id, piloto_id) values (7,45);

-- NOVOS Jundiai
insert into piloto (nome, telefone, cpf) values ('Atílio','11 90000-0000', '143.300.110-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,46);
insert into piloto (nome, telefone, cpf) values ('Marquinhos','11 90000-0000', '143.300.120-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,47);
insert into piloto (nome, telefone, cpf) values ('Plínio','11 90000-0000', '143.300.130-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,48);
insert into piloto (nome, telefone, cpf) values ('Rinaldo','11 90000-0000', '143.300.160-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,49);

-- Novos Rato
insert into piloto (nome, telefone, cpf) values ('Bernardi','11 90000-0000', '143.300.150-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,50);

-- Novos Club São Paulo
insert into piloto (nome, telefone, cpf) values ('Rodrigo','11 90000-0000', '143.300.170-00');
insert into equipe_piloto (equipe_id, piloto_id) values (4,51);

-- Campeonato SLOT IT 1/32 2016
insert into campeonato (nome, inicio, fim, valor_ponto_extra, quantidade_etapas, participacao_minima, bonus_participacao_etapa) values ('Campeonato Paulista Slot-it Grupo C 1/32 - 2016', '2016-03-18', '2016-12-20', 1, 6, 3, 3);

-- Categorias
insert into categoria (nome, campeonato_id) values ('Light', 1);
insert into categoria (nome, campeonato_id) values ('Semi-B', 1);
insert into categoria (nome, campeonato_id) values ('Semi-A', 1);
insert into categoria (nome, campeonato_id) values ('Pró', 1);

-- Pontuação
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 1, 30);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 2, 27);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 3, 25);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 4, 23);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 5, 21);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 6, 20);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 7, 19);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 8, 18);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 9, 17);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 10, 16);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 11, 15);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 12, 14);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 13, 13);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 14, 12);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 15, 11);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 16, 10);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 17, 9);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 18, 8);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 19, 7);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 20, 6);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 21, 5);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 22, 4);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 23, 3);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 24, 2);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 25, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 26, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 27, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 28, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 29, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (1, 30, 1);

-- Equipe campeonato
insert into campeonato_equipe (campeonato_id, equipe_id) value (1, 1);
insert into campeonato_equipe (campeonato_id, equipe_id) value (1, 2);
insert into campeonato_equipe (campeonato_id, equipe_id) value (1, 3);
insert into campeonato_equipe (campeonato_id, equipe_id) value (1, 4);
insert into campeonato_equipe (campeonato_id, equipe_id) value (1, 5);
insert into campeonato_equipe (campeonato_id, equipe_id) value (1, 6);

-- Piloto por categoria 2016 Light
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (3,  1); -- Renata -  1   
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (6,  1); -- Emerson - 2
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (7,  1); -- João -    3
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (14, 1); -- Zé Horn - 4 
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (16, 1); -- Edu -     5
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (39, 1); -- Julio -   6
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (40, 1); -- Dias -    7
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (41, 1); -- Gerson -  8
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (42, 1); -- Evaldo -  9
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (26, 1); -- Pezão -   10

-- Piloto por categoria 2016 Semi-B
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (4,  2); -- Gelson -   11
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (5,  2); -- Ricardo -  12
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (8,  2); -- Balinha -  13
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (15, 2); -- Giba -     14
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (19, 2); -- Dida -     15
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (33, 2); -- Barbosa -  16
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (27, 2); -- Simões -   17
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (38, 2); -- Bernardi - 18

-- Piloto por categoria 2016 Semi-A
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (1,  3); -- Thiago -   19
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (35, 3); -- Rato -     20
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (36, 3); -- Neto -     21
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (37, 3); -- Marcio -   22
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (44, 3); -- XXXXXX -   23
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (31, 3); -- Fabio -    24
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (32, 3); -- Beto -     25
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (34, 3); -- Augusto -  26
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (20, 3); -- Reno -     27
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (21, 3); -- Cid -      28
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (25, 3); -- Marcelo -  29
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (28, 3); -- Fernando - 30
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (29, 3); -- Victor -   31

-- Piloto por categoria 2016 Pró
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (2,  4); -- Schuwlle -   32
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (11, 4); -- Dell -       33
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (24, 4); -- Joel -       34
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (22, 4); -- João -       35
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (23, 4); -- Jeff -       36
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (18, 4); -- Aloisio -    37
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (12, 4); -- Cassi -      38
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (9,  4); -- Stock -      39
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (30, 4); -- Charlles -   40
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (10, 4); -- Radar -      41
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (43, 4); -- P. Santana - 42

-- Etapas 2016
insert into etapa (campeonato_id, equipe_id, data, nome) values (1, 3, '2017-02-27', 'Slot Club São Paulo');
insert into etapa (campeonato_id, equipe_id, data, nome) values (1, 2, '2017-04-16', 'DG Slot Racer');
insert into etapa (campeonato_id, equipe_id, data, nome) values (1, 5, '2017-05-14', 'Rato Raceway');
insert into etapa (campeonato_id, equipe_id, data, nome) values (1, 4, '2017-07-16', 'Slot Club Jundiaí');
insert into etapa (campeonato_id, equipe_id, data, nome) values (1, 1, '2017-09-17', 'Espaço Formula');
insert into etapa (campeonato_id, equipe_id, data, nome) values (1, 6, '2017-11-26', 'Monza');

-- RESULTADOS 2016 SLOT IT 1/32

-- Inserir Resultados '2017-02-27', 'Club Sao Paulo'                                                                
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (33, 1, 251,  0 , 0); 
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (32, 1, 241,	0 , 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (11, 1, 230,	9 , 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (20, 1, 239,	0 , 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (19, 1, 230,	24, 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (21, 1, 219,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (16, 1, 214,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (35, 1, 235,	42, 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (26, 1, 224,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (18, 1, 194,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (12, 1, 225,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (34, 1, 244,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (24, 1, 231,	0 , 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (36, 1, 226,	40, 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (1 , 1, 175,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (10, 1, 227,	0 , 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (27, 1, 232,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (40, 1, 246,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (29, 1, 235, 12,  0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (17, 1, 230,	4 , 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (30, 1, 226,	29, 1);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (2 , 1, 199,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (31, 1, 222,	0 , 0);	
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (15, 1, 186,	0 , 0);	

-- Inserir Resultados '2017-04-16', 'DG Slot Racer'
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (33, 2, 270,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (32, 2, 254,	77, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (11, 2, 242,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (20, 2, 254,	1 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (14, 2, 269,	18, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (19, 2, 246,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (21, 2, 269,	74, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (16, 2, 247,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (35, 2, 258,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (26, 2, 235,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (5 , 2, 253,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (18, 2, 227,	71, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (34, 2, 71 ,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (24, 2, 248,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (36, 2, 265,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (4 , 2, 226,	77, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (37, 2, 271,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (1 , 2, 201,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (10, 2, 241,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (27, 2, 252,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (29, 2, 71 ,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (28, 2, 261,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (2 , 2, 200,	0 , 1);

-- Inserir Resultados '2017-05-14', 'Rato Raceway'
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (33, 3, 285,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (32, 3, 246,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (11, 3, 275,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (20, 3, 288,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (14, 3, 270,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (19, 3, 269,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (21, 3, 283,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (16, 3, 266,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (35, 3, 272,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (26, 3, 279,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (5 , 3, 262,	10, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (18, 3, 280,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (12, 3, 262,	47, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (24, 3, 265,	9 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (4 , 3, 227,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (1 , 3, 222,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (22, 3, 130,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (6 , 3, 265,	41, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (7 , 3, 262,	25, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (8 , 3, 254,	0 , 0);

-- Inserir Resultados '2017-07-16', 'Slot Club Jundiaí'
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (33, 4, 251,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (32, 4, 250,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (11, 4, 237,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (20, 4, 233,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (14, 4, 232,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (19, 4, 239,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (21, 4, 228,	42, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (16, 4, 241,	20, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (35, 4, 240,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (26, 4, 241,	24, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (5 , 4, 224,	10, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (18, 4, 227,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (12, 4, 226,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (34, 4, 224,	31, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (24, 4, 231,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (36, 4, 238,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (4 , 4, 228,	10, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (1 , 4, 220,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (10, 4, 211,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (25, 4, 243,	0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (22, 4, 229,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (6 , 4, 204,	0 , 0);

-- Inserir Resultados '2017-09-17', 'Espaço Formula'
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (33, 5, 233,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (32, 5, 283,	0, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (11, 5, 297,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (20, 5, 119,	0, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (14, 5, 279,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (19, 5, 284,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (21, 5, 280,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (16, 5, 263,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (5 , 5, 285,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (18, 5, 260,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (12, 5, 278,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (34, 5, 258,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (36, 5, 125,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (4 , 5, 226,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (1 , 5, 282,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (38, 5, 311,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (39, 5, 290,	0, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (41, 5, 287,	0, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (3 , 5, 265,	0, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (13, 5, 262,	0, 0);

-- Inserir Resultados '2017-11-26', 'Monza'
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (33, 6, 300,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (32, 6, 296,	67, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (11, 6, 289,	72, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (20, 6, 274,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (14, 6, 296,	18, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (19, 6, 294,	35, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (21, 6, 265,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (16, 6, 289,	27, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (26, 6, 273,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (5 , 6, 269,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (18, 6, 275,	28, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (12, 6, 280,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (34, 6, 277,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (4 , 6, 294,	49, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (37, 6, 296,	55, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (1 , 6, 288,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (10, 6, 275,	64, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (17, 6, 259,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (42, 6, 284,	0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (9 , 6, 238,	0 , 0);

-- Campeonato SCALEAUTO 1/32 2017
insert into campeonato (nome, inicio, fim, valor_ponto_extra, quantidade_etapas, participacao_minima, Bonus_Participacao_Etapa) values ('Campeonato Paulista Scaleauto 1/32 - 2017', '2017-03-18', '2017-12-20', 1, 8, 4, 3);

-- Categorias
insert into categoria (nome, campeonato_id) values ('Light', 2);
insert into categoria (nome, campeonato_id) values ('Semi-Pró', 2);
insert into categoria (nome, campeonato_id) values ('Pró', 2);
insert into categoria (nome, campeonato_id) values ('Super-Pró', 2);

-- Pontuação
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 1, 30);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 2, 27);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 3, 25);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 4, 23);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 5, 21);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 6, 20);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 7, 19);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 8, 18);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 9, 17);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 10, 16);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 11, 15);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 12, 14);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 13, 13);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 14, 12);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 15, 11);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 16, 10);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 17, 9);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 18, 8);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 19, 7);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 20, 6);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 21, 5);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 22, 4);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 23, 3);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 24, 2);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 25, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 26, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 27, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 28, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 29, 1);
insert into campeonato_pontuacao (campeonato_id, posicao, pontos) values (2, 30, 1);

-- Equipe campeonato
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 1);
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 2);
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 3);
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 4);
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 5);
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 6);
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 7);
insert into campeonato_equipe (campeonato_id, equipe_id) value (2, 8);

-- Piloto por categoria 2017 Light
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (39, 5); -- Julio -      43
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (47, 5); -- Marquinhos - 44
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (48, 5); -- Plínio -     45
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (45, 5); -- Rocco -      46
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (49, 5); -- Rinaldo -    47
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (51, 5); -- Rodrigo -    48
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (17, 5); -- Tilt -       49

-- Piloto por categoria 2017 Semi
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (33, 6); -- Barbosa -        50
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (46, 6); -- Atilio -         51
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (29, 6); -- Victor -         52
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (44, 6); -- Eduardo Traldi - 53
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (5,  6); -- Ricardo -        54
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (14, 6); -- Zé Horn -        55
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (38, 6); -- Bernardi -       56
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (32, 6); -- Beto -           57

-- Piloto por categoria 2017 PRÓ
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (31, 7); -- Fabio -    58
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (4,  7); -- Gelson -   59
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (15, 7); -- Giba -     60
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (25, 7); -- Marcelo -  61
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (1,  7); -- Thiago -   62
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (35, 7); -- Rato -     63
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (24, 7); -- Joel -     64
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (36, 7); -- Neto -     65
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (34, 7); -- Augusto -  66

-- Piloto por categoria 2017 Super Pró
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (23, 8); -- Jeff -     67
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (13, 8); -- Felipe -   68
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (18, 8); -- Aloisio -  69
insert into piloto_categoria (equipe_piloto_id, categoria_id) values (2,  8); -- Schuwlle - 70

-- Etapas 2017
insert into etapa (campeonato_id, equipe_id, data, nome) values (2, 4, '2017-03-18', 'Slot Club Jundiaí');
insert into etapa (campeonato_id, equipe_id, data, nome) values (2, 2, '2017-04-01', 'DG Slot Racer');

-- RESULTADOS 2017 SCALEOUT 1/32

-- Inserir Resultados '2017-03-18', 'Slot Club Jundiaí'                                                                
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (50, 7, 242, 0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (58, 7, 241, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (59, 7, 235, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (67, 7, 233, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (60, 7, 231, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (51, 7, 230, 10, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (61, 7, 230, 8 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (52, 7, 229, 0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (62, 7, 227, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (63, 7, 226, 31, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (68, 7, 226, 4 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (53, 7, 225, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (44, 7, 222, 41, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (64, 7, 222, 23, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (45, 7, 220, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (69, 7, 219, 33, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (54, 7, 219, 13, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (70, 7, 219, 4 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (55, 7, 218, 0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (46, 7, 215, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (56, 7, 214, 0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (47, 7, 210, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (48, 7, 209, 39, 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (65, 7, 209, 16, 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (57, 7, 204, 0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (43, 7, 196, 0 , 0);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (49, 7, 186, 0 , 1);
INSERT INTO resultado_etapa (piloto_categoria_id, etapa_id, voltas, zona, ponto_extra) VALUES (66, 7, 148, 0 , 1);