-- Criar banco de dados e chamá-lo de 'Blog'
CREATE DATABASE Blog;

-- Selecionar o banco de dados
USE Blog;

-- Criar tabela Artigos
CREATE TABLE Blog.Artigos(
ArtigoID INT AUTO_INCREMENT,
Titulo VARCHAR(255) NOT NULL,
Conteudo TEXT NOT NULL,
DataPublicacao DATE NOT NULL,
PRIMARY KEY(ArtigoID)

);

-- Criar tabela Comentários
CREATE TABLE Blog.Comentarios(
ComentarioID INT AUTO_INCREMENT,
ArtigoID INT NOT NULL,
Autor VARCHAR(255) NOT NULL,
Texto TEXT NOT NULL,
DataComentario DATE NOT NULL,
PRIMARY KEY(ComentarioID),
FOREIGN KEY(ArtigoID) REFERENCES Blog.Artigos(ArtigoID)

);

-- Inserir valores na tabela Artigos
INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao) VALUES
('Não deixe para depois', 'Cumpra imediatamente todas as demandas que tiver, não deixe para depois.', '2023-10-15'),
('Na verdade, todos temos tempo', 'Às vezes não é tempo que nos falta, mas sim utilizá-lo melhor.', '2023-10-16'),
('Procastinação e fuga', 'Uma das razões da procrastinação é a fuga do desconforto. Enfrente isso e viva!.', '2023-10-17'),
('Um passo de cada vez, não desista', 'De bloquinho em bloquinho, de tarefa em tarefa, você chega lá.', '2023-10-18'),
('Recupere-se rapidamente', 'Caia, mas levante-se rapidamente, só que dessa vez, melhor do que antes.', '2023-10-19');


-- Inserir valores na tabela Comentários
INSERT INTO Blog.Comentarios (ArtigoID, Autor, Texto, DataComentario) VALUES
(1, 'Preguiçoso24', 'Esse texto falou muito comigo, reconheço que tenho que mudar.' , '2023-11-10'),
(2, 'Insensato@giga', 'Verdade, vejo que se eu simplesmente fosse lá e fizesse tudo mudaria.', '2023-11-11'),
(3, 'Medroso996', 'Realmente, me fez ver que a razão da procrastinação é minha aversão ao desconforto', '2023-11-12'), 
(4, 'Desertor46', 'A gente difícilmente pensa sobre o quão verdadeiro isso é', '2023-11-13'),
(5, 'Fraco78', 'Tenho que aplicar isso na minha vida, tenho dificuldade de me recuperar depois de um erro', '2023-11-14');

-- Exibir valores da tabela Artigos
SELECT * FROM Blog.Artigos;

-- Exibir valores da tabela Comentários
SELECT * FROM Blog.Comentarios;



