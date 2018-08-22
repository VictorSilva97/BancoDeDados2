#Criar as tabelas USUARIOS e LIVROS e ESTADOS (ESTADOS)
use bdii182_biblioteca;
create table ESTADOS(
SIGLA_ESTADO varchar (2) not NULL,
NOME_ESTADO varchar (25) not null,
PRIMARY KEY(SIGLA_ESTADO));

