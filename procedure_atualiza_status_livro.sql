CREATE PROCEDURE SP_atualiza_status_livro
(
  var_id_lista_livro INT,
  var_id_livro INT,
  var_status INT)
AS
BEGIN

	UPDATE tbl_lista_livros SET status = 2
	WHERE id_lista_livros = var_id_lista_livro
	AND livro_id = var_id_livro;

END SP_atualiza_status_livro;

EXEC SP_atualiza_status_livro (1,1,1);

--DROP PROCEDURE SP_atualiza_status_livro;--

-- Tratando erro--
CREATE PROCEDURE SP_atualiza_status_livro
(
  var_id_lista_livro INT,
  var_id_livro INT,
  var_status INT)
 IS
  vEXCEPTION EXCEPTION;
BEGIN

	UPDATE tbl_lista_livros SET status = 2
	WHERE id_lista_livros = var_id_lista_livro
	AND livro_id = var_id_livro;
  EXCEPTION
    WHEN vEXCEPTION THEN
      RAISE_APPLICATION_ERROR(-20999,'ATENÇÃO! Operação diferente de I, D, A.', FALSE);
END SP_atualiza_status_livro;