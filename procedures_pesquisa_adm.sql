-- Tirar dúvida com profs. Gustavo ou Valdete--
CREATE FUNCTION sp_pesquisa_adm_livro (condicao VARCHAR) return tbl_lista_livros%ROWTYPE
AS
  cond VARCHAR(100);
  CURSOR cur_livro
    IS
      SELECT *
	    FROM
		    tbl_livro livro
        JOIN tbl_autor ON (autor_id = id_autor)
		    JOIN tbl_categoria ON (categoria_id = id_categoria)
		    JOIN tbl_editora ON (editora_id = id_editora)
		    JOIN tbl_lista_livros lista_livro ON (livro_id = id_livro)
        JOIN tbl_usuario ON (usuario_id = id_usuario)
      WHERE
		    lista_livro.livro_id = (SELECT id_livro FROM tbl_livro WHERE nome like Concat(CONCAT('%',condicao),'%'));
  emp_livro cur_livro%rowtype;
BEGIN
  open cur_livro;
    fetch cur_livro into emp_livro;
  close cur_livro;
  RETURN emp_livro;
END;

DROP FUNCTION sp_pesquisa_adm_livro;