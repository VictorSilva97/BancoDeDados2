use BDII182_BIBLIOTECA;

select USUARIO_ID AS 'ID DO USUARIO', NOME, SOBRENOME, TIPO_USUARIO, LIVROS.ID AS 'ID DO LIVRO', TITULO, CATEGORIA, PRECO, NOME_ESTADO
from USUARIOS
INNER JOIN LIVROS
ON USUARIOS.ID = USUARIO_ID
INNER JOIN ESTADOS
ON USUARIOS.SIGLA_ESTADO = ESTADOS.SIGLA_ESTADO
WHERE TIPO_USUARIO = 'ALUNO';