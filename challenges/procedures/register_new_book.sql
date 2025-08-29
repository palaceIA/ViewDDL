/*
    Crie uma procedure cadastrar_livro que receba como parâmetros:
    - título do livro
    - id do autor
    - ano de publicação
    A procedure deve inserir o livro na tabela livro
*/


CREATE OR REPLACE PROCEDURE register_book(nome VARCHAR, id_autor INT, ano_pub INT)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO livro(titulo, id_autor, ano_publicacao)
  VALUES (nome, id_autor, ano_pub);
END;
$$;

CALL register_book('Aprendizado de maquina', 3, 2000);