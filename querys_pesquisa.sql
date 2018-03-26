SELECT
  livro.nome AS NomeLivro, imagem_livros AS imagem_livro,
  autor.nome AS AutorNome,
  editora.nome AS EditoraNome, usuario.nome AS UsuarioNome,
  ft_livro.primeira_foto AS PrimeiraFoto,
  ft_livro.segunda_foto AS SegundaFoto,
  ft_livro.terceira_foto AS TerceiraFoto
FROM tbl_livro livro
  JOIN tbl_autor autor ON (livro.autor_id = id_autor)
  JOIN tbl_editora editora ON (livro.editora_id = id_editora)
  JOIN tbl_lista_livros lista ON( lista.livro_id = id_livro)
  JOIN tbl_usuario usuario ON (lista.usuario_id = id_usuario)
  JOIN tbl_fotos_livros ft_livro ON( ft_livro.lista_livro_id = id_lista_livros)
WHERE
  livro.nome LIKE '%%' OR
  autor.nome LIKE '%%' OR
  usuario.nome LIKE '%%' OR
  editora.nome LIKE '%%'
ORDER BY livro.nome;

SELECT
  lista.id_lista_livros,
  livro.nome AS NomeLivro,
  autor.nome AS NomeAutor,
  editora.nome AS NomeEditora,
  categoria.nome AS NomeCategoria,
  primeira_foto,
  segunda_foto,
  terceira_foto,
  usuario.nome AS NomeUsuario
FROM tbl_lista_livros lista
  LEFT JOIN tbl_livro livro
  ON lista.livro_id = id_livro
  LEFT JOIN tbl_fotos_livros
  ON lista_livro_id = id_lista_livros
  LEFT JOIN tbl_usuario usuario
  ON usuario_id = id_usuario
  LEFT JOIN tbl_editora editora
  ON editora_id = id_editora
  LEFT JOIN tbl_autor autor
  ON autor_id = id_autor
  LEFT JOIN tbl_categoria categoria
  ON categoria_id = id_categoria
WHERE
  livro.nome LIKE '%%'
  OR autor.nome LIKE '%%'
  OR editora.nome LIKE '%%'
  OR usuario.nome LIKE '%%'
GROUP BY livro.nome,
  autor.nome,
  editora.nome,
  categoria.nome,
  lista.id_lista_livros,
  primeira_foto,
  segunda_foto,
  terceira_foto,
  usuario.nome
ORDER BY lista.id_lista_livros ASC;

/* Para pegar a quantidade de usuários */

SELECT COUNT(id_usuario) AS Numero_Usuarios FROM tbl_usuario;

/* Para pegar a quantidade de usuário cadastrados recentemente */

SELECT COUNT(id_usuario) AS Usuarios_Recentes
FROM tbl_usuario WHERE data_criacao = sysdate;

SELECT nome, email, idade, uf, cidade, data_criacao FROM tbl_usuario
WHERE data_criacao <= SYSDATE
ORDER BY data_criacao ASC;

/* Livro mais trocados */

SELECT nome, quantidade
FROM tbl_livro JOIN tbl_livros_trocados ON livro_id = id_livro ORDER BY quantidade DESC;

SELECT nome, quantidade
FROM tbl_livro JOIN tbl_livros_trocados
ON livro_id = id_livro
ORDER BY quantidade ASC;

/* Autores favoritos */

SELECT autor.nome, COUNT(*) AS NumLivrosTrocados
FROM tbl_livros_trocados
JOIN tbl_livro ON livro_id = id_livro
JOIN tbl_autor autor ON autor_id = id_autor
GROUP BY AUTOR.NOME
ORDER BY COUNT(livro_id) DESC

/* Editoras favoritas */

SELECT editora.nome, COUNT(*) AS NumeroLivrosEditores
FROM tbl_livros_trocados
JOIN tbl_livro  ON livro_id = id_livro
JOIN tbl_editora editora ON editora_id = id_editora
GROUP BY editora.nome
ORDER BY COUNT(livro_id) DESC;


/* Usuários mais bem avaliados */

SELECT id_usuario, email,nome, avaliacoes_positivas
FROM tbl_usuario
GROUP BY id_usuario, nome, email, avaliacoes_positivas
ORDER BY avaliacoes_positivas DESC;

/* Usuários mais mal avaliados */
SELECT id_usuario, email,nome, avaliacoes_negativas
FROM tbl_usuario
GROUP BY id_usuario, nome, email, avaliacoes_negativas
ORDER BY avaliacoes_negativas DESC;

/* Tipos de gêneros mais trocados */

SELECT cat.nome, livro.nome
FROM tbl_categoria cat JOIN tbl_livro livro
ON categoria_id = id_categoria
GROUP BY livro.nome, cat.nome;

SELECT id_categoria ,cat.nome, COUNT(*) AS num_livros_trocados
FROM tbl_categoria cat JOIN tbl_livro
ON categoria_id = id_categoria
JOIN tbl_livros_trocados
ON livro_id = id_livro
GROUP BY id_categoria,cat.nome
ORDER BY num_livros_trocados DESC;

/* Número de livros disponibilizados no site por editora */

SELECT editora.nome, COUNT(*)
FROM tbl_editora editora JOIN tbl_livro
ON editora_id = id_editora
JOIN tbl_lista_livros
ON livro_id = id_livro
GROUP BY editora.nome
ORDER BY COUNT(*) DESC;

/* Número de livros do site por genero */

SELECT cat.nome, COUNT(*)
FROM tbl_categoria cat JOIN tbl_livro
ON categoria_id = id_categoria
JOIN tbl_lista_livros
ON livro_id = id_livro
GROUP BY cat.nome
ORDER BY COUNT(*) DESC;

/* Número de livros do site por autor */

SELECT autor.nome, COUNT(*)
FROM tbl_autor autor JOIN tbl_livro
ON autor_id = id_autor
JOIN tbl_lista_livros
ON livro_id = id_livro
GROUP BY autor.nome
ORDER BY COUNT(*) DESC;

/* Usuários que mais trocam livros */


/* Quantidade de livros trocados por mês */

/* Perfil do usuário */

SELECT id_usuario,nome,email,foto,idade,
avaliacoes_negativas,avaliacoes_positivas,
uf,cidade,genero_favorito
FROM tbl_usuario
WHERE id_usuario = ;

SELECT tipo,id_livro,imagem_livros
FROM tbl_marcacao JOIN tbl_usuario
ON usuario_id = id_usuario
JOIN tbl_livro
ON livro_id = id_livro
WHERE usuario_id = 1;


/* Ocorrências de denuncia anteriores */

SELECT id_usuario, id_denuncias, usu.nome, motivo_id, motivo,
outro_motivo, data, avaliacoes_negativas, avaliacoes_positivas
FROM tbl_usuario usu JOIN tbl_denuncias
ON usuario_denunciado_id = id_usuario
JOIN tbl_motivos
ON motivo_id = id_motivo
WHERE usuario_denunciado_id = 1
GROUP BY id_denuncias,id_usuario,usu.nome,motivo_id,motivo,outro_motivo,data,avaliacoes_negativas,avaliacoes_positivas ORDER BY data;














