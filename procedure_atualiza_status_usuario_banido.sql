CREATE PROCEDURE sp_atualiza_status_usu_banido (id INT)
IS
  CURSOR emp_usuario
  IS
    SELECT status FROM tbl_usuario WHERE id_usuario = id ;
  emp_rec emp_usuario%rowtype;
BEGIN
    open emp_usuario;
      fetch emp_usuario into emp_rec;
    close emp_usuario;

	  IF emp_rec.status = 1 THEN
	  UPDATE tbl_usuario SET status = 3 WHERE id_usuario = id;
	  ELSE
		  IF emp_rec.status = 3 THEN
			  UPDATE tbl_usuario SET status = 1 WHERE id_usuario = id;
		  END IF;
	  END IF;
END sp_atualiza_status_usu_banido;

SELECT * FROM tbl_usuario WHERE id_usuario = 1;

EXEC sp_atualiza_status_usu_banido (1);
-- DROP PROCEDURE sp_atualiza_status_usu_banido--
