use master;
go
 drop database dtbSql;
go
 create database dtbSql;
go
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
	null,
	2),
	('Esta outra coisa',
	'Isso aqui é isso.',
	'2018-03-31',
	'2018-06-21',
	'2018-08-16',
	2),
	('Tar tarefa',
	'É sobre aaaaaaa',
	'2018-02-13',
	'2013-01-16',
	'2018-10-03',
	3);

insert into tbPessoa(pessoaNome, pessoaEmail) values
	('Frisk', 'person@somewhere'),
	('Fool', 'aaa@at'),
	('Bar', 'noOne@nowhere'),
	('Someone Else', 'hii@hello'),
	('Some No Task', 'noreply@task.info');

insert into tbRef_TarefaPessoa(idTarefa,idPessoa) values
	(0,0),
	(1,1),
	(1,2),
	(1,0);

--
--SELEÇÕES
--


--1. pessoas que não participam de nenhuma tarefa
if OBJECT_ID('dbo.getPeopleWithNoTasks') is not null
	drop procedure getPeopleWithNoTasks;
go
 create proc getPeopleWithNoTasks
as begin
select
	p.pessoaNome  as [Nome],
	p.pessoaEmail as [Email]
	from	 	tbPessoa			as p
	left join	tbRef_TarefaPessoa	as r
	on (p.idPessoa = r.idPessoa) where (r.idPessoa is null)
	order by p.idPessoa;
end;

--2. metodologias mais usadas
if OBJECT_ID('dbo.getMostUsedMethods') is not null
	drop procedure getMostUsedMethods;
go
 create proc getMostUsedMethods
as begin
select COUNT(m.metodoNome) as [contagem], m.metodoNome as [nome]
	from tbTarefa as t
	right join tbMetodologias as m
	on (t.idMetodo = m.idMetodo)
	group by m.metodoNome
	order by COUNT(m.metodoNome) desc;
end;

--3. pessoas com tarefas atrasadas
if OBJECT_ID('dbo.getLateTasks') is not null
	drop procedure getLateTasks;
go
 create proc getLateTasks
as begin
select
	p.pessoaNome as [nome], t.tarefaTitulo as [tarefa], t.tarefaPrazo as [prazo], t.tarefaPrazoTermino as [término]
	from tbPessoa as p
	join tbRef_TarefaPessoa as r
	on (p.idPessoa = r.idPessoa)
	join tbTarefa as t
	on (r.idTarefa = t.idTarefa)
	where ((t.tarefaPrazo > GETDATE()) or (t.tarefaPrazoTermino > t.tarefaPrazo))
	or ((t.tarefaPrazo > GETDATE()) AND (t.tarefaPrazoTermino = null));
end;
