/*
  Crie uma procedure excluir_usuario que receba o id do usuário e:
  -Exclua todos os empréstimos desse usuário.
  -Exclua o usuário da tabela usuario.
*/


CREATE OR REPLACE PROCEDURE delete_user(id_user INT)
LANGUAGE plpgsql
AS $$
BEGIN
  DELETE FROM emprestimo WHERE id_usuario = id_user;
  DELETE FROM usuario WHERE id = id_user;
END;
$$;

CALL delete_user(1);