CREATE SCHEMA IF NOT EXISTS swtslotcup_dev DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

USE swtslotcup_dev;

CREATE TABLE IF NOT EXISTS `Equipe` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Responsavel` varchar(255),
  `Telefone` varchar(12),
  `Endereco` varchar(255),
  `Cidade` varchar(100),
  PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS `Piloto` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Telefone` varchar(13),
  `cpf` varchar(14),
  UNIQUE (cpf),
  PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS `Equipe_Piloto` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Equipe_Id` BIGINT NOT NULL,
  `Piloto_Id` BIGINT NOT NULL,
  PRIMARY KEY (Id),
  CONSTRAINT FK_EQUIPE_PILOTO FOREIGN KEY (Equipe_Id) REFERENCES Equipe (Id),
  CONSTRAINT FK_PILOTO_EQUIPE FOREIGN KEY (Piloto_Id) REFERENCES Piloto (Id)
);

CREATE TABLE IF NOT EXISTS `Campeonato` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Inicio` date,
  `Fim` date,
  `Valor_Ponto_Extra` integer DEFAULT 0,
  `Quantidade_Etapas` integer DEFAULT 0,
  `Participacao_minima` integer DEFAULT 0,
  `Bonus_Participacao_Etapa` integer DEFAULT 0,
  PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS `Campeonato_Equipe` (
  `Campeonato_Id` BIGINT NOT NULL,
  `Equipe_Id` BIGINT NOT NULL,
  `Pontos_Cup` integer NOT NULL DEFAULT 0,
  `Posicao` integer NOT NULL DEFAULT 0,
  PRIMARY KEY (Campeonato_Id,Equipe_Id),
  CONSTRAINT FK_EQUIPE_CAMPEONATO FOREIGN KEY (Campeonato_Id) REFERENCES Campeonato (Id),
  CONSTRAINT FK_CAMPEONATO_EQUIPE FOREIGN KEY (Equipe_Id) REFERENCES Equipe (Id)
);

CREATE TABLE IF NOT EXISTS `Campeonato_Pontuacao` (
  `Campeonato_Id` BIGINT NOT NULL,
  `Posicao` integer NOT NULL DEFAULT 0,
  `Pontos` integer NOT NULL DEFAULT 0,
  PRIMARY KEY (Campeonato_Id,Posicao),
  CONSTRAINT FK_CAMPEONATO_PONTUACAO FOREIGN KEY (Campeonato_Id) REFERENCES Campeonato (Id)
);

CREATE TABLE IF NOT EXISTS `Etapa` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Campeonato_Id` BIGINT NOT NULL,
  `Equipe_Id` bigint,
  `Data` date,
  `Nome` varchar(255),
  PRIMARY KEY (Id),
  CONSTRAINT FK_ETAPA_CAMPEONATO FOREIGN KEY (Campeonato_Id) REFERENCES Campeonato (Id)
);

CREATE TABLE IF NOT EXISTS `Categoria` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255)  NOT NULL,
  `Campeonato_Id` BIGINT NOT NULL,
  PRIMARY KEY (Id),
  CONSTRAINT FK_CATEGORIA_CAMPEONATO FOREIGN KEY (Campeonato_Id) REFERENCES Campeonato (Id)
);

CREATE TABLE IF NOT EXISTS `Piloto_Categoria` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Equipe_Piloto_Id` BIGINT NOT NULL,
  `Categoria_Id` BIGINT NOT NULL,
  `Situacao` BIGINT NOT NULL DEFAULT 1,
  `Pontos_Categoria` BIGINT NOT NULL DEFAULT 0,
  `Descarte` BIGINT NOT NULL DEFAULT 0,
  `Pontos_Extra_Particip` BIGINT NOT NULL DEFAULT 0,
  `Pontos_Cup` BIGINT NOT NULL DEFAULT 0,
  `Posicao_Categoria` BIGINT NOT NULL DEFAULT 0,
  `Posicao_Geral` BIGINT NOT NULL DEFAULT 0,
  PRIMARY KEY (Id),
  CONSTRAINT FK_PILOTO_CATEGORIA FOREIGN KEY (Equipe_Piloto_Id) REFERENCES Equipe_Piloto (Id),
  CONSTRAINT FK_CATEG_PILOTO_CATEGORIA FOREIGN KEY (Categoria_Id) REFERENCES Categoria (Id)
);

CREATE TABLE IF NOT EXISTS `Resultado_Etapa` (
  `Id` BIGINT NOT NULL AUTO_INCREMENT,
  `Etapa_Id` BIGINT NOT NULL,
  `Piloto_Categoria_Id` BIGINT NOT NULL,
  `Voltas` integer NOT NULL  DEFAULT 0,
  `Voltas_Cup` integer NOT NULL  DEFAULT 0,
  `Voltas_Penalidade` integer NOT NULL DEFAULT 0,
  `Zona` integer NOT NULL DEFAULT 0,
  `Pontos` integer DEFAULT 0,
  `Pontos_Cup` integer DEFAULT 0,
  `Ponto_Extra` integer DEFAULT 0,
  `Total` integer DEFAULT 0,
  `Posicao_Geral` integer DEFAULT 0,
  `Posicao_Categoria` integer DEFAULT 0,
  `Posicao_Categoria_Cup` integer DEFAULT 0,
  PRIMARY KEY (Id),
  CONSTRAINT FK_PILOTO_RESULTADO FOREIGN KEY (Piloto_Categoria_Id) REFERENCES Piloto_Categoria (Id),
  CONSTRAINT FK_ETAPA_RESULTADO FOREIGN KEY (Etapa_Id) REFERENCES Etapa (Id)
);



