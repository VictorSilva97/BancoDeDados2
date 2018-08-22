# Insere datas na tabela

use bdii182_biblioteca;
#update LIVROS set DATA_DEVOLUCAO = '2018-04-25' where id = 1;
#update LIVROS set DATA_DEVOLUCAO = '2018-02-23' where ID = 2;
#update LIVROS set DATA_DEVOLUCAO = '2018-04-30' where ID = 3;
#update LIVROS set DATA_DEVOLUCAO = '2018-03-15' where ID = 4;
update LIVROS set DATA_DEVOLUCAO = '2018-01-07' where ID = 5;

select * from LIVROS;