USE bdii182_biblioteca;
SELECT 	usuarios.nome,
		tipo_usuarios.tipo_usuario,
        livros.titulo,
        categorias.categoria,
        livros.data_emprestimo,
        livros.data_devolucao,
        CURRENT_DATE() 'data_atual',
		TO_DAYS(NOW()) - TO_DAYS(data_emprestimo) AS 'dias_emprestado', 
		TO_DAYS(NOW()) - TO_DAYS(data_emprestimo) - tipo_usuarios.prazo AS 'dias_atrasado' ,
		FORMAT(tipo_usuarios.multa_dia * ((TO_DAYS(NOW()) - TO_DAYS(data_emprestimo)) - tipo_usuarios.prazo ),2) AS 'multa'
FROM usuarios
INNER JOIN livros 

ON usuarios.id = livros.usuario_id
INNER JOIN categorias 

ON categorias.id = livros.pk_codCategoria
INNER JOIN tipo_usuarios

ON usuarios.fk_tipo_usuario = tipo_usuarios.id
WHERE ((TO_DAYS(NOW()) - TO_DAYS(data_emprestimo)) - tipo_usuarios.prazo) > 0
AND data_devolucao IS NULL AND data_emprestimo IS NOT NULL AND categorias.categoria = 'ROMANCE'