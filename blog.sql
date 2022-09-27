-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Set-2022 às 01:06
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(22, 27, 2, 'Você sabe qual a diferença entre reciclar e reutilizar?', '1657800274_reciclagem.jpg', '&lt;p&gt;Embora sejam bastante conhecidos, os conceitos de reciclagem e reutiliza&ccedil;&atilde;o de res&iacute;duos ainda geram muitas d&uacute;vidas no que diz respeito &agrave; sua diferen&ccedil;a: afinal, o que difere o ato de reciclar do ato de reutilizar? Qual das duas alternativas &eacute; mais sustent&aacute;vel?&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Nesse ponto, vale lembrar que, ainda que diferentes, os dois processos s&atilde;o igualmente importantes em suas contribui&ccedil;&otilde;es para o meio ambiente e a &lt;a href=&quot;https://www.teraambiental.com.br/guia-de-gestao-de-residuos&quot;&gt;gest&atilde;o de res&iacute;duos&lt;/a&gt;. O objetivo, afinal, &eacute; o mesmo: combater o desperd&iacute;cio de materiais e contribuir para a diminui&ccedil;&atilde;o de passivos nos aterros e da explora&ccedil;&atilde;o de recursos naturais.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ao prolongarmos a vida &uacute;til dos res&iacute;duos, tanto pela reciclagem quanto por sua reutiliza&ccedil;&atilde;o, cumprimos o papel essencial de reduzir o consumo de energia e mat&eacute;ria-prima para a produ&ccedil;&atilde;o de novos produtos.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Apesar de pouco disseminada, a diferen&ccedil;a entre os dois processos &eacute; simples de compreender. Confira os conceitos a seguir e saiba como diferenci&aacute;-los!&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1, '2022-06-17 20:08:06'),
(23, 26, 2, 'Reciclagem: o que é, como fazer e por que é importante reciclar o lixo', '1655507544_download.png', '&lt;p&gt;Dia ap&oacute;s dia, seja em casa ou no escrit&oacute;rio, o consumo de alimentos, o recebimento de encomendas e o desgaste de materiais at&eacute; o fim de sua vida &uacute;til faz com que &lt;a href=&quot;https://umsoplaneta.globo.com/cultura-design-e-moda/noticia/2021/07/05/startup-cria-tenis-sustentavel-feito-de-residuos-plasticos-encontrados-nos-oceanos.ghtml&quot;&gt;res&iacute;duos &lt;/a&gt;sejam produzidos. Ter a consci&ecirc;ncia sobre a &lt;strong&gt;correta destina&ccedil;&atilde;o&lt;/strong&gt; do &lt;a href=&quot;https://umsoplaneta.globo.com/opiniao/colunas-e-blogs/o-mundo-que-queremos/post/2021/07/economia-circular-e-azul-como-resolver-o-problema-do-despejo-de-toneladas-de-lixo-no-mar.ghtml&quot;&gt;lixo&lt;/a&gt;, dom&eacute;stico ou n&atilde;o, &eacute; o primeiro passo para a &lt;a href=&quot;https://umsoplaneta.globo.com/sociedade/consumo-consciente/noticia/2021/06/24/agro-esta-cada-vez-mais-atento-a-reciclagem-e-reutilizacao-de-materiais.ghtml&quot;&gt;reciclagem&lt;/a&gt;. Por isso, &eacute; importante estar atento a determinados aspectos. &Eacute; org&acirc;nico? &Eacute; feito de &lt;a href=&quot;https://umsoplaneta.globo.com/cultura-design-e-moda/noticia/2021/06/29/lego-revela-prototipo-de-peca-feita-com-plastico-reciclado.ghtml&quot;&gt;pl&aacute;stico &lt;/a&gt;ou de &lt;a href=&quot;https://umsoplaneta.globo.com/energia/noticia/2021/05/02/menos-lixo-eletronico-pesquisadores-reaproveitam-vidro-de-tvs-e-computadores-antigos.ghtml&quot;&gt;vidro&lt;/a&gt;? Pode ser reaproveitado?&lt;/p&gt;&lt;p&gt;De acordo com o &lt;strong&gt;Movimento &lt;/strong&gt;&lt;a href=&quot;https://www.reciclasampa.com.br/&quot;&gt;&lt;strong&gt;Recicla Sampa&lt;/strong&gt;&lt;/a&gt;, uma iniciativa da &lt;a href=&quot;https://www.loga.com.br/&quot;&gt;&lt;strong&gt;Loga&lt;/strong&gt;&lt;/a&gt; e da &lt;a href=&quot;https://www.ecourbis.com.br/&quot;&gt;&lt;strong&gt;EcoUrbis&lt;/strong&gt;&lt;/a&gt;, concession&aacute;rias de coleta de res&iacute;duos domiciliares e de sa&uacute;de da cidade de &lt;a href=&quot;https://g1.globo.com/sp/sao-paulo/&quot;&gt;S&atilde;o Paulo&lt;/a&gt;, a reciclagem &eacute; &ldquo;o processo de reaproveitamento de materiais descartados&rdquo;. Segundo a organiza&ccedil;&atilde;o, &ldquo;seu grande objetivo &eacute; reintroduzi-los na cadeia produtiva a fim de que ainda gerem valor e sejam reutilizados, reduzindo-se a produ&ccedil;&atilde;o de lixo, aumentando a preserva&ccedil;&atilde;o dos recursos naturais e melhorando a qualidade de vida das pessoas&rdquo;. Ainda, o Recicla Sampa destaca que a reciclagem &ldquo;&eacute; considerada uma das alternativas mais eficientes para tratar os res&iacute;duos s&oacute;lidos, tanto do ponto de vista ambiental quanto social&rdquo;.&lt;/p&gt;&lt;p&gt;Saiba Mai&lt;/p&gt;', 1, '2022-06-17 20:12:24'),
(24, 26, 2, 'Qual a diferença entre reciclar e reutilizar?', '1655507629_fragmaq_1.jpg', '&lt;p&gt;No manual do cidad&atilde;o consciente, tr&ecirc;s &quot;regras&quot; est&atilde;o por tr&aacute;s de qualquer atitude a ser tomada: &lt;strong&gt;reduzir, reciclar e reutilizar&lt;/strong&gt;. Os&quot;Rs&quot; da sustentabilidade ajudam a criar uma rela&ccedil;&atilde;o mais harm&ocirc;nica entre o ser humano e o meio ambiente, de modo que o desenvolvimento econ&ocirc;mico e social n&atilde;o seja prejudicial ao meio ambiente.&lt;/p&gt;&lt;p&gt;Os conceitos de reutiliza&ccedil;&atilde;o e reciclagem, contudo, ainda colocam um ponto de interroga&ccedil;&atilde;o na cabe&ccedil;a de muita gente. H&aacute; quem pense que eles s&atilde;o a mesma coisa. N&atilde;o, n&atilde;o s&atilde;o. &lt;strong&gt;H&aacute; diferen&ccedil;a entre reciclar e reutilizar&lt;/strong&gt;.&lt;/p&gt;', 1, '2022-06-17 20:13:49'),
(27, 27, 9, 'Lixo reciclável', '1657899205_o que é reciclagem.jpg', '&lt;p&gt;A reciclagem colabora com a preserva&ccedil;&atilde;o do Meio Ambiente.&amp;nbsp; E voc&ecirc; pode come&ccedil;ar a fazer a diferen&ccedil;a com pequenas atitude di&aacute;rias. A separa&ccedil;&atilde;o dos res&iacute;duos aliviam os lix&otilde;es e aterros sanit&aacute;rios, chegando at&eacute; eles apenas os rejeitos (res&iacute;duos que n&atilde;o podem ser reaproveit&aacute;veis), grande parte dos res&iacute;duos s&oacute;lidos gerados em casa pode ser reaproveitada. A reciclagem economiza recursos naturais e gera renda para os catadores de lixo, parte da popula&ccedil;&atilde;o que depende dos res&iacute;duos s&oacute;lidos descartados para sobreviver.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Afinal: O que &eacute; lixo reciclado?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&Eacute; recicl&aacute;vel todo o res&iacute;duo descartado que constitui interesse de transforma&ccedil;&atilde;o de partes ou o seu todo. Esses materiais poder&atilde;o retornar &agrave; cadeia produtiva para virar o mesmo produto ou produtos diferentes dos originais.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Como &eacute; a separa&ccedil;&atilde;o para descarte dos res&iacute;duos?&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Lave as embalagens do tipo longa vida, latas, garrafas e frascos de vidro e pl&aacute;stico. Seque-os antes de depositar nos coletores.&lt;br&gt;&bull; Pap&eacute;is devem estar secos. Podem ser dobrados, mas n&atilde;o amassados.&lt;br&gt;&bull; Embrulhe vidros quebrados e outros materiais cortantes em papel grosso (do tipo jornal) ou colocados em uma caixa para evitar acidentes. Garrafas e frascos n&atilde;o devem ser misturados com os vidros planos.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;strong&gt;O que n&atilde;o pode ser descartado como lixo recicl&aacute;vel?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Papel-carbono, etiqueta adesiva, fita crepe, guardanapos, fotografias, filtro de cigarros, pap&eacute;is sujos, pap&eacute;is sanit&aacute;rios, copos de papel. Cabos de panela e tomadas. Clipes, grampos, esponjas de a&ccedil;o, canos. Espelhos, cristais, cer&acirc;micas, porcelana. Pilhas e baterias de celular devem ser devolvidas aos fabricantes ou depositadas em coletores espec&iacute;ficos.&lt;/p&gt;', 1, '2022-07-15 12:28:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(2, 'Vida', '<p>test change</p>'),
(3, 'Dúvidas', '<p>duvidas</p>'),
(9, 'Lixo', '<p>Sobre lixo em geral</p>'),
(10, 'Ecologia', '<p>Sobre ecologia em geral</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(26, 1, 'Guilherme', 'guilhermebastosleone@gmail.com', '$2y$10$K8gs6mOkNzBl5fKW2LwPBeFGClJ265SfD0gkNL1xUJgFqkTpvlr1q', '2022-06-17 22:47:36'),
(27, 1, 'admin', 'admin@gmail.com', '$2y$10$DOHQh.m9brteW4uesRc2c.ZOHYTO8HR8pvBoZkZUbP.1/1ZVoAN0y', '2022-07-14 11:48:02'),
(28, 1, 'Gui', 'guilherme1leone@gmail.com', '$2y$10$E.v86kbe2f729bU/qSRZYea0KT16vaIuVAD3qEehv7gy4UMFHk3Q.', '2022-07-14 12:52:17');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Índices para tabela `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
