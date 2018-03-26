CREATE TRIGGER trg_notificacoes_trocas AFTER UPDATE ON tbl_solicitacao_troca
FOR EACH ROW
DECLARE
  situacao CHAR(3);
BEGIN

	SELECT aceito INTO situacao FROM tbl_solicitacao_troca WHERE id_solicitacao = :NEW.id_solicitacao;
	IF situacao = 'Sim' THEN
		INSERT INTO tbl_notificacoes VALUES(1,1,'Sua solicitação de troca foi aceita!',:NEW.usuario_solicitador,SYSTIMESTAMP,'false');
	ELSE
		INSERT INTO tbl_notificacoes VALUES(2,2,'Sua solicitação de troca foi recusada!',:NEW.usuario_solicitador,SYSTIMESTAMP,'false');
		UPDATE tbl_usuario SET creditos = (creditos + 1) WHERE id_usuario = :NEW.usuario_solicitador;
	END IF;

END;

/* DROP TRIGGER trg_notificacoes_trocas; */

CREATE TRIGGER trg_update_cambio AFTER UPDATE ON tbl_cambio
FOR EACH ROW
DECLARE
  entregue CHAR(3);
  status INTEGER;
  data_entrega DATE;
BEGIN

	SELECT entregue INTO entregue FROM tbl_cambio WHERE id_cambio = :NEW.id_cambio;
	SELECT status INTO status FROM tbl_cambio WHERE id_cambio = :NEW.id_cambio;
	SELECT data_entrega INTO data_entrega FROM tbl_cambio WHERE id_cambio = :NEW.id_cambio;

	IF entregue = 'Sim' THEN
		IF status = 3 THEN
			INSERT INTO tbl_notificacoes VALUES(1,4,'O livro enviado por você já chegou',:NEW.usuario_disponibilizador,SYSTIMESTAMP,'false');
			UPDATE tbl_usuario SET creditos = (creditos + 1) WHERE id_usuario = :NEW.usuario_disponibilizador;
		END IF;
	END IF;

	IF data_entrega = NULL THEN
		IF status = 2 THEN
			INSERT INTO tbl_notificacoes VALUES(1,5,'O livro solicitado por você já está em transporte!',:NEW.usuario_resgate,SYSTIMESTAMP,'false');
		END IF;
	END IF;

END;

/* DROP TRIGGER trg_update_cambio; */