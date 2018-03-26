CREATE PROCEDURE calc_idade (id INT)
AS
  CURSOR cur_idade
    IS SELECT trunc((months_between(sysdate, to_date(u.data_nasc,'dd/mm/yyyy')))/12) AS idade FROM tbl_usuario u;
  idadeCalc INT;
BEGIN
    open cur_idade;
      fetch cur_idade into idadeCalc;
    close cur_idade;
    idadeCalc := cur_usuario.idade;
		UPDATE tbl_usuario SET idade = idadeCalc WHERE id_usuario = id;
END calc_idade;

DROP PROCEDURE calc_idade;
