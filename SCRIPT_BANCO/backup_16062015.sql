USE [master]
GO
/****** Object:  Database [q114medico]    Script Date: 16/06/2015 21:09:59 ******/
CREATE DATABASE [q114medico] ON  PRIMARY 
( NAME = N'q114medico', FILENAME = N'C:\Arquivos de programas\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\q114medico.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'q114medico_log', FILENAME = N'C:\Arquivos de programas\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\q114medico_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [q114medico] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [q114medico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [q114medico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [q114medico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [q114medico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [q114medico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [q114medico] SET ARITHABORT OFF 
GO
ALTER DATABASE [q114medico] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [q114medico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [q114medico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [q114medico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [q114medico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [q114medico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [q114medico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [q114medico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [q114medico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [q114medico] SET  ENABLE_BROKER 
GO
ALTER DATABASE [q114medico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [q114medico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [q114medico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [q114medico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [q114medico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [q114medico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [q114medico] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [q114medico] SET  MULTI_USER 
GO
ALTER DATABASE [q114medico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [q114medico] SET DB_CHAINING OFF 
GO
USE [q114medico]
GO
/****** Object:  Table [dbo].[agenda]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[agenda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[paciente_id] [int] NULL,
	[datahora] [smalldatetime] NULL,
	[estado] [varchar](10) NULL,
	[plano_id] [int] NULL,
	[funcionario_id] [int] NULL,
 CONSTRAINT [pkAgenda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[consultas]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[consultas](
	[diagnostico] [varchar](250) NULL,
	[agenda_id] [int] NOT NULL,
 CONSTRAINT [pkConsulta] PRIMARY KEY CLUSTERED 
(
	[agenda_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[especialidade]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[especialidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[especialidade] [varchar](20) NULL,
 CONSTRAINT [pkEspecialidade] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[exames]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[exames](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[exame] [varchar](150) NULL,
	[consulta_id] [int] NOT NULL,
 CONSTRAINT [pkExame] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[funcionarios]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionarios](
	[funcao] [varchar](10) NULL,
	[conselho] [int] NULL,
	[observacao] [varchar](250) NULL,
	[especialidade] [varchar](20) NULL,
	[login] [varchar](50) NOT NULL,
	[senha] [varchar](100) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NULL,
	[endereco] [varchar](100) NULL,
	[bairro] [varchar](20) NULL,
	[cidade] [varchar](50) NULL,
	[estado] [char](2) NULL,
	[cep] [varchar](8) NULL,
	[telefone] [varchar](10) NULL,
	[celular] [varchar](11) NULL,
	[cpf] [varchar](11) NULL,
	[rg] [int] NULL,
	[email] [varchar](100) NULL,
	[cadastrado] [smalldatetime] NULL DEFAULT (getdate()),
	[atualizado] [smalldatetime] NULL,
	[sexo] [char](1) NULL,
 CONSTRAINT [pkFuncionario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pessoas]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pessoas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NULL,
	[endereco] [varchar](100) NULL,
	[bairro] [varchar](20) NULL,
	[cidade] [varchar](50) NULL,
	[estado] [char](2) NULL,
	[cep] [varchar](8) NULL,
	[telefone] [varchar](10) NULL,
	[celular] [varchar](11) NULL,
	[cpf] [varchar](11) NULL,
	[rg] [int] NULL,
	[email] [varchar](100) NULL,
	[cadastrado] [smalldatetime] NULL DEFAULT (getdate()),
	[atualizado] [smalldatetime] NULL,
	[sexo] [char](1) NULL,
 CONSTRAINT [pkPessoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[planos]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[planos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[plano] [varchar](50) NULL,
	[valor] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[receitas]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[receitas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[medicamento] [varchar](100) NOT NULL,
	[recomendacao] [varchar](100) NOT NULL,
	[qtde] [int] NOT NULL,
	[consulta_id] [int] NOT NULL,
 CONSTRAINT [pkReceita] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[lsConsultas]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[lsConsultas] AS
	SELECT ISNULL(CONVERT(VARCHAR, ag.datahora, 107), '00/00/0000') data,
		   ISNULL(CONVERT(VARCHAR(5), ag.datahora, 108), '00:00') hora,
		   fc.nome medico, ag.paciente_id prontuario from agenda ag
	inner join funcionarios fc on fc.id = ag.funcionario_id

GO
/****** Object:  View [dbo].[lsFichaPessoa]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[lsFichaPessoa]
	AS
		SELECT p.*,
			   ISNULL(CONVERT(varchar,a.datahora, 103),'') data,
			   ISNULL(CONVERT(varchar(5),a.datahora, 108),'') hora,
			   ISNULL(f.nome,'') medico,
			   ISNULL(c.diagnostico,'SEM CONSULTA') consulta
		FROM pessoas p
		LEFT JOIN agenda a ON a.paciente_id = p.id
		LEFT JOIN funcionarios f ON f.id = a.funcionario_id
		LEFT JOIN consultas c ON c.agenda_id = a.id
GO
/****** Object:  View [dbo].[lsHistoricoPaciente]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[lsHistoricoPaciente] AS
	SELECT CONVERT(VARCHAR,a.datahora,103) data, CONVERT(VARCHAR(5),a.datahora,108) hora, f.nome, p.id FROM agenda a
	INNER JOIN pessoas p ON p.id = a.paciente_id
	INNER JOIN funcionarios f ON f.id = a.funcionario_id
GO
/****** Object:  View [dbo].[lsPacientes]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[lsPacientes] as 
	select nome, cpf, endereco, bairro, cidade, estado, cep, telefone, celular, sexo from pessoas
	group by nome, cpf, endereco, bairro, cidade, estado, cep, telefone, celular, sexo
GO
/****** Object:  View [dbo].[lsReceita]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[lsReceita] as
select r.*, p.nome paciente, f.nome medico, f.conselho crm, a.id consulta from consultas c
inner join agenda a on a.id = c.agenda_id
inner join receitas r on r.consulta_id = c.agenda_id
inner join pessoas p on p.id = a.paciente_id
inner join funcionarios f on f.id = a.funcionario_id

GO
/****** Object:  View [dbo].[vAgenda]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vAgenda] as
SELECT convert(varchar(12),ag.datahora,101) as data , CONVERT(VARCHAR(12),ag.datahora,108) as hora, ag.estado, pf.nome AS medico , pc.nome as paciente
      FROM dbo.agenda AS ag 
INNER JOIN dbo.funcionarios AS fn ON fn.pessoa_id = ag.funcionario_id
INNER JOIN dbo.pessoas AS pf ON pf.id = fn.pessoa_id
 LEFT JOIN dbo.pessoas AS pc ON pc.id = ag.paciente_id


GO
/****** Object:  View [dbo].[vPaciente]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vPaciente] as
	select nome, telefone from pessoas
GO
ALTER TABLE [dbo].[agenda]  WITH CHECK ADD  CONSTRAINT [fkFuncionario] FOREIGN KEY([funcionario_id])
REFERENCES [dbo].[funcionarios] ([id])
GO
ALTER TABLE [dbo].[agenda] CHECK CONSTRAINT [fkFuncionario]
GO
ALTER TABLE [dbo].[agenda]  WITH CHECK ADD  CONSTRAINT [fkPaciente] FOREIGN KEY([paciente_id])
REFERENCES [dbo].[pessoas] ([id])
GO
ALTER TABLE [dbo].[agenda] CHECK CONSTRAINT [fkPaciente]
GO
ALTER TABLE [dbo].[consultas]  WITH CHECK ADD  CONSTRAINT [fkAgenda] FOREIGN KEY([agenda_id])
REFERENCES [dbo].[agenda] ([id])
GO
ALTER TABLE [dbo].[consultas] CHECK CONSTRAINT [fkAgenda]
GO
ALTER TABLE [dbo].[exames]  WITH CHECK ADD  CONSTRAINT [fkConsExa] FOREIGN KEY([consulta_id])
REFERENCES [dbo].[consultas] ([agenda_id])
GO
ALTER TABLE [dbo].[exames] CHECK CONSTRAINT [fkConsExa]
GO
ALTER TABLE [dbo].[receitas]  WITH CHECK ADD  CONSTRAINT [fkConsRec] FOREIGN KEY([consulta_id])
REFERENCES [dbo].[consultas] ([agenda_id])
GO
ALTER TABLE [dbo].[receitas] CHECK CONSTRAINT [fkConsRec]
GO
/****** Object:  StoredProcedure [dbo].[agendarPac]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[agendarPac] @paciente_id int,@plano_id int,@agenda_id int as
begin

update agenda set paciente_id = @paciente_id, plano_id = @plano_id, estado = 'Agendado' where id = @agenda_id
select count(*) from agenda where id = @agenda_id and estado = 'Agendado'
end
GO
/****** Object:  StoredProcedure [dbo].[buscaAgenda]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[buscaAgenda] @datainicio varchar(16) , @datafim varchar(16), @conselho int as
begin


select convert(varchar(5),ag.datahora,108) Hora,ag.id,ISNULL(p.nome, '---') Nome , 
ISNULL(ag.estado, 'Livre') Status from agenda ag
inner join funcionarios fn on fn.id = ag.funcionario_id
full  join pessoas p on p.id = ag.paciente_id
where @conselho = conselho and datahora between @datainicio and @datafim

end
GO
/****** Object:  StoredProcedure [dbo].[buscaFunc]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[buscaFunc] @nome varchar(255) as 
begin


SELECT conselho,nome, funcao FROM funcionarios
where nome LIKE @nome + '%' and funcao LIKE 'medic%'

end
GO
/****** Object:  StoredProcedure [dbo].[buscaPaciente]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[buscaPaciente] @nome varchar(255) 
as 
begin
	select id,nome,cpf from pessoas where nome like @nome
end
GO
/****** Object:  StoredProcedure [dbo].[cancelaAgenda]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cancelaAgenda] @agenda_id int as
begin
	update agenda set paciente_id = null, plano_id = null, estado = 'Livre'
	where id = @agenda_id 
end
GO
/****** Object:  StoredProcedure [dbo].[manutencaoAgenda]    Script Date: 16/06/2015 21:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[manutencaoAgenda] @conselho int, @datainicio varchar(16) , @datafim varchar(16)
as
begin

select convert(varchar(5),ag.datahora,108) Hora,convert(varchar(2),ag.datahora,105) Dia, 
ISNULL(ag.estado, 'Livre') Status from agenda ag
inner join funcionarios fn on fn.id = ag.funcionario_id
full  join pessoas p on p.id = ag.paciente_id
where fn.conselho = @conselho and datahora between @dataInicio and @dataFim
end


GO
USE [master]
GO
ALTER DATABASE [q114medico] SET  READ_WRITE 
GO
