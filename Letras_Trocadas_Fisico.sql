CREATE TABLE tbl_autor(

	id_autor INTEGER NOT NULL,
	nome VARCHAR(100) NOT NULL,
	PRIMARY KEY(id_autor)

);

CREATE TABLE tbl_editora(

	id_editora INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	PRIMARY KEY(id_editora)

);

CREATE TABLE tbl_categoria(

	id_categoria INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	creditos INT NOT NULL,
	PRIMARY KEY(id_categoria)

);

CREATE TABLE tbl_estados(

	id_estados INT NOT NULL,
	nome CHAR(2) NOT NULL,
	PRIMARY KEY(id_estados)

);

CREATE TABLE tbl_administrador(

	id_administrador INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	nivel_acesso INT NOT NULL, /* Adm vai ser, por padr√£o, 2*/
	email VARCHAR(100) NOT NULL,
	senha VARCHAR(16) NOT NULL,
	PRIMARY KEY(id_administrador)

);

CREATE TABLE tbl_livro(

	id_livro INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	imagem_livros VARCHAR(100) NOT NULL,
	edicao INT NOT NULL,
	isbn VARCHAR(17) NOT NULL,
	sinopse VARCHAR2(4000) NOT NULL,
	status INT NULL, /* 1 = ativo, 2 = inativo  */
	lendo INT NULL,
	lido INT NULL,
  querem_ler INT NULL,
	numero_paginas INT NOT NULL,
	editora_id INT NOT NULL,
	autor_id INT NOT NULL,
	categoria_id INT NOT NULL,
	PRIMARY KEY(id_livro),
	FOREIGN KEY(editora_id) REFERENCES tbl_editora(id_editora),
	FOREIGN KEY(autor_id) REFERENCES tbl_autor(id_autor),
	FOREIGN KEY(categoria_id) REFERENCES tbl_categoria(id_categoria)

);

CREATE TABLE tbl_usuario(

	id_usuario INT NOT NULL,
	nome VARCHAR(100) NULL,
	data_nasc DATE NULL,
	foto VARCHAR(100) NULL,
	email VARCHAR(100) NOT NULL,
	idade INT NULL,
	nivel_acesso INT NOT NULL,/* Usu·rios padr„o tem nivel 1 */
	senha VARCHAR(16) NOT NULL,
	creditos INT NOT NULL,
	creditos_comprados_mes INT NULL, /*O usu·rio sÛ vai poder comprar 2*/
	qt_livros_solicitados INT NOT NULL,
	qt_livros_disponibilizados INT NOT NULL,
	data_criacao DATE NOT NULL,
	trocas_realizadas_mes INT NOT NULL,
	limite_troca INT NOT NULL,
	avaliacoes_negativas INT NOT NULL,
	avaliacoes_positivas INT NOT NULL,
	status INT NOT NULL, /* 1 = ativo, 2 = inativo, 3 = banido, 4 = Cadastro Completo e 5 = aguandarndo aprovaÁ„o para reativaÁ„o de conta */
	logradouro VARCHAR(100) NULL,
	numero INT NULL,
	cep CHAR(9) NULL,
	uf CHAR(2) NULL,
	complemento VARCHAR(100) NULL,
	cidade VARCHAR(100) NULL,
	bairro VARCHAR(100) NULL,
	PRIMARY KEY(id_usuario)

);

CREATE TABLE tbl_comentarios(

	id_comentario INT NOT NULL,
	usuario_id INT  NOT NULL,
	livro_id INT  NOT NULL,
	comentario VARCHAR2(4000) NOT NULL,
	tempo timestamp NOT NULL,
	PRIMARY KEY(id_comentario),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(livro_id) REFERENCES tbl_livro(id_livro)

);

CREATE TABLE tbl_generos_favoritos(

	id_generos_favoritos INT NOT NULL,
	categoria_id INT NOT NULL,
	usuario_id INT NOT NULL,
	PRIMARY KEY(id_generos_favoritos),
	FOREIGN KEY(categoria_id) REFERENCES tbl_categoria(id_categoria),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario)

);

CREATE TABLE tbl_autores_favoritos(

	id_autores_favoritos INT NOT NULL,
	autor_id INT NOT NULL,
	usuario_id INT NOT NULL,
	PRIMARY KEY(id_autores_favoritos),
	FOREIGN KEY(autor_id) REFERENCES tbl_autor(id_autor),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario)

);

CREATE TABLE tbl_generos_desapreciados(

	id_genero_desapreciados INT NOT NULL,
	genero_id INT NOT NULL,
	usuario_id INT NOT NULL,
	PRIMARY KEY(id_genero_desapreciados),
	FOREIGN KEY(genero_id) REFERENCES tbl_categoria(id_categoria),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario)

);

CREATE TABLE tbl_autores_desapreciados(

	id_autores_desapreciados INT NOT NULL,
	autor_id INT NOT NULL,
	usuario_id INT NOT NULL,
	PRIMARY KEY(id_autores_desapreciados),
	FOREIGN KEY(autor_id) REFERENCES tbl_autor(id_autor),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario)

);

CREATE TABLE tbl_marcacao(

	id_marcacao INT NOT NULL,
	usuario_id INT NOT NULL,
	livro_id INT NOT NULL,
	tipo INT NOT NULL, /* 1 = Quero Ler; 2 = Lido; 3 = Lendo. */
	PRIMARY KEY(id_marcacao),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(livro_id) REFERENCES tbl_livro(id_livro)

);

CREATE TABLE tbl_amigo( /* Caras eu n„o sei se È assim que funciona mas pra mim È a forma mais pr·tica*/

	id_amigo INT NOT NULL,
	usuario_id INT NOT NULL, /* Id do usu·rio */
	amigo_id INT NOT NULL, /* Id do amigo */
	PRIMARY KEY(id_amigo),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(amigo_id) REFERENCES tbl_usuario(id_usuario)

);

CREATE TABLE tbl_notificacoes(

	id_notificacoes INT NOT NULL,
	tipo INT NOT NULL, /* 1 = Trocas aceitas; 2= Trocas recusadas; 3 = SolicitaÁıes recebidas; 4 = Livro chegou; 5 = Livro em transporte */
	mensagem VARCHAR(50) NOT NULL,
	usuario_id INT NOT NULL,
	data_enviada TIMESTAMP WITH TIME ZONE NOT NULL,
	visualizado VARCHAR(5) NOT NULL, /* true ou false (Escritos dessa forma mesmo) */
	PRIMARY KEY(id_notificacoes),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario)

);

CREATE TABLE tbl_lista_livros(

	id_lista_livros INT NOT NULL,
	livro_id INT NOT NULL,
	usuario_id INT NOT NULL,
	creditos INT NOT NULL,
	status INT NOT NULL, /* 1 = Disponivel, 2 = Trocado e 3 = Congelado*/
	data_cadastro TIMESTAMP WITH TIME ZONE NOT NULL,
	ano CHAR(4) NOT NULL,
	estado VARCHAR(100) NOT NULL,
	PRIMARY KEY(id_lista_livros),
	FOREIGN KEY(livro_id) REFERENCES tbl_livro(id_livro),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario)

);

CREATE TABLE tbl_fotos_livros(

	id_fotos_livros INT NOT NULL,
	primeira_foto VARCHAR(100) NOT NULL,
	segunda_foto VARCHAR(100) NOT NULL,
	terceira_foto VARCHAR(100) NOT NULL,
	lista_livro_id INT NOT NULL,
	PRIMARY KEY(id_fotos_livros),
	FOREIGN KEY(lista_livro_id) REFERENCES tbl_lista_livros(id_lista_livros)

);

CREATE TABLE tbl_solicitacao_troca(
	id_solicitacao INT NOT NULL,
	lista_id INT NOT NULL,
	usuario_solicitador INT NOT NULL,
	usuario_dono_lista INT NOT NULL,
	aceito CHAR(3) NULL, /* Nao e Sim*/
	data_solicitacao DATE NOT NULL,
	data_resposta DATE NULL,
	PRIMARY KEY(id_solicitacao),
	FOREIGN KEY(usuario_solicitador) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(usuario_dono_lista) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(lista_id) REFERENCES tbl_lista_livros(id_lista_livros)
);

CREATE TABLE tbl_cambio(

	id_cambio INT NOT NULL,
	status INT NOT NULL, /* 1 = Em andamento(Esperando a cofirma√ß√£o da entrega do livro); 2 = Livro j√° est√° em transporte; 3 = Feito; 4 = Livro n√£o foi enviado dentro do prazo; 5 = Calote */
	data_operacao DATE NOT NULL,
	quantidade_livros INT NOT NULL,
	data_entrega DATE NULL,
	tipo INT NOT NULL, /* 1 = cambio e 2 = doa√ß√£o */
  data_denuncia DATE NULL,
  denunciado SMALLINT NOT NULL,
	pontuacao SMALLINT NOT NULL,
	cod_rastreamento VARCHAR(13) NULL,
	entregue CHAR(3) NULL, /* Sim ou Nao */
	lista_livros_id INT NOT NULL,
	usuario_disponibilizador INT NOT NULL,
	usuario_resgate INT NOT NULL,
	solicitacao_id INT NOT NULL,
	PRIMARY KEY(id_cambio),
	FOREIGN KEY(usuario_disponibilizador) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(solicitacao_id) REFERENCES tbl_solicitacao_troca(id_solicitacao),
	FOREIGN KEY(usuario_resgate) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(lista_livros_id) REFERENCES tbl_lista_livros(id_lista_livros)

);

CREATE TABLE tbl_livros_trocados(

	id_livros_trocados INT NOT NULL,
	quantidade INT NOT NULL,
	livro_id INT NOT NULL,
	PRIMARY KEY(id_livros_trocados),
	FOREIGN KEY(livro_id) REFERENCES tbl_livro(id_livro)

);

CREATE TABLE tbl_avaliacao(

	id_avaliacao INT NOT NULL,
	livro_id INT NOT NULL,
	usuario_id INT NOT NULL,
	avaliacao INT NOT NULL,
	PRIMARY KEY(id_avaliacao),
	FOREIGN KEY(usuario_id) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(livro_id) REFERENCES tbl_livro(id_livro)

);

CREATE TABLE tbl_motivos(

	id_motivo INT NOT NULL,
	motivo VARCHAR(255) NOT NULL,
	PRIMARY KEY(id_motivo)
);

CREATE TABLE tbl_roda_procedure_ban(
	data DATE NOT NULL
);

CREATE TABLE tbl_denuncias(

	id_denuncias INT NOT NULL,
	usuario_denunciado_id INT NOT NULL,
	usuario_acusador INT NOT NULL,
	data DATE NOT NULL,
	motivo_id INT NOT NULL,
	outro_motivo VARCHAR(255) NULL,
	PRIMARY KEY(id_denuncias),
	FOREIGN KEY(motivo_id) REFERENCES tbl_motivos(id_motivo),
	FOREIGN KEY(usuario_denunciado_id) REFERENCES tbl_usuario(id_usuario),
	FOREIGN KEY(usuario_acusador) REFERENCES tbl_usuario(id_usuario)
);