create database escola;

create table instituicao (
id int primary key identity,
nome varchar(100) not null,
endereco varchar(300) not null,
cnpj varchar(14) not null
);

create table aluno (
id int primary key identity,
id_instituicao int not null,
nome varchar(100) not null,
sobrenome varchar(100) not null,
matricula varchar(20) not null,

constraint FK_Aluno_Instituicao
foreign key (id_instituicao) references instituicao(id)
);



