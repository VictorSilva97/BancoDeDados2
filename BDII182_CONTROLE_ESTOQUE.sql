create database BDII182_CONTROLE_ESTOQUE;

SHOW ENGINES;

create table PRODUTOS(
	ID int unsigned  not null auto_increment,
    PRODUTO varchar(45) not null,
    LOJA varchar(45) not null,
    QUANTIDADE int unsigned not null,
    primary key(ID)
)engine =InnoDB;

insert into PRODUTOS (ID,PRODUTO,LOJA,QUANTIDADE) values (null,'TV1','LOJA1',100);
insert into PRODUTOS (ID,PRODUTO,LOJA,QUANTIDADE) values (null,'TV2','LOJA2',0);

select * from PRODUTOS;

start transaction;
update PRODUTOS set QUANTIDADE = QUANTIDADE - 50 where ID = 1;
update PRODUTOS set QUANTIDADE = QUANTIDADE + 50 where ID = 2;

select * from PRODUTOS;
rollback;
select * from PRODUTOS;

start transaction;
update PRODUTOS set QUANTIDADE = QUANTIDADE - 50 where ID = 1;
update PRODUTOS set QUANTIDADE = QUANTIDADE + 50 where ID = 2;

select * from PRODUTOS;
commit;
select * from PRODUTOS;

