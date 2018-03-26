
INSERT ALL
  INTO tbl_estados VALUES (1, 'AC')
  INTO tbl_estados VALUES (2, 'Al')
  INTO tbl_estados VALUES (3, 'AP')
  INTO tbl_estados VALUES (4, 'AM')
  INTO tbl_estados VALUES (5, 'BA')
  INTO tbl_estados VALUES (6, 'CE')
  INTO tbl_estados VALUES (7, 'DF')
  INTO tbl_estados VALUES (8, 'ES')
  INTO tbl_estados VALUES (9, 'GO')
  INTO tbl_estados VALUES (10, 'MA')
  INTO tbl_estados VALUES (11, 'MT')
  INTO tbl_estados VALUES (12, 'MS')
  INTO tbl_estados VALUES (13, 'MG')
  INTO tbl_estados VALUES (14, 'PA')
  INTO tbl_estados VALUES (15, 'PB')
  INTO tbl_estados VALUES (16, 'PR')
  INTO tbl_estados VALUES (17, 'PE')
  INTO tbl_estados VALUES (18, 'PI')
  INTO tbl_estados VALUES (19, 'RJ')
  INTO tbl_estados VALUES (20, 'RN')
  INTO tbl_estados VALUES (21, 'RS')
  INTO tbl_estados VALUES (22, 'RO')
  INTO tbl_estados VALUES (23, 'RR')
  INTO tbl_estados VALUES (24, 'SC')
  INTO tbl_estados VALUES (25, 'SP')
  INTO tbl_estados VALUES (26, 'SE')
  INTO tbl_estados VALUES (27, 'TO')
SELECT * FROM dual;

INSERT ALL
  INTO tbl_categoria VALUES (1, 'Romance', 1)
  INTO tbl_categoria VALUES (2,'Terror', 1)
  INTO tbl_categoria VALUES (3,'Suspense', 1)
  INTO tbl_categoria VALUES (4,'Fantasia', 1)
  INTO tbl_categoria VALUES (5, 'Mitologia', 1)
  INTO tbl_categoria VALUES (6,'Policial', 1)
  INTO tbl_categoria VALUES (7,'Aventura', 1)
  INTO tbl_categoria VALUES (8,'Ficção Científica', 1)
  INTO tbl_categoria VALUES (9,'Drama', 1)
  INTO tbl_categoria VALUES (10, 'Literatura Estrangeira', 1)
SELECT * FROM dual;

INSERT ALL
  INTO tbl_editora VALUES (1,'EDITORA INTRÍNSECA')
  INTO tbl_editora VALUES (2,'LEYA')
  INTO tbl_editora VALUES (3,'ROCCO JOVENS LEITORES ')
  INTO tbl_editora VALUES (4,'Galera Record')
  INTO tbl_editora VALUES (5,'Martin Claret')
SELECT * FROM dual;

INSERT ALL
  INTO tbl_autor VALUES (1,'Stephenie Meyer')
  INTO tbl_autor VALUES (2,'George R. R. Martin')
  INTO tbl_autor VALUES (3,'Suzanne Collins')
  INTO tbl_autor VALUES (4,'Cassandra Clare')
  INTO tbl_autor VALUES (5,'Machado de Assis')
  INTO tbl_autor VALUES (6,'Rick Riordan')
SELECT * FROM dual;

INSERT ALL
  INTO tbl_livro VALUES
  (1,'A Hospedeira','content/imagens/livros_gerais/a_hospedeira.jpg',1,'978-85-9807-859-5','Melanie Stryder se recusa a desaparecer. Nosso planeta foi dominado
  por um inimigo que não pode ser detectado. Os humanos se tornaram hospedeiros dos invasores. Suas mentes são extraídas enquanto seus corpos permanecem intactos
  e prosseguem suas vidas aparentemente sem alteração. A maior parte da humanidade sucumbiu a tal processo. Quando Melanie, um dos humanos "selvagens" que ainda
  restam, é capturada, ela tem certeza de que será seu fim. Peregrina, a "alma" invasora designada para o corpo de Melanie, foi alertada sobre os desafios de viver
  dentro de um ser humano: as emoções irresistíveis, o excesso de sensações, a persistência das lembranças e das memórias vívidas. Mas há uma dificuldade pela qual
  Peregrina não esperava: a antiga ocupante de seu corpo se recusa a desistir da posse de sua mente. Peregrina investiga os pensamentos de Melanie com o objetivo
  de descobrir o paradeiro dos remanescentes da resistência humana. Entretanto, Melanie ocupa a mente de sua invasora com visões do homem que ama: Jared, que
  continua incapaz de se separar dos desejos de seu corpo. Peregrina começa a se sentir intensamente atraída por alguém a quem foi submetida em uma espécie de
  exposição forçada. Quando os acontecimentos fazem de Melanie e Peregrina improváveis aliadas, elas partem em uma busca incerta e perigosa pelo homem
  que ambas amam.',1,0,0,0,560,1,1,10)
  INTO tbl_livro VALUES
  (2,'A Tormenta de Espadas','content/imagens/livros_gerais/got1.jpg',1,'978-85-8044-262-5','A tormenta de espadas, o terceiro livro da série de George R. R.
  Martin, onde os Sete Reinos já sentem o rigoroso inverno que chega, mas as batalhas parecem estar mais cruéis e impiedosas. Enquanto os Sete Reinos estremecem
  com a chegada dos temíveis selvagens pela Muralha, numa maré interminável de homens, gigantes e terríveis bestas, Jon Snow, o Bastardo de Winterfell, que se
  encontra entre eles, divide-se entre sua consciência e o papel que é forçado a desempenhar. Robb Stark, o Jovem Lobo, vence todas as suas batalhas, mas será que
  ele conseguirá vencer os desafios que não se resolvem apenas com a espada? Arya continua a caminho de Correrrio, mas mesmo alguém tão desembaraçado como ela
  terá grande dificuldade em ultrapassar os obstáculos que se aproximam. Na corte de Joffrey, em Porto Real, Tyrion luta pela vida, depois de ter sido gravemente
  ferido na Batalha da Água Negra; e Sansa, livre do compromisso com o homem que agora ocupa o Trono de Ferro, precisa lidar com as consequências de ser a segunda
  na linha de sucessão de Winterfell, uma vez que Bran e Rickon estariam mortos. No Leste, Daenerys Targaryen navega em direção às terras da sua infância, mas
  antes ela precisará aportar às desprezíveis cidades dos esclavagistas. Mas a menina indefesa agora é uma mulher poderosa. Quem sabe quanto tempo falta para se
  transformar em uma conquistadora impiedosa?',1,0,0,0,672,2,2,10)
SELECT * FROM dual;

INSERT ALL
  INTO tbl_livro VALUES
  (3,'Jogos vorazes','content/imagens/livros_gerais/the_hunger_games.jpg',1,'978-85-7980-024-5','Este livro é o primeiro de uma bem-sucedida trilogia, comercializada para mais de 20 países, A hist�ria se passa em uma nação chamada Panem, fundada após o fim da América do Norte. Formada por 12 distritos, é comandada com mão de ferro pela Capital, sede do governo. Uma das formas com que demonstra seu poder sobre o resto do carente país é com os "Jogos Vorazes", uma competição anual transmitida ao vivo pela televisão, em que um garoto e uma garota de 12 a 18 anos de cada distrito são selecionados e obrigados a lutar até a morte. Para evitar que sua irmã seja a mais nova vítima do programa, Katniss se oferece para participar em seu lugar. Vinda do empobrecido Distrito 12, ela sabe como sobreviver em um ambiente hostil. Caso vença, terá fama e fortuna. Se perder, morre. Mas para ganhar a competição, será preciso muito mais do que habilidade. Até onde Katniss estará disposta a ir para ser vitoriosa nos "Jogos Vorazes"?',
  1,0,0,0,400,3,3,10)
  INTO tbl_livro VALUES
  (4,'Cidade Dos Ossos','content/imagens/livros_gerais/cidade_ossos.jpg',1,'978-85-0108-714-0','Um mundo oculto está prestes a ser revelado... Quando Clary decide ir a Nova York se divertir numa discoteca, nunca poderia imaginar que testemunharia um assassinato - muito menos um assassinato cometido por três adolescentes cobertos por tatuagens enigmáticas e brandindo armas bizarras. Clary sabe que deve chamar a polícia, mas é difícil explicar um assassinato quando o corpo desaparece e os assassinos são invisíveis para todos, menos para ela. Tão surpresa quanto assustada, Clary aceita ouvir o que os jovens têm a dizer... Uma tribo de guerreiros secreta dedicada a libertar a terra de demônios, os Caçadores das Sombras têm uma missão em nosso mundo, e Clary pode já estar mais envolvida na história do que gostaria.',
  1,0,0,0,462,4,4,10)
  INTO tbl_livro VALUES
  (5,'Dom Casmurro','content/imagens/livros_gerais/dom_casmurro.jpg',1,'978-85-7232-264-7','Machado de Assis é um dos mais importantes escritores da literatura brasileira. "Dom Casmurro" é uma de suas obras-primas. O livro apresenta o relato de Bentinho, que se crê traído pela mulher, Capitu, e pelo seu melhor amigo. É com orgulho que esta editora oferece aos seus leitores, em formato de bolso, este romance machadiano.',
  1,0,0,0,223,5,5,10)
  INTO tbl_livro VALUES
  (6,'O Ladrão de Raios','content/imagens/livros_gerais/pj1.jpg',1,'978-85-9807-839-7','Primeiro volume da saga Percy Jackson e os olimpianos, O ladrão de raios esteve entre os primeiros lugares na lista das séries mais vendidas do The New York Times. O autor conjuga lendas da mitologia grega com aventuras no século XXI. Nelas, os deuses do Olimpo continuam vivos, ainda se apaixonam por mortais e geram filhos metade deuses, metade humanos, como os heróis da Grécia antiga. Marcados pelo destino, eles dificilmente passam da adolescência. Poucos conseguem descobrir sua identidade.
  O garoto-problema Percy Jackson é um deles. Tem experiências estranhas em que deuses e monstros mitológicos parecem saltar das páginas dos livros direto para a sua vida. Pior que isso: algumas dessas criaturas estão bastante irritadas. Um artefato precioso foi roubado do Monte Olimpo e Percy é o principal suspeito. Para restaurar a paz, ele e seus amigos - jovens heróis modernos - terão de fazer mais do que capturar o verdadeiro ladrão: precisam elucidar uma traição mais ameaçadora que a fúria dos deuses.',
  1,0,0,0,400,1,6,10)
SELECT * FROM dual;

INSERT ALL
  INTO tbl_livros_trocados VALUES (1,9,1)
  INTO tbl_livros_trocados VALUES (2,11,2)
  INTO tbl_livros_trocados VALUES (3,1,3)
  INTO tbl_livros_trocados VALUES (4,8,4)
  INTO tbl_livros_trocados VALUES (5,15,5)
  INTO tbl_livros_trocados VALUES (6,11,6)
SELECT * FROM dual;

INSERT INTO tbl_notificacoes
VALUES(1, 1, 'Sua solicitação foi aceita!', 1, SYSDATE,'false');

INSERT INTO tbl_motivos
VALUES(1,'Livro com mais danos que o previsto na descrição.');
INSERT INTO tbl_motivos
VALUES(2,'Livro recebido é diferente do livro solicitado');
INSERT INTO tbl_motivos
VALUES(3,'Livro não foi enviado');
INSERT INTO tbl_motivos
VALUES(4,'Outro');

INSERT ALL
  INTO tbl_denuncias VALUES (1, 1,1,SYSDATE,1,'')
  INTO tbl_denuncias VALUES (2, 2, 2,SYSDATE,2,'')
  INTO tbl_denuncias VALUES (3, 2, 1,SYSDATE,2,'')
  INTO tbl_denuncias VALUES (4,3,1,SYSDATE,3,'')
  INTO tbl_denuncias VALUES (5, 3,2,SYSDATE,4,'Nada')
  INTO tbl_denuncias VALUES (6, 2, 1,SYSDATE,3,'')
  INTO tbl_denuncias VALUES (7, 3,2,SYSDATE,2,'')
SELECT * FROM dual;
