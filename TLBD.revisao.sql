use master;
drop database dtbSql;
create database dtbSql;
use dtbSql;

--
--TABELAS
--
create table tbTarefa(
	idTarefa int NOT NULL identity(0,1),
	tarefaTitulo varchar(32) NOT NULL unique,
	tarefaDesc varchar(256),
	tarefaPrazo date NOT NULL,
	tarefaPrazoInicio date,
	tarefaPrazoTermino date,
	
	primary key (idTarefa)
)

create table tbPessoas (
	idPessoa int NOT NULL identity(0,1),
	pessoaNome varchar(32) NOT NULL,
	pessoaEmail varchar(48) NOT NULL unique,
	
	primary key (idPessoa),
)

create table tbParticipantes_TarefaPessoas (
	idParticipante int NOT NULL identity(0,1),
	idTarefa int NOT NULL,
	idPessoa int NOT NULL,
	
	foreign key (idTarefa) references tbTarefa(idTarefa),
	foreign key (idPessoa) references tbPessoas(idPessoa),
)

create table tbMetodologias (
	idMetodo int NOT NULL identity(0,1),
	metodoNome varchar(16) NOT NULL,
	
	primary key (idMetodo),
)