CREATE DATABASE `myeleicoes` /*!40100 DEFAULT CHARACTER SET utf8 */;

use `myeleicoes`;

-- myeleicoes.eleicoes definition

CREATE TABLE `eleicoes` (
  `IDELEICAO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAOELEICAO` varchar(255) NOT NULL,
  `DATAELEICAO` date NOT NULL,
  `TURNOELEICAO` tinyint(3) NOT NULL DEFAULT 0,
  `ATIVO` char(1) NOT NULL DEFAULT 'S',
  PRIMARY KEY (`IDELEICAO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
-- myeleicoes.partidos definition

CREATE TABLE `partidos` (
  `IDPARTIDO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMEPARTIDO` varchar(255) NOT NULL,
  `SIGLA` varchar(10) NOT NULL,
  `NUMPARTIDO` tinyint(3) NOT NULL,
  `ATIVO` char(1) NOT NULL DEFAULT 'S',
  `LOGO` longblob DEFAULT NULL,
  `DATACADASTRO` date DEFAULT current_timestamp(),
  PRIMARY KEY (`IDPARTIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
-- myeleicoes.candidatos definition

CREATE TABLE `candidatos` (
  `IDCANDIDATO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMECANDIDATO` varchar(255) NOT NULL,
  `NUMCANDIDATO` int(11) NOT NULL,
  `CARGOCANDIDATO` varchar(255) NOT NULL,
  `ATIVO` char(1) NOT NULL DEFAULT 'S',
  `FOTO` longblob DEFAULT NULL,
  `IDELEICAO` int(11) NOT NULL,
  `IDPARTIDO` int(11) NOT NULL,
  `DATACADASTRO` date DEFAULT current_timestamp(),
  `UF` varchar(2) NOT NULL,
  PRIMARY KEY (`IDCANDIDATO`),
  KEY `FK_PARTIDOCANDIDATOS` (`IDPARTIDO`),
  KEY `FK_ELEICAOCANDIDATOS` (`IDELEICAO`),
  CONSTRAINT `FK_ELEICAOCANDIDATOS` FOREIGN KEY (`IDELEICAO`) REFERENCES `eleicoes` (`IDELEICAO`),
  CONSTRAINT `FK_PARTIDOCANDIDATOS` FOREIGN KEY (`IDPARTIDO`) REFERENCES `partidos` (`IDPARTIDO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
-- myeleicoes.votacoes definition

CREATE TABLE `votacoes` (
  `IDVOTACAO` int(11) NOT NULL AUTO_INCREMENT,
  `IDCANDIDATO` int(11) NOT NULL,
  `IDELEICAO` int(11) NOT NULL,
  `QTDVOTOS` int(11) NOT NULL,
  `ATIVO` char(1) NOT NULL DEFAULT 'S',
  `DATACADASTRO` date DEFAULT current_timestamp(),
  PRIMARY KEY (`IDVOTACAO`),
  KEY `FK_CANDIDATOSVOTACOES` (`IDCANDIDATO`),
  KEY `FK_ELEICOESVOTACOES` (`IDELEICAO`),
  CONSTRAINT `FK_CANDIDATOSVOTACOES` FOREIGN KEY (`IDCANDIDATO`) REFERENCES `candidatos` (`IDCANDIDATO`),
  CONSTRAINT `FK_ELEICOESVOTACOES` FOREIGN KEY (`IDELEICAO`) REFERENCES `eleicoes` (`IDELEICAO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ELEIÇÕES
INSERT INTO ELEICOES (IDELEICAO, DESCRICAOELEICAO, DATAELEICAO, TURNOELEICAO, ATIVO) VALUES (1, 'ELEIÇÕES 2022', NOW(), 1, 'S');

-- PARTIDOS
INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO) VALUES (1, 'NULO', 'NULO', 0 , 'S', NOW());

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (2, 'PARTIDO DOS TRABALHADORES', 'PT', 13, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/PT.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (3, 'PARTIDO SOCIAL LIBERAL', 'PSL', 17, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/PSL.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (4, 'PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA', 'PSDB', 45, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/PSDB.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (5, 'PARTIDO NOVO', 'NOVO', 30, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/NOVO.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (6, 'PARTIDO LIBERAL', 'PL', 22, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/PL.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (7, 'DEMOCRATAS', 'DEM', 25, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/DEM.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (8, 'PARTIDO DEMOCRATICO TRABALHISTA', 'PDT', 12, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/PDT.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (9, 'MOVIMENTO DEMOCRATICO BRASILEIRO', 'MDB', 15, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/MDB.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (10, 'PARTIDO DA CAUSA OPERARIA', 'PCO', 29, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/PCO.PNG'));

INSERT INTO PARTIDOS (IDPARTIDO, NOMEPARTIDO, SIGLA, NUMPARTIDO, ATIVO, DATACADASTRO, LOGO) VALUES (11, 'PARTIDO SOCIALISMO E LIBERDADE', 'PSOL', 50, 'S', NOW(), LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Partidos/PSOL.PNG'));

-- DEPUTADOS FEDERAIS 
INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(1, 'CARLA ZAMBELLI', 1710, 'DEPUTADO FEDERAL', 'S', 1, 3, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/CARLA ZAMBELLI.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(2, 'EDUARDO CURY', 4515, 'DEPUTADO FEDERAL', 'S', 1, 4, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/EDUARDO CURY.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(3, 'NILTO TATTO', 1353, 'DEPUTADO FEDERAL', 'S', 1, 2, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/NILTO TATTO.JPG'));

-- DEPUTADOS ESTADUAIS
INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(4, 'CARLOS GIANNAZI', 50789, 'DEPUTADO ESTADUAL', 'S', 1, 11, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/CARLOS GIANNAZI.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(5, 'DIRCEU DALBEN', 22456, 'DEPUTADO ESTADUAL', 'S', 1, 6, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/DIRCEU DALBEN.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(6, 'LEO OLIVEIRA', 15123, 'DEPUTADO ESTADUAL', 'S', 1, 9, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/LEO OLIVEIRA.JPG'));

-- SENADORES
INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(7, 'MAJOR OLIMPIO', 177, 'SENADOR', 'S', 1, 3, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/MAJOR OLIMPIO.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(8, 'EDUARDO SUPLICY', 131, 'SENADOR', 'S', 1, 2, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/EDUARDO SUPLICY.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(9, 'MARA GABRILLI', 457, 'SENADOR', 'S', 1, 4, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/MARA GABRILLI.JPG'));

-- GOVERNADORES
INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(10, 'JOAO DORIA', 45, 'GOVERNADOR', 'S', 1, 4, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/JOAO DORIA.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(11, 'LILIAN MIRANDA', 29, 'GOVERNADOR', 'S', 1, 10, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/LILIAN MIRANDA.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(12, 'MARCELO CANDIDO', 12, 'GOVERNADOR', 'S', 1, 8, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/MARCELO CANDIDO.JPG'));

-- PRESIDENTE
INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(13, 'FERNANDO HADDAD', 13, 'PRESIDENTE', 'S', 1, 2, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/FERNANDO HADDAD.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(14, 'JAIR BOLSONARO', 17, 'PRESIDENTE', 'S', 1, 3, NOW(), 'RJ', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/JAIR BOLSONARO.JPG'));

INSERT INTO CANDIDATOS (IDCANDIDATO, NOMECANDIDATO, NUMCANDIDATO, CARGOCANDIDATO, ATIVO, IDELEICAO, IDPARTIDO, DATACADASTRO, UF, FOTO)VALUES
(15, 'JOAO AMOEDO', 30, 'PRESIDENTE', 'S', 1, 5, NOW(), 'SP', LOAD_FILE('C:/Fontes/Delphi/Urna Eletronica/Img/Candidatos/JOAO AMOEDO.JPG'));