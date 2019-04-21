--Criação do Banco de dados
CREATE DATABASE bd_colegio
--Conectando com o banco de dados
USE bd_colegio
--Criando tabela disciplinas
CREATE TABLE tbl_disciplinas(
CodDisciplina char(2),
NomeDisciplina varchar(30),
--Chave primária
primary key(CodDisciplina)
)
--Criação da tabela cursos
CREATE TABLE tbl_cursos(
CodCurso char(2),
nome varchar(50),
coddisc1 char(2),
coddisc2 char(2),
coddisc3 char(2),
primary key(CodCurso),
--Chaves Estrangeiras
foreign key(coddisc1) references tbl_disciplinas,
foreign key(coddisc2) references tbl_disciplinas,
foreign key(coddisc3) references tbl_disciplinas
)
--Criação da tabela alunos
CREATE TABLE tbl_alunos (
matricula varchar(5),
nome varchar(50),
endereco varchar(50),
cidade varchar(30),
codcurso char(2),
primary key(matricula),
foreign key(codcurso) references tbl_cursos
)


