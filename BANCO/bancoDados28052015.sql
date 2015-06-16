/******************************************************************************************/
/******************************************************************************************/
/***  ESTRUTURA DO BANCO DE DADOS TCC ETEC INFORMATICA - DESENVOLVIMENTO DELPHI - 2015  ***/
/******************************************************************************************/
/******************************************************************************************/

/** CRIANDO A BASE DE DADOS **/
CREATE DATABASE q114medico;

USE q114medico;

/** CRIANDO AS TABELAS  **/

/*** Table especialidade Script Date: 28/05/2015 ***/
CREATE TABLE especialidade(
	id int IDENTITY(1,1) NOT NULL,
	especialidade varchar(20) NULL,
 CONSTRAINT pkEspecialidade PRIMARY KEY (id) 
);

/*** Table funcionarios Script Date: 28/05/2015 ***/
CREATE TABLE funcionarios(
	funcao 			varchar(10) NULL,
	conselho 		int NULL,
	observacao 		varchar(250) NULL,
	especilidade 	varchar(20) NULL, -- Campo escolha fixa na programação
	login 			varchar(50) NOT NULL,
	senha 			varchar(100) NOT NULL,
	id 				int IDENTITY(1,1) NOT NULL,
	nome 			varchar(100) NULL,
	endereco 		varchar(100) NULL,
	bairro 			varchar(20) NULL,
	cidade 			varchar(50) NULL,
	estado 			char(2) NULL,
	cep 			int NULL,
	telefone 		int NULL,
	celular 		int NULL,
	cpf 			int NULL,
	rg 				int NULL,
	email 			varchar(100) NULL,
	cadastrado 		smalldatetime NULL DEFAULT (getdate()),
	atualizado 		smalldatetime NULL,
	sexo 			char(1) NULL,
 CONSTRAINT pkFuncionario PRIMARY KEY (id) 
);

/*** Table pessoas Script Date: 28/05/2015 ***/
CREATE TABLE pessoas(
	id int IDENTITY(1,1) NOT NULL,
	nome varchar(100) NULL,
	endereco varchar(100) NULL,
	bairro varchar(20) NULL,
	cidade varchar(50) NULL,
	estado char(2) NULL,
	cep int NULL,
	telefone int NULL,
	celular int NULL,
	cpf int NULL,
	rg int NULL,
	email varchar(100) NULL,
	cadastrado smalldatetime NULL DEFAULT (getdate()),
	atualizado smalldatetime NULL,
	sexo char(1) NULL,
 CONSTRAINT pkPessoa PRIMARY KEY (id) 
);

/*** Table planos Script Date: 28/05/2015 ***/
CREATE TABLE planos(
	id int IDENTITY(1,1) NOT NULL,
	plano varchar(50) NULL,
	data int NULL,
	valor money NULL,
CONSTRAINT pkPlano PRIMARY KEY (id) 
);

/*** Table agenda Script Date: 28/05/2015 ***/
CREATE TABLE agenda(
	id int IDENTITY(1,1) NOT NULL,
	paciente_id int NULL,
	datahora smalldatetime NULL,
	estado varchar(10) NULL,
	plano_id int NULL,
	funcionario_id int NULL,
	data int NOT NULL,
	hora varchar(5) NOT NULL,
 CONSTRAINT pkAgenda PRIMARY KEY (id),
 CONSTRAINT uqAgenda UNIQUE (data, hora, funcionario_id),
 CONSTRAINT fkFuncionario FOREIGN KEY (funcionario_id) REFERENCES funcionarios (id),
 CONSTRAINT fkPaciente FOREIGN KEY (paciente_id) REFERENCES pessoas (id)
);

/*** Table consultas Script Date: 28/05/2015 ***/
CREATE TABLE consultas(
	diagnostico varchar(250) NULL,
	agenda_id int NOT NULL,
 CONSTRAINT pkConsulta PRIMARY KEY (agenda_id),
 CONSTRAINT fkAgenda FOREIGN KEY (agenda_id) REFERENCES agenda (id) 
);

/*** Table receitas Script Date: 28/05/2015 ***/
CREATE TABLE receitas(
	id int IDENTITY(1,1) NOT NULL,
	medicamento varchar(100) NOT NULL,
	recomendacao varchar(100) NOT NULL,
	qtde int NOT NULL,
	consulta_id int NOT NULL,
 CONSTRAINT pkReceita PRIMARY KEY (id),
 CONSTRAINT fkConsRec FOREIGN KEY (consulta_id) REFERENCES consultas (agenda_id)
);

/*** Table exames Script Date: 28/05/2015 ***/
CREATE TABLE exames(
	id int IDENTITY(1,1) NOT NULL,
	exame varchar(150) NULL,
	consulta_id int NOT NULL,
 CONSTRAINT pkExame PRIMARY KEY (id),
 CONSTRAINT fkConsExa FOREIGN KEY (consulta_id) REFERENCES consultas (agenda_id)
);

