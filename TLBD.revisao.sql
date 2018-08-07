use master;
drop database dtbSql;
create database dtbSql;
use dtbSql;

--
--TABELAS
--
create table tbMetodologias (
	idMetodo int NOT NULL identity(0,1),
	metodoNome varchar(16) NOT NULL,
	
	primary key (idMetodo),
)

create table tbTarefa(
	idTarefa int NOT NULL identity(0,1),
	tarefaTitulo varchar(32) NOT NULL unique,
	tarefaDesc varchar(256),
	tarefaPrazo date NOT NULL,
	tarefaPrazoInicio date,
	tarefaPrazoTermino date,
	idMetodo int,
	
	primary key (idTarefa),
	foreign key (idMetodo) references tbMetodologias(idMetodo),
)

create table tbPessoa (
	idPessoa int NOT NULL identity(0,1),
	pessoaNome varchar(32) NOT NULL,
	pessoaEmail varchar(48) NOT NULL unique,
	
	primary key (idPessoa),
)

create table tbRef_TarefaPessoa (
	idParticipante int NOT NULL identity(0,1),
	idTarefa int NOT NULL,
	idPessoa int NOT NULL,
	
	foreign key (idTarefa) references tbTarefa(idTarefa),
	foreign key (idPessoa) references tbPessoa(idPessoa),
)

--
--VALORES
--
insert into tbTarefa(tarefaTitulo,tarefaDesc,tarefaPrazo) values
	('Tarefa sobre ''tal''', 'Esta tarefa se refere a ''tal'' coisa pra ser feita assim.', '2018-08-07'),
	('Esta outra coisa', 'Isso aqui é isso.', '2018-03-31');

insert into tbPessoa(pessoaNome, pessoaEmail) values
	('Frisk', 'person@somewhere'),
	('Fool', 'aaa@at'),
	('Bar', 'noOne@nowhere');

insert into tbRef_TarefaPessoa(idTarefa,idPessoa) values
	(0,0),
	(1,1),
	(1,2);

insert into tbMetodologias(metodoNome) values
	('comodoro'),
	('scram'),
	('someOtherMethod'),
	('idkWhatAreThose'),
	('eeeeeeee');

--
--SELEÇÕES
--
select
	t.tarefaTitulo as [Título],
	t.tarefaDesc as [Descrição],
	t.tarefaPrazo as [Prazo]
	from tbTarefa as t;
	
select
	p.pessoaNome as [Nome],
	p.pessoaEmail as [Email]
	from tbPessoa as p;
	
select * from tbRef_TarefaPessoa;

select
	m.metodoNome as [Métodos]
	from tbMetodologias as m;