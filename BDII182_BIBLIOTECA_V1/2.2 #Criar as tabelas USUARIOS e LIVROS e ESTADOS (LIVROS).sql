#Criar as tabelas USUARIOS e LIVROS e ESTADOS (LIVROS)
use BDII182_BIBLIOTECA;
create table LIVROS(
ID INT unsigned NOT null auto_increment,
USUARIO_ID INT unsigned default NULL,
TITULO varchar (45) not null,
ANO_PUBLICACAO INT unsigned NOT null,
NUMERO_EDICAO INT unsigned NOT null,
PAGINAS INT unsigned NOT null,
CATEGORIA varchar (12) not null,
PRECO double not null default '0',
primary key(ID),


constraint FK_LIVROS_USUARIOS_ESTADOS
foreign key(USUARIO_ID)
references USUARIOS(ID));
