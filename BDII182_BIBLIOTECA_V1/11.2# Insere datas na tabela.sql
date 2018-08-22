# Insere datas na tabela

use BDII182_BIBLIOTECA;

update LIVROS set DATA_DEVOLUCAO = '2018-04-25'
where id = 1;
update LIVROS set DATA_DEVOLUCAO = '2018-04-30'
where ID = 3;

select * from LIVROS;