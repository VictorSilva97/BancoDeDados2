#Criar as tabelas USUARIOS e LIVROS e ESTADOS (USUARIOS)
use bdii182_biblioteca;
create table USUARIOS(
ID INT unsigned NOT null auto_increment,
NOME varchar (15) not null,
SOBRENOME varchar (15) not null,
ENDERECO varchar (45) not null,
CIDADE varchar (45) not null,
SIGLA_ESTADO varchar (2) not null,
TELEFONE varchar (11) not null,
TIPO_USUARIO varchar (15) not null,
primary key(ID));
