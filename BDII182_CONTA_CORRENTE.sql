create database BDII182_CONTA_CORRENTE;

#SHOW ENGINES;

create table CONTAS_BANCARIAS(
	ID int unsigned  not null auto_increment,
    TITULAR varchar(45) not null,
    SALDO double not null,
    primary key(ID)
)engine =InnoDB;

insert into CONTAS_BANCARIAS (TITULAR, SALDO) values ('André', 1000);
insert into CONTAS_BANCARIAS (TITULAR, SALDO) values ('Carlos', 2000);

select * from CONTAS_BANCARIAS;

start transaction;
update CONTAS_BANCARIAS set SALDO = SALDO - 100 where ID = 1;
update CONTAS_BANCARIAS set SALDO = SALDO + 100 where ID = 2;

select * from CONTAS_BANCARIAS;
rollback;
select * from CONTAS_BANCARIAS;

start transaction;
update CONTAS_BANCARIAS set SALDO = SALDO - 100 where ID = 1;
update CONTAS_BANCARIAS set SALDO = SALDO + 100 where ID = 2;

select * from CONTAS_BANCARIAS;
commit;
select * from CONTAS_BANCARIAS;



