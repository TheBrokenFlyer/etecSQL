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
	idMetodo int NOT NULL,
	
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
insert into tbMetodologias(metodoNome) values
	('comodoro'),
	('scram'),
	('someOtherMethod'),
	('idkWhatAreThose'),
	('eeeeeeee');
	
insert into tbTarefa(tarefaTitulo,tarefaDesc,tarefaPrazo,tarefaPrazoInicio,tarefaPrazoTermino,idMetodo) values
	('Tarefa sobre ''tal''',
	'Esta tarefa se refere a ''tal'' coisa pra ser feita assim.',
	'2018-08-07',
	'2018-07-01',
	'2018-09-16',
	2),
	('Esta outra coisa',
	'Isso aqui é isso.',
	'2018-03-31',
	'2018-06-21',
	'2018-08-16',
	2),
	('Tar tarefa',
	'É sobre aaaaaaa',
	'2018-08-13',
	'2013-01-16',
	'2018-10-03',
	3);

insert into tbPessoa(pessoaNome, pessoaEmail) values
	('Frisk', 'person@somewhere'),
	('Fool', 'aaa@at'),
	('Bar', 'noOne@nowhere'),
	('Someone else', 'hii@hello');

insert into tbRef_TarefaPessoa(idTarefa,idPessoa) values
	(0,0),
	(1,1),
	(1,2),
	(1,0);

--
--SELEÇÕES
--


--1
select
	p.pessoaNome  as [Nome],
	p.pessoaEmail as [Email]
	from	 	tbPessoa			as p
	inner join	tbRef_TarefaPessoa	as r
	on (p.idPessoa <> r.idPessoa)
	order by p.idPessoa;

--2
select
	m.metodoNome
	from tbTarefa as t
	inner join tbMetodologias as m
	on (t.idMetodo = m.idMetodo)
	group by t.idMetodo;

--3
select
	p.pessoaNome
	from tbPessoa as p
	inner join tbTarefa as t
	inner join tbRef_TarefaPessoa as r
	on (t.idTarefa = r.idTarefa)
	and (r.idPessoa = p.idPessoa)
	and (t.tarefaPrazo > GETDATE())
	