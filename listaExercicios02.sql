ele retorna uma lista de livros que pertencem a uma categoria específica

Para usar você precisa dizer a ela qual categoria você deseja


    
CREATE PROCEDURE sp_LivrosPorCategoria(IN categoria_nome VARCHAR(100))
BEGIN

    
a stored procedure olha para a tabela de livros ("Livro")
Ela verifica cada livro para ver se ele pertence à categoria que você especificou
Se pertencer, ela anota o título desse livro.
    

    SELECT Livro.Titulo
    FROM Livro
    INNER JOIN Categoria ON Livro.Categoria_ID = Categoria.Categoria_ID
    WHERE Categoria.Nome = categoria_nome;
END;
