/*
    Crie uma procedure chamada cadastrar_usuario que receba
    como parâmetro o nome do usuário e insira o registro na
    tabela usuario.
*/

CREATE OR REPLACE PROCEDURE insert_into_user(nome VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO usuario(nome) VALUES (nome);
END;
$$;

CALL insert_into_user('Caio');