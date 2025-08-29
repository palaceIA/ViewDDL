/*
    Crie uma procedure registrar_devolucao que receba o id do empréstimo e a data de devolução.
    Ela deve atualizar o registro na tabela emprestimo
*/

CREATE OR REPLACE PROCEDURE register_return(id_emprestimo INT, nova_data_devolucao DATE)
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE emprestimo e
  SET
    data_devolucao = nova_data_devolucao
  WHERE e.id = id_emprestimo;
END;
$$;

CALL register_return(2, '2025-08-23');