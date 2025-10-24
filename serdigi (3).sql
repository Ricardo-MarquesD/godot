-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Out-2025 às 19:03
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `serdigi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `idpergunta` bigint(20) UNSIGNED NOT NULL,
  `pergunta_texto` text NOT NULL,
  `tema_idtema` int(10) NOT NULL,
  `numPergunta` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`idpergunta`, `pergunta_texto`, `tema_idtema`, `numPergunta`) VALUES
(1, 'Devemos sempre desligar o computador quando terminarmos uma sessão de trabalho?', 1, 1),
(2, 'Você pode compartilhar suas senhas com seu melhor amigo?', 1, 2),
(3, 'Qual é a atitude certa quando você recebe uma foto ou vídeo que zoa alguém? ', 1, 3),
(4, 'Nos aplicativos de comunicação, quem você aceita adicionar ou responder? ', 1, 4),
(5, 'Quem você costuma adicionar nas redes sociais? ', 1, 5),
(6, 'Quando você vai se cadastrar em um site, o que você faz? ', 1, 6),
(7, 'O que você faz quando recebe um link ou e-mail suspeito? ', 1, 7),
(8, 'Você compra na internet produtos com preços muito baixos ou que parecem suspeitos? ', 1, 8),
(9, 'Você usa aquela parada de verificação em duas etapas (2FA) nos seus apps e celular? ', 1, 9),
(10, 'Antes de aceitar vale-presente ou cupom online, você confere se é fake? ', 1, 10),
(11, 'Você divulga seus hábitos e sua localização em tempo real nas redes sociais?', 2, 1),
(12, 'Você publica na internet os lugares que você frequenta?', 3, 2),
(13, 'Qual é a atitude certa quando você recebe uma foto ou vídeo que zoa alguém?', 4, 3),
(14, 'Nos aplicativos de comunicação, quem você aceita adicionar ou responder?', 5, 4),
(15, 'Quem você costuma adicionar nas redes sociais?', 5, 5),
(16, 'Quando você vai se cadastrar em um site, o que você faz?', 6, 6),
(17, 'O que você faz quando recebe um link ou e-mail suspeito?', 7, 7),
(18, 'Você compra na internet produtos com preços muito baixos ou que parecem suspeitos?', 5, 8),
(19, 'Você usa aquela parada de verificação em duas etapas (2FA) nos seus apps e celular?', 8, 9),
(20, 'Antes de aceitar vale-presente ou cupom online, você confere se é fake?', 8, 10),
(21, 'Mas e aí… quando recebe uma oferta de trampo por e-mail, o que você faz?', 7, 11),
(22, 'Antes de comprar algo online, você confere se o site é de verdade ou tá com cara de golpe?', 9, 12),
(23, 'Você compartilha a senha do seu celular ou das redes com alguém?', 7, 13),
(24, 'Você deixa o antivírus e o firewall do seu celular e PC atualizados ou nem liga pra isso?', 10, 14),
(25, 'Você recebe uma solicitação de amizade de um perfil meio suspeito… o que faz?', 7, 15),
(26, 'Você mandaria nudes pelas redes ou apps de mensagem?', 11, 16),
(27, 'Você compartilha fotos íntimas de outras pessoas nos grupos ou redes?', 12, 17),
(28, 'Você faz PIX ou pagamentos pra quem não conhece pela internet?', 5, 18),
(29, 'Você atende chamada de vídeo de pessoa que você não conhece?', 5, 19),
(30, 'Você compartilha na internet dados pessoais sobre sua saúde ou vida íntima?', 2, 20),
(31, 'Quando rola uma conversa estranha ou meio esquisita na internet, o que você faz?', 7, 21),
(32, 'Você passa seus dados pessoais pra pessoas que não conhece por mensagem?', 7, 22),
(33, 'Quando chega um e-mail estranho de uma empresa que você nunca viu, o que você faz?', 5, 23),
(34, 'O que pode acontecer se você compartilhar e trocar fotos e vídeos de conotação íntima nas redes sociais e aplicativos de comunicação?', 13, 24),
(35, 'Quais são os riscos de publicar a localização do \"rolê\" em tempo real na internet?', 14, 25),
(36, 'O que pode acontecer se você aceitar o convite de amizade de estranhos nas redes sociais ou aplicativos de comunicação?', 15, 26),
(37, 'Quais são os riscos de fazer postagens pessoais sem limite de privacidade?', 11, 27),
(38, 'O que rola quando você interage com qualquer um nas redes e posta tudo sobre sua vida?', 11, 28),
(39, 'Quais são as consequências de trocar, divulgar ou compartilhar fotos, vídeos ou fatos de pessoas em situações constrangedoras?', 8, 29),
(40, 'O que pode rolar quando seus posts são abertos pra geral e cheios de detalhes sobre sua vida?', 11, 30),
(41, 'O que pode acontecer se você postar informações falsas ou fofocar sobre a vida dos outros nas redes?', 11, 31),
(42, 'O que pode rolar se você comprar algo online por um preço MUITO mais barato que o normal?', 16, 32),
(43, 'Quais são os riscos de postar seus hábitos pessoais na internet só pra ganhar seguidores?', 17, 33),
(44, 'O que pode rolar se você ganhar um \"vale presente\" online e, sem conferir se é real, passar seus dados pra pegar ele?', 17, 34),
(45, 'Quais são os riscos de entrar em trabalhos fáceis demais, que prometem grana fácil e sem esforço?', 11, 35),
(46, 'O que pode rolar se você postar fotos ou vídeos dos lugares que você sempre vai na internet?', 18, 36),
(47, 'O que pode rolar se você dividir a senha do seu celular ou rede social com outras pessoas?', 19, 37),
(48, 'O que pode rolar se você trocar fotos íntimas nas redes sociais ou apps de mensagem?', 17, 38),
(49, 'Quais são os riscos de atender ligações de números desconhecidos?', 19, 39),
(50, 'O que pode rolar se você mandar ou trocar nudes com o crush?', 19, 40),
(51, 'Quais são as consequências de fazer depósitos, transferências ou pagamentos para desconhecidos?', 17, 41),
(52, 'Quais são os riscos de participar de chamadas de vídeo com desconhecidos que não têm boas intenções?', 15, 42),
(53, 'O que pode rolar se você passar seus dados pessoais em grupos de conversa nos apps?', 15, 43),
(54, 'Quais são os riscos de abrir e-mails ou acessar sites suspeitos, ou conteúdo que não é pra sua idade?', 8, 44),
(55, 'Quais são as consequências de criar perfis fake com fotos e dados de outras pessoas para stalkear o crush nas redes sociais?', 8, 45),
(56, 'Por que é importante contar pros seus pais, amigos ou familiares se você caiu num golpe e teve seu perfil clonado?', 8, 46),
(57, 'Você sabia que seu nome, CPF, foto, cor dos olhos, altura, telefone e e-mail são dados pessoais?', 15, 47),
(58, 'Você sabia que existe uma lei que diz como as empresas e organizações devem proteger os seus dados pessoais?', 15, 48),
(59, 'Quando você cria uma conta de e-mail ou numa rede social, o que a empresa, dona do serviço, tem que fazer?', 15, 49),
(60, 'O que é a Agência Nacional de Proteção de Dados Pessoais (ANPD) no Brasil?', 15, 51),
(61, 'Como devem ser tratados os dados pessoais de crianças e adolescentes?', 15, 52),
(62, 'Por que rolam tantos golpes, fraudes e extorsões na internet?', 15, 53),
(63, 'Foi vítima de fraude ou golpe, o que fazer?', 15, 54),
(64, 'Qual é a responsabilidade da Agência Nacional de Proteção de Dados Pessoais?', 15, 55),
(65, 'O que significa ser \"Titular de dados pessoais\"?', 15, 56),
(66, 'Qual direito você tem sobre seus dados pessoais que estão com empresas ou organizações?', 15, 57),
(67, 'Se seus dados pessoais estiverem errados, faltando algo ou desatualizados, o que fazer pra corrigir?', 15, 58),
(68, 'O que é o direito à privacidade?', 15, 59),
(69, 'Você toparia usar uma IA para fazer todo o seu trabalho da escola, sem nem ler o conteúdo?', 20, 60),
(70, 'Um colega usou IA pra criar uma imagem zoando alguém da turma e mandou no grupo. O que é mais correto fazer?', 21, 61),
(71, 'Você viu um vídeo criado com IA que mostra um famoso dizendo algo que ele nunca falou. O que você faz?', 22, 62),
(72, 'Seu amigo usou IA para responder todas as questões de um trabalho em grupo. Qual é a atitude mais responsável?', 22, 63),
(73, 'O que pode acontecer se a inteligência artificial for usada de forma errada, como espalhar fake news ou criar imagens falsas de pessoas?', 23, 64),
(74, 'Você adiciona qualquer pessoa que te manda convite nos jogos só pra montar o squad mais forte?', 24, 65),
(75, 'Durante uma partida, alguém começa a xingar e ameaçar outros jogadores. O que é mais certo fazer?', 25, 66),
(76, 'Você está jogando com uma pessoa que oferece \"skin” no jogo em troca de um \"favor\". O que você faz?', 26, 67),
(77, 'Qual é uma atitude responsável ao jogar online com desconhecidos?', 27, 68),
(78, 'Qual dessas atitudes ajuda a se proteger em jogos online?', 27, 69),
(79, 'Você passa horas e horas no celular mesmo sabendo que tem outras coisas importantes pra fazer?', 28, 70),
(80, 'Você percebe que está jogando ou usando o celular por horas, deixando de fazer outras coisas importantes. O que isso pode ser?', 29, 71),
(81, 'Quais desses sinais podem indicar que alguém está viciado em internet ou jogos?', 30, 72),
(82, 'O que você pode fazer para evitar passar tempo demais na internet ou jogando?', 30, 73),
(83, 'Qual dessas frases mostra que você tem um uso saudável da internet?', 30, 74),
(84, 'Você faria um desafio perigoso só pra bombar nos views e ganhar seguidores?', 31, 75),
(85, 'Como você pode ajudar a combater conteúdos agressivos e violentos nas redes?', 32, 76),
(86, 'Você compartilharia um vídeo que mostra alguém passando vergonha só pra ganhar likes?', 33, 77),
(87, 'Você seguiria uma conta só porque ela posta vídeos polêmicos ou violentos?', 34, 78),
(88, 'Você acha certo incentivar alguém a fazer coisas perigosas em uma live só pra ver o que acontece?', 34, 79),
(89, 'Se uma plataforma coloca bloqueio em conteúdo impróprio, o que ela tá fazendo?', 35, 80),
(90, 'E se um jogo online tem “loot box” (caixinha com prêmios aleatórios pagos), mas é acessado por menor, o que rola?', 35, 81),
(91, 'Por que as plataformas precisam ter sistemas de verificação de idade mais confiáveis?', 35, 82),
(92, 'O que acontece se uma empresa não respeitar as regras do ECA Digital?', 35, 83),
(93, 'Por que a ANPD (Agência Nacional de Proteção de Dados) foi escolhida como autoridade dessa lei?', 35, 84),
(94, 'Se uma comunidade online promove ódio contra adolescentes, o que a lei exige da plataforma?', 35, 85),
(95, 'Um youtuber famoso manda crianças comprarem itens em jogo online dizendo que “sem gastar não dá pra ser bom”. Pela lei, isso pode?', 35, 86),
(96, 'Por que a lei exige que plataformas avisem sobre os riscos dos seus serviços?', 35, 87),
(97, 'Por que o ECA Digital fala sobre tempo de uso de aplicativos e games?', 35, 88),
(98, 'O que você acha colocar 18 no cadastro de uma rede social se você tem 14 anos?', 35, 89),
(99, 'Um app pede a idade e você pensa em inventar dados pra criar conta sem linkar ao responsável. O que fazer?', 35, 90);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pontuacao`
--

CREATE TABLE `pontuacao` (
  `idpontuacao` bigint(20) UNSIGNED NOT NULL,
  `pontos` int(2) NOT NULL,
  `sessao_idsessao` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `data_pontuacao` datetime NOT NULL,
  `tipocatado` int(11) NOT NULL COMMENT '1:Quadro;\r\n2:Água;\r\n3:Maça;\r\n4:Livro;\r\n5:Resposta;\r\n6:Derrotar vilão;\r\n7:Ligar camera;\r\n8:Mudar de cena;\r\n\r\n',
  `pergunta_idpergunta` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `pontuacao`
--

INSERT INTO `pontuacao` (`idpontuacao`, `pontos`, `sessao_idsessao`, `usuario_idusuario`, `data_pontuacao`, `tipocatado`, `pergunta_idpergunta`) VALUES
(1, 0, 0, 0, '2025-06-11 11:09:18', 0, 0),
(2, 0, 0, 0, '2025-06-11 11:15:26', 0, 0),
(3, 0, 0, 0, '2025-06-13 10:47:42', 0, 0),
(4, 0, 0, 1, '2025-06-13 10:47:45', 0, 0),
(5, 0, 0, 0, '2025-06-13 10:48:26', 0, 0),
(6, 0, 0, 1, '2025-06-13 10:48:29', 0, 0),
(7, 0, 0, 0, '2025-06-13 10:52:15', 0, 0),
(8, 0, 0, 0, '2025-06-13 10:52:39', 0, 0),
(9, 0, 0, 1, '2025-06-13 10:52:41', 0, 0),
(10, 0, 0, 0, '2025-06-13 10:54:15', 0, 0),
(11, 1, 46, 1, '2025-06-13 10:54:18', 1, 0),
(12, 0, 0, 0, '2025-06-13 10:59:36', 0, 0),
(13, 0, 0, 0, '2025-06-13 11:02:38', 0, 0),
(14, 0, 0, 0, '2025-06-13 11:03:48', 0, 0),
(15, 0, 0, 0, '2025-06-13 11:05:05', 0, 0),
(16, 1, 46, 1, '2025-06-13 11:05:07', 4, 0),
(17, 0, 0, 0, '2025-06-13 11:15:44', 0, 0),
(18, 0, 0, 0, '2025-06-13 11:16:12', 0, 0),
(19, 1, 46, 1, '2025-06-13 11:16:14', 4, 0),
(20, 0, 0, 0, '2025-06-25 10:19:59', 0, 0),
(21, 0, 0, 0, '2025-06-25 10:21:40', 0, 0),
(22, 0, 0, 0, '2025-06-25 10:46:15', 0, 0),
(23, 0, 0, 0, '2025-06-25 10:51:20', 0, 0),
(24, 0, 0, 0, '2025-06-25 10:59:24', 0, 0),
(25, 0, 0, 0, '2025-06-25 11:00:38', 0, 0),
(26, 0, 0, 0, '2025-06-27 10:17:34', 0, 0),
(27, 0, 0, 0, '2025-06-27 10:18:04', 0, 0),
(28, 0, 0, 0, '2025-06-27 10:20:40', 0, 0),
(29, 0, 0, 0, '2025-06-27 10:34:16', 0, 0),
(30, 0, 0, 0, '2025-06-27 10:45:59', 0, 0),
(31, 0, 0, 0, '2025-06-27 10:54:12', 0, 0),
(32, 0, 0, 0, '2025-06-27 10:56:45', 0, 0),
(33, 0, 0, 0, '2025-06-27 11:04:32', 0, 0),
(34, 0, 0, 0, '2025-06-27 11:12:45', 0, 0),
(35, 0, 0, 0, '2025-06-27 11:15:04', 0, 0),
(36, 0, 0, 0, '2025-06-27 11:16:31', 0, 0),
(37, 0, 0, 0, '2025-09-16 16:25:05', 0, 0),
(38, 0, 0, 0, '2025-09-16 16:25:41', 0, 0),
(39, 1, 9, 10, '2025-09-16 16:25:44', 2, 0),
(40, 0, 0, 0, '2025-09-16 16:30:25', 0, 0),
(41, 0, 0, 0, '2025-09-16 16:31:58', 0, 0),
(42, 0, 0, 0, '2025-09-16 16:33:43', 0, 0),
(43, 0, 0, 0, '2025-09-16 16:35:13', 0, 0),
(44, 1, 6, 7, '2025-09-16 16:35:16', 3, 0),
(45, 0, 0, 0, '2025-09-16 16:36:34', 0, 0),
(46, 1, 2, 7, '2025-09-16 16:36:37', 3, 0),
(47, 1, 2, 7, '2025-09-16 16:36:39', 2, 0),
(48, 1, 2, 7, '2025-09-16 16:36:52', 1, 0),
(49, 1, 2, 7, '2025-09-16 16:37:00', 4, 0),
(50, 0, 0, 0, '2025-09-16 16:37:13', 0, 0),
(51, 1, 7, 3, '2025-09-16 16:37:16', 1, 0),
(52, 1, 7, 3, '2025-09-16 16:37:18', 3, 0),
(53, 0, 0, 0, '2025-09-16 16:37:51', 0, 0),
(54, 0, 0, 0, '2025-09-16 16:38:39', 0, 0),
(55, 1, 7, 10, '2025-09-16 16:38:42', 3, 0),
(56, 0, 0, 0, '2025-09-23 14:33:38', 0, 0),
(57, 1, 10, 9, '2025-09-23 14:33:45', 4, 0),
(58, 1, 10, 9, '2025-09-23 14:33:47', 6, 0),
(59, 0, 0, 0, '2025-09-23 14:35:01', 0, 0),
(60, 1, 5, 10, '2025-09-23 14:35:04', 4, 0),
(61, 1, 5, 10, '2025-09-23 14:35:26', 4, 0),
(62, 0, 0, 0, '2025-09-23 14:37:25', 0, 0),
(63, 0, 0, 0, '2025-09-23 14:38:35', 0, 0),
(64, 0, 0, 0, '2025-09-23 14:39:44', 0, 0),
(65, 0, 0, 0, '2025-09-23 14:43:03', 0, 0),
(66, 1, 10, 2, '2025-09-23 14:43:08', 7, 0),
(67, 1, 10, 2, '2025-09-23 14:43:12', 4, 0),
(68, 1, 10, 2, '2025-09-23 14:43:38', 6, 0),
(69, 0, 0, 0, '2025-09-23 15:53:53', 0, 0),
(70, 1, 4, 6, '2025-09-23 15:54:06', 6, 0),
(71, 1, 4, 6, '2025-09-23 15:54:59', 4, 0),
(72, 1, 4, 6, '2025-09-23 15:56:21', 1, 0),
(73, 1, 4, 6, '2025-09-23 15:56:23', 4, 0),
(74, 1, 4, 6, '2025-09-23 15:56:30', 4, 0),
(75, 0, 0, 0, '2025-09-23 15:58:05', 0, 0),
(76, 1, 9, 8, '2025-09-23 15:58:09', 4, 0),
(77, 1, 9, 8, '2025-09-23 15:58:36', 4, 0),
(78, 0, 0, 0, '2025-09-23 16:09:55', 0, 0),
(79, 0, 0, 0, '2025-09-23 16:11:09', 0, 0),
(80, 0, 0, 0, '2025-09-23 16:14:07', 0, 0),
(81, 0, 0, 0, '2025-09-23 16:20:06', 0, 0),
(82, 0, 0, 0, '2025-09-23 16:38:06', 0, 0),
(83, 1, 5, 1, '2025-09-23 16:38:09', 4, 0),
(84, 1, 5, 1, '2025-09-23 16:38:10', 5, 0),
(85, 1, 5, 1, '2025-09-23 16:38:13', 5, 0),
(86, 1, 5, 1, '2025-09-23 16:38:15', 5, 0),
(87, 1, 5, 1, '2025-09-23 16:38:16', 5, 0),
(88, 1, 5, 1, '2025-09-23 16:38:17', 5, 0),
(89, 1, 5, 1, '2025-09-23 16:38:17', 5, 0),
(90, 1, 5, 1, '2025-09-23 16:38:18', 5, 0),
(91, 1, 5, 1, '2025-09-23 16:38:18', 5, 0),
(92, 1, 5, 1, '2025-09-23 16:38:18', 5, 0),
(93, 1, 5, 1, '2025-09-23 16:38:18', 5, 0),
(94, 0, 0, 0, '2025-09-23 16:40:00', 0, 0),
(95, 1, 4, 6, '2025-09-23 16:40:13', 6, 0),
(96, 1, 4, 6, '2025-09-23 16:40:23', 7, 0),
(97, 1, 4, 6, '2025-09-23 16:40:29', 3, 0),
(98, 1, 4, 6, '2025-09-23 16:40:37', 2, 0),
(99, 1, 4, 6, '2025-09-23 16:41:04', 4, 0),
(100, 1, 4, 6, '2025-09-23 16:41:17', 1, 0),
(101, 1, 4, 6, '2025-09-23 16:41:38', 1, 0),
(102, 0, 0, 0, '2025-10-07 15:54:44', 0, 0),
(103, 0, 0, 0, '2025-10-07 15:55:04', 0, 0),
(104, 0, 0, 0, '2025-10-07 15:55:56', 0, 0),
(105, 1, 1, 7, '2025-10-07 15:55:59', 1, 0),
(106, 0, 0, 0, '2025-10-07 16:10:38', 0, 0),
(107, 1, 3, 7, '2025-10-07 16:10:41', 1, 0),
(108, 0, 0, 0, '2025-10-07 16:11:11', 0, 0),
(109, 1, 3, 6, '2025-10-07 16:11:13', 1, 0),
(110, 0, 0, 0, '2025-10-07 16:17:42', 0, 0),
(111, 1, 4, 2, '2025-10-07 16:17:45', 1, 0),
(112, 0, 0, 0, '2025-10-07 16:18:24', 0, 0),
(113, 1, 3, 6, '2025-10-07 16:18:26', 1, 0),
(114, 0, 0, 0, '2025-10-07 16:31:47', 0, 0),
(115, 0, 0, 0, '2025-10-07 16:32:38', 0, 0),
(116, 0, 0, 0, '2025-10-07 16:34:22', 0, 0),
(117, 0, 0, 0, '2025-10-07 16:34:51', 0, 0),
(118, 0, 0, 0, '2025-10-07 16:36:56', 0, 0),
(119, 0, 0, 0, '2025-10-07 16:38:44', 0, 0),
(120, 0, 0, 0, '2025-10-07 16:39:10', 0, 0),
(121, 1, 6, 1, '2025-10-07 16:39:12', 4, 0),
(122, 0, 0, 0, '2025-10-07 16:40:13', 0, 0),
(123, 1, 4, 10, '2025-10-07 16:40:15', 4, 0),
(124, 0, 0, 0, '2025-10-07 16:41:26', 0, 0),
(125, 1, 1, 3, '2025-10-07 16:41:29', 4, 0),
(126, 1, 1, 3, '2025-10-07 16:41:34', 4, 0),
(127, 1, 1, 3, '2025-10-07 16:41:41', 4, 0),
(128, 1, 1, 3, '2025-10-07 16:41:46', 4, 0),
(129, 1, 1, 3, '2025-10-07 16:41:50', 4, 0),
(130, 0, 0, 0, '2025-10-14 15:28:29', 0, 0),
(131, 0, 0, 0, '2025-10-14 15:29:23', 0, 0),
(132, 1, 8, 2, '2025-10-14 15:29:31', 4, 0),
(133, 1, 8, 2, '2025-10-14 15:29:33', 4, 0),
(134, 1, 8, 2, '2025-10-14 15:29:35', 4, 0),
(135, 1, 8, 2, '2025-10-14 15:30:00', 4, 0),
(136, 1, 8, 2, '2025-10-14 15:30:08', 4, 0),
(137, 0, 0, 0, '2025-10-14 15:31:14', 0, 0),
(138, 0, 0, 0, '2025-10-14 15:31:26', 0, 0),
(139, 0, 0, 0, '2025-10-14 15:31:45', 0, 0),
(140, 0, 0, 0, '2025-10-14 15:31:57', 0, 0),
(141, 1, 6, 4, '2025-10-14 15:32:00', 4, 0),
(142, 1, 6, 4, '2025-10-14 15:32:03', 4, 0),
(143, 1, 6, 4, '2025-10-14 15:32:06', 4, 0),
(144, 0, 0, 0, '2025-10-14 15:42:47', 0, 0),
(145, 1, 5, 2, '2025-10-14 15:42:50', 4, 0),
(146, 1, 5, 2, '2025-10-14 15:42:55', 4, 0),
(147, 1, 5, 2, '2025-10-14 15:43:01', 4, 0),
(148, 1, 5, 2, '2025-10-14 15:43:20', 4, 0),
(149, 0, 0, 0, '2025-10-14 15:43:47', 0, 0),
(150, 0, 0, 0, '2025-10-14 15:45:10', 0, 0),
(151, 1, 1, 10, '2025-10-14 15:45:13', 4, 0),
(152, 1, 1, 10, '2025-10-14 15:45:19', 4, 0),
(153, 1, 1, 10, '2025-10-14 15:45:26', 1, 0),
(154, 1, 1, 10, '2025-10-14 15:45:33', 1, 0),
(155, 1, 1, 10, '2025-10-14 15:45:46', 4, 0),
(156, 1, 1, 10, '2025-10-14 15:45:51', 4, 0),
(157, 1, 1, 10, '2025-10-14 15:46:00', 4, 0),
(158, 1, 1, 10, '2025-10-14 15:46:03', 4, 0),
(159, 0, 0, 0, '2025-10-14 15:47:32', 0, 0),
(160, 1, 1, 8, '2025-10-14 15:47:35', 4, 0),
(161, 0, 0, 0, '2025-10-14 15:49:09', 0, 0),
(162, 1, 3, 8, '2025-10-14 15:49:11', 4, 0),
(163, 1, 3, 8, '2025-10-14 15:49:16', 4, 0),
(164, 1, 3, 8, '2025-10-14 15:49:19', 1, 0),
(165, 1, 3, 8, '2025-10-14 15:49:29', 4, 0),
(166, 1, 3, 8, '2025-10-14 15:49:36', 4, 0),
(167, 1, 3, 8, '2025-10-14 15:49:49', 4, 0),
(168, 0, 0, 0, '2025-10-14 15:50:40', 0, 0),
(169, 1, 5, 8, '2025-10-14 15:50:51', 4, 0),
(170, 1, 5, 8, '2025-10-14 15:50:54', 1, 0),
(171, 0, 0, 0, '2025-10-14 15:51:33', 0, 0),
(172, 1, 6, 4, '2025-10-14 15:51:38', 1, 0),
(173, 1, 6, 4, '2025-10-14 15:51:48', 4, 0),
(174, 1, 6, 4, '2025-10-14 15:51:55', 4, 0),
(175, 1, 6, 4, '2025-10-14 15:52:05', 4, 0),
(176, 1, 6, 4, '2025-10-14 15:52:12', 4, 0),
(177, 0, 0, 0, '2025-10-14 16:01:10', 0, 0),
(178, 1, 7, 8, '2025-10-14 16:01:13', 4, 0),
(179, 1, 7, 8, '2025-10-14 16:01:14', 5, 0),
(180, 0, 0, 0, '2025-10-14 16:41:32', 0, 0),
(181, 0, 0, 0, '2025-10-14 17:27:16', 0, 0),
(182, 1, 5, 10, '2025-10-14 17:27:19', 4, 0),
(183, 1, 5, 10, '2025-10-14 17:27:24', 4, 0),
(184, 1, 5, 10, '2025-10-14 17:27:32', 4, 0),
(185, 1, 5, 10, '2025-10-14 17:27:33', 5, 0),
(186, 1, 5, 10, '2025-10-14 17:27:41', 4, 0),
(187, 1, 5, 10, '2025-10-14 17:27:42', 5, 0),
(188, 1, 5, 10, '2025-10-14 17:27:45', 4, 0),
(189, 1, 5, 10, '2025-10-14 17:27:46', 5, 0),
(190, 1, 5, 10, '2025-10-14 17:27:50', 4, 0),
(191, 1, 5, 10, '2025-10-14 17:27:51', 5, 0),
(192, 0, 0, 0, '2025-10-21 16:07:50', 0, 0),
(193, 1, 6, 8, '2025-10-21 16:07:54', 4, 0),
(194, 0, 0, 0, '2025-10-21 16:26:33', 0, 0),
(195, 1, 3, 1, '2025-10-21 16:26:36', 4, 0),
(196, 1, 3, 1, '2025-10-21 16:26:37', 5, 0),
(197, 1, 3, 1, '2025-10-21 16:26:44', 4, 0),
(198, 1, 3, 1, '2025-10-21 16:26:44', 5, 0),
(199, 1, 3, 1, '2025-10-21 16:26:49', 4, 0),
(200, 0, 0, 0, '2025-10-21 16:29:33', 0, 0),
(201, 1, 9, 6, '2025-10-21 16:29:38', 4, 0),
(202, 0, 0, 0, '2025-10-21 16:31:54', 0, 0),
(203, 1, 7, 6, '2025-10-21 16:31:58', 4, 0),
(204, 1, 7, 6, '2025-10-21 16:32:00', 5, 0),
(205, 1, 7, 6, '2025-10-21 16:32:08', 4, 0),
(206, 1, 7, 6, '2025-10-21 16:32:08', 5, 0),
(207, 1, 7, 6, '2025-10-21 16:32:12', 4, 0),
(208, 1, 7, 6, '2025-10-21 16:32:13', 5, 0),
(209, 1, 7, 6, '2025-10-21 16:32:16', 4, 0),
(210, 1, 7, 6, '2025-10-21 16:32:17', 5, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `idresposta` bigint(20) UNSIGNED NOT NULL,
  `resposta_texto` text NOT NULL,
  `pergunta_idpergunta` int(10) NOT NULL,
  `resposta_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`idresposta`, `resposta_texto`, `pergunta_idpergunta`, `resposta_status`) VALUES
(1, 'Sim, sempre devemos desligar o computador quando terminamos uma sessão de trabalho.', 1, 1),
(2, 'Você só precisa desligar o computador se você pretende se ausentar por mais de 2 dias.', 1, 0),
(3, 'Você nunca deve desligar o computador.', 1, 0),
(4, 'Você só deve desligar o computador se começar a chover.', 1, 0),
(5, 'Você nunca deve compartilhar suas senhas com ninguém.', 2, 1),
(6, 'Não há nenhum problema em você compartilhar suas senhas com seu melhor amigo.', 2, 0),
(7, 'Você só deve compartilhar suas senha com seus pais.', 2, 0),
(8, 'Você pode compartilhar suas senhas, desde que elas sejam simples como: 0000.', 2, 0),
(9, 'Salvo aqui porque vai que dá pra usar depois. ', 3, 0),
(10, 'Mando pros grupos, óbvio! Muito engraçado.', 3, 0),
(11, 'Posto nos stories com aquele gif “meme do ano”.', 3, 0),
(12, 'Nem repasso. Zoar assim é vacilo e pode dar ruim. ', 3, 1),
(13, 'Todo mundo que manda mensagem, vai que é alguém legal. ', 4, 0),
(14, 'Qualquer pessoa com perfil estiloso. ', 4, 0),
(15, 'Quem tem muitos seguidores, deve ser famoso. ', 4, 0),
(16, 'Só quem eu conheço de verdade. ', 4, 1),
(17, 'Quem me segue de volta, mesmo sem eu conhecer. ', 5, 0),
(18, 'Todo mundo que curte minhas fotos. ', 5, 0),
(19, 'Só gente que eu conheço e confio de verdade. ', 5, 1),
(20, 'Pessoas aleatórias, porque é legal ter muitos seguidores.', 5, 0),
(21, 'Coloco qualquer dado só pra agilizar, mó preguiça. ', 6, 0),
(22, 'Uso meus dados completos, mesmo sem saber se o site é seguro. ', 6, 0),
(23, 'Coloco info falsa, tipo nome \"Zé Ninguém\", só pra zoar.', 6, 0),
(24, 'Só preencho o necessário e vejo se o site é confiável antes.', 6, 1),
(25, 'Clico pra ver o que é, vai que tem algo interessante. ', 7, 0),
(26, 'Nem abro, pode ser vírus ou golpe.', 7, 1),
(27, 'Abro rapidinho, mas fecho se parecer estranho. ', 7, 0),
(28, 'Entro só se tiver promoção, tipo “ganhe um telefone”. ', 7, 0),
(29, 'Não, se tiver cheiro de golpe eu nem chego perto.', 8, 1),
(30, 'Mano, promoção boa a gente não perde!', 8, 0),
(31, 'Compro na moral, se for ruim é só devolver depois. ', 8, 0),
(32, 'Barato é sempre bom, não ligo muito.', 8, 0),
(33, 'Que isso? Nem sei o que é isso. ', 9, 0),
(34, 'Isso é coisa de gente neurada, passo longe.', 9, 0),
(35, 'Sempre ligo, tipo escudo extra contra os hackers. ', 9, 1),
(36, 'Só uso se o app pedir na força.', 9, 0),
(37, 'Aceito na hora! Grátis é grátis, né? ', 10, 0),
(38, 'Só dou uma olhada rápida, mas se parecer daora, já pego.', 10, 0),
(39, 'Sempre dou aquela conferida pra não vacilar e cair em golpe.', 10, 1),
(40, 'Pego e ainda passo para meus amigos pegarem também. ', 10, 0),
(41, 'que isso existia.\nSei lá, tanto faz.', 11, 1),
(42, 'se sabe quem tá vendo.\nNão tem problema, né? Todo mundo faz isso.\nSim, se não postar, nem parece que fui.', 12, 0),
(43, 'usar depois.\nMando pros grupos, óbvio! Muito engraçado.\nPosto nos stories com aquele gif “meme do ano”.\nNem repasso. Zoar assim é vacilo e pode dar ruim.', 13, 0),
(44, 'mensagem, vai que é alguém legal.\nQualquer pessoa com perfil estiloso.\nQuem tem muitos seguidores, deve ser famoso.\nSó quem eu conheço de verdade.', 14, 0),
(45, 'agilizar, mó preguiça.\nUso meus dados completos, mesmo sem saber se o site é seguro.\nColoco info falsa, tipo nome \"Zé Ninguém\", só pra zoar\nSó preencho o necessário e vejo se o site é confiável antes', 16, 0),
(46, 'ver o que é, vai que tem algo interessante.\nNem abro, pode ser vírus ou golpe.\n Abro rapidinho, mas fecho se parecer estranho.\nEntro só se tiver promoção, tipo “ganhe um telefone”.', 17, 0),
(47, 'a gente não perde!\nCompro na moral, se for ruim é só devolver depois.\nBarato é sempre bom, não ligo muito.', 18, 1),
(48, 'de gente neurada, passo longe.\nSempre ligo, tipo escudo extra contra os hackers.\nSó uso se o app pedir na força.', 19, 0),
(49, 'hora! Grátis é grátis, né?\nSó dou uma olhada rápida, mas se parecer daora, já pego\nSempre dou aquela conferida pra não vacilar e cair em golpe.\nPego e ainda passo para meus amigos pegarem também.', 20, 0),
(50, 'hora, vai que é minha chance de ficar rico!\nPrimeiro confiro se é real ou golpe, né…\nNem leio direito, já mando meu currículo.\nSe tiver cara de sério, já tô dentro.', 21, 0),
(51, 'Se tiver com layout bonito, deve ser confiável.\nSó confiro depois que dá ruim.\nLógico, dou aquela stalkeada no site antes pra não cair em furada.', 22, 0),
(52, 'é só minha, nem minha sombra sabe.\nSim, meus amigos mais chegados sabem tudo.\nPasso pra quem pedir, não tenho nada a esconder.\nSe pedir com jeitinho eu passo.', 23, 1),
(53, 'Atualizar? Mó preguiça, só ocupa espaço.\nUé, nem sabia que precisava de antivírus... isso é coisa de computador antigo, né?\nDeixo tudo em dia, segurança é chave, ninguém quer vírus zoando o rolê.', 24, 0),
(54, 'hora! perfil fake é golpe dos brabos.\nNem vejo direito, já vou aceitando geral.\nClaro, quanto mais seguidores, melhor!\nAceito, vai que é alguém bonito usando outra foto.', 25, 1),
(55, 'quem eu confio, de boa.\nTô fora! Internet não é lugar pra isso, pode dar ruim real.\nSe sumir em 5 segundos, tá suave.\nPra mim, desafio é desafio, mando sim!', 26, 0),
(56, 'oferta for boa, arrisco!\nPago qualquer coisa rápido, sem pensar muito.\nNunca! Pix é só pra quem eu confio de verdade. \nSó faço se parecer confiável, mesmo sem conhecer direito', 28, 0),
(57, 'ou encrenca.\nÀs vezes, se ficar insistindo eu fico curioso.\nAcho que pode ser alguém interessante, aí atendo.\nAtendo só pra ver qual é a dessa.', 29, 1),
(58, 'galera que confio, mas geral vê.\nNão, essas paradas são pessoais demais pra expor online.\nSó conto pra quem pedir, tipo nos grupos.', 30, 0),
(59, 'boa, não me meto.\nProcuro meus pais, responsáveis ou professores pra ajudar.\nTento responder na mesma vibe só pra ver o que acontece.\nContinuo na conversa, mas não falo muita coisa.', 31, 0),
(60, 'importante.\nNem rola! Dados meus são sagrados, não passo pra desconhecido.\nAceito passar só se parecer gente legal.', 32, 0),
(61, 'hora, vai que tem um presente pra mim!\nRespondo pra ver se é confiável.\nDou uma olhada rápida, só por curiosidade.\nApago na hora, e-mails assim são cilada na certa!', 33, 0),
(62, 'chantagem, cyberbullying.\nVai bombar! Mais seguidores, quem sabe até virar influencer.\nO pessoal vai achar que você é super confiante e descolado.\nNada demais, a internet é um lugar seguro pra compartilhar o que quiser.', 34, 1),
(63, 'chance de encontrar pessoas maneiras.\nO local pode ficar muito cheio porque todos vão querer ir para lá também.\nSeus amigos podem ficar com inveja dos lugares legais que você vai.\nVocê se expõe a \"stalkers\", golpes, chantagens e ao perigo das pessoas te seguirem.', 35, 0),
(64, 'de ruim acontece, a galera da internet é sempre de boa!\nExponho meus amigos, minha família e até a mim mesmo, e fico na mira dos golpes.\nPerco a chance de conhecer pessoas super legais.', 36, 0),
(65, 'rola de fechar umas parcerias.\nExponho meus dados e rotina pra todo mundo, até pra gente do mal.\nTalvez algum famoso me siga, preciso ficar atento!', 37, 0),
(66, 'galera passa a saber tudo sobre mim.\nNada demais, quanto mais gente, melhor!\nVocê dá mole e pode virar alvo de golpe ou até de alguém querendo te prejudicar.\nMeus amigos acham que eu sou super popular e descolado', 38, 0),
(67, 'o centro das atenções e a galera acha engraçado.\nNada acontece, é só uma zoeira, ninguém liga.\nVocê pode acabar machucando a pessoa e até se meter em encrenca.\nTodo mundo vai querer ser seu amigo, porque você sabe de tudo.', 39, 0),
(68, 'pode usar esses dados contra você.\nVocê tem mais chances de ser descoberto para ficar famoso.\nNão tem problema nenhum, compartilhar tudo é mó vibe!\nSeus amigos vão achar que você curte causar e gosta de atenção.', 40, 1),
(69, 'normal da internet.\nVocê pode causar um baita problema, afetar a pessoa e até se encrencar com geral.\nSeus amigos vão te evitar porque não gostam de quem fala dos outros pelas costas.\nVocê vai bombar nas redes, porque a galera adora um babado quente.', 41, 0),
(70, 'super oportunidade, todo mundo quer pagar menos, né?\nVou me tornar o novo Rei das promoções\nVai chegar rapidinho e ser até melhor do que o original!\nPode ser golpe! Você perde a grana e ainda fica sem o produto.', 42, 0),
(71, 'noite pro dia e ganhar um monte de seguidores.\nVocê pode acabar dando muita informação pra gente errada e acabar se dando mal.\nNada demais, quanto mais mostrar, melhor!\nPode afastar seus amigos de verdade, que preferem privacidade.', 43, 0),
(72, 'roubar sua grana ou identidade.\nVai ser sucesso, porque você ganhou uma parada de graça!\nPode acabar perdendo tempo e nem ganhar nada, só dor de cabeça.\nNada demais, vale presente é sempre confiável na internet.', 44, 1),
(73, 'chance perfeita pra ficar rico rápido e de boa.\nÉ tranquilo, todo mundo faz, não tem erro!\nPode ser furada, você perde dinheiro e ainda pode se meter em confusão.\nNem penso nisso, só aproveito a oportunidade fácil.', 45, 0),
(74, 'galera vai querer ir junto com você.\nÉ de boa, postar isso não causa nenhum problema.\nSeus amigos vão achar que você sempre tá nos melhores lugares.', 46, 1),
(75, 'que confia muito nessa pessoa e vira parceiro de verdade.\nNão tem problema, é normal compartilhar senha com a galera.\nVocê fica mais próximo da galera porque confia nela.\nAlguém pode usar sua conta pra fazer algo errado e você acaba levando a culpa.', 47, 0),
(76, 'acontece, pois aplicativos de mensagem são sempre seguros e privados.', 48, 1),
(77, 'oportunidade incrível.\nNão tem perigo, ligação é só ligação, nada demais.\nPode ser alguém com um papo aleatório e divertido.\nVocê pode cair num golpe, tipo sequestro falso ou roubo de dados.', 49, 0),
(78, 'mais e fortalecer o relacionamento.\nPode vazar e virar um problemão pra você.\nNão tem perigo, é só pra vocês dois mesmo, tranquilo.\nÉ normal, todo mundo troca nudes hoje em dia, sem crise.', 50, 0),
(79, 'pessoa pode te devolver o dinheiro depois, tipo num gesto de bondade\nPode dar ruim, a pessoa some com sua grana e você fica no preju.\nIsso mostra que você é uma pessoa que confia no próximo.\nRelaxa, é tranquilo, golpe só acontece com os outros.', 51, 0),
(80, 'demais, é só uma chamada de vídeo, super de boa.\nVocê pode ser filmado sem saber, e as imagens podem ser usadas pra te ameaçar depois.\nVai ser uma boa chance de fazer novos amigos.\nLegal, posso conseguir um convite pra um projeto secreto top.', 52, 0),
(81, 'demais.\nRelaxa, grupos são sempre seguros e supervisionados.\nSeus dados podem vazar e pessoas mal-intencionadas podem usar pra te enrolar.\nVocê pode ganhar prêmios legais só por compartilhar seus dados.', 53, 0),
(82, 'forma de conhecer melhor o crush sem ser descoberto.\nEstou só sendo esperto, vai dar em nada não\nNão tem problema, todo mundo faz isso às vezes.\nPode dar ruim, você pode se ferrar legal e acabar perdendo a confiança.', 55, 0),
(83, 'contar, você consegue resolver tudo sozinho.\nPara ganhar atenção e engajamento nas redes sociais.\nPorque eles podem te ajudar a bloquear o golpe e proteger seus dados.\nNada acontece, porque as redes sociais sempre pegam e tiram as contas clonadas rapidinho.', 56, 0),
(84, 'foto contam como dados pessoais.\nSim, são informações que identificam quem você é e precisam ser protegidas.\nDados pessoais são só coisas muito secretas, tipo senhas.\nNão, são só detalhes que todo mundo sabe mesmo.', 57, 0),
(85, 'LGPD. Ela cuida pra ninguém usar seus dados sem autorização.\nNão, cada empresa decide o que fazer com os dados e ninguém precisa seguir regras.\nExiste uma lei, mas ela é só pra bancos e lojas grandes.\nNão precisa de lei, porque a galera na internet já sabe se cuidar sozinha.', 58, 1),
(86, 'conta liberada pra qualquer um ver e interagir, porque a internet é livre.\nProteger seus dados pessoais, garantir sua privacidade e seguir a Lei Geral de Proteção de Dados Pessoais', 59, 0),
(87, 'empresa que vende dados pessoais de usuários para bancos e lojas.\nÉ a galera que cuida da LGPD e garante que seus dados pessoais sejam tratados com segurança.\nÉ a agência que te ajuda a ganhar seguidores nas redes sociais e a bombar online.\nNunca ouvi falar', 60, 0),
(88, 'mais cuidado e proteção, sempre com o consentimento dos responsáveis.\nDo mesmo jeito que os de qualquer pessoa, sem regras diferentes.\nPode usar os dados sem problemas, porque é só pra diversão online.\nAs empresas nem precisam se preocupar com isso, porque a galera jovem gosta de compartilhar tudo.', 61, 1),
(89, 'internet foi feita só pra enganar os outros.\nPorque muita gente não toma cuidado com o que compartilha ou clica, e os golpistas aproveitam isso.\nPorque é impossível proteger qualquer dado online.', 62, 0),
(90, 'polícia, e tomar cuidado pra não cair de novo.\nFicar na sua e não contar pra ninguém, porque isso acontece com todo mundo.\nTentar resolver sozinho e continuar usando a conta normalmente.\nFazer outro perfil na internet e seguir a vida, porque já era.', 63, 1),
(91, 'melhorar a comunicação online.\nAjudar as empresas a venderem mais produtos usando os dados dos clientes.\nFazer concursos e dar prêmios para quem compartilha menos dados pessoais.\nCuidar para que empresas e governos tratem nossos dados pessoais de forma segura e responsável.', 64, 0),
(92, 'pessoa dona dos seus próprios dados, como nome, CPF, endereço, fotos e outros dados pessoais.\nÉ quando alguém coleta seus dados e usa para te oferecer descontos.\nÉ ser o dono do site ou app onde os dados são usados.', 65, 0),
(93, 'ver, corrigir, atualizar ou até apagar seus dados pessoais, sempre que quiser.\nSó pode pedir alguma coisa se for pagar por isso.\nNão tem nenhum direito, a empresa faz o que quiser com seus dados.\nSeus dados pessoais passam a ser deles, você não pode fazer nada.', 66, 1),
(94, 'disso.\nSolicitar gratuitamente a correção, atualização ou complemento\nCriar uma nova conta para mudar os dados.\nNada, esses dados são fixos e não podem ser mudados.', 67, 0),
(95, 'alheia sem autorização.\nÉ o direito de manter seus dados pessoais protegidos e escolher com quem compartilhar.\nÉ a liberdade de falar mal dos outros sem ser punido.', 68, 0),
(96, 'IA faz, por que eu não usaria?\nSe for pra facilitar minha vida, óbvio!\nMelhor entender e usar do jeito certo. A IA ajuda, mas não faz tudo.\nNão preciso disso, meu cérebro já é uma IA natural.', 69, 0),
(97, 'imagem.\nCompartilhar com outras pessoas pra viralizar.\nIgnorar, não tem nada a ver comigo.\nConversar com ele ou avisar um adulto que possa resolver.', 70, 0),
(98, 'usar como prova, mesmo sem saber se é verdadeiro.\nEnvio pro grupo e digo “olha isso!!! Kkkkk”.\nCompartilho logo antes que apaguem.', 71, 1),
(99, 'alta do que discutir.\nConversar com o grupo pra todo mundo realmente entender o conteúdo\nFazer o mesmo e usar IA também, afinal tá todo mundo fazendo.\nPostar o trabalho pronto no grupo da turma como \"modelo\".', 72, 0),
(100, 'No máximo, alguém vai rir e esquecer depois.\nPode causar problemas sérios, como destruir a reputação de alguém.\nSó afeta quem não entende de tecnologia.', 73, 0),
(101, 'se sabe quem é a pessoa atrás da tela então só jogo com quem conheço.\nNão importa, depois eu bloqueio se for estranho.\nTô dentro, adiciono geral!', 74, 0),
(102, 'zoeira e xingar de volta.\nDenunciar o comportamento na plataforma do jogo.\nSilenciar, se não for comigo to nem ai.\nGravar e postar nas redes só pra mostrar como a pessoa foi tóxica.', 75, 0),
(103, 'pra ver se consegue ainda mais vantagem.\nAceita, é só um jogo e ganhar é o que importa.\nAceita e depois tenta enganar a pessoa de volta.\nRecusa e denuncia, porque isso pode ser um golpe ou uma tentativa de manipulação', 76, 0),
(104, 'todo mundo saber quem você é\nContar onde mora caso alguém pergunte, pra fazer amizade.\nMandar seu número de celular no chat pra jogar por voz.', 77, 1),
(105, 'conversar mais fácil.\nUsar a mesma senha das redes sociais no jogo, pra lembrar fácil.\nColocar o nome da sua escola no seu perfil pra achar colegas.\nUsar senhas seguras e evitar passar informações pessoais.', 78, 0),
(106, 'não perder o foco nas minhas metas.\nCom certeza, meu dedo até já sabe o caminho sozinho\nSó paro quando a bateria acaba (ou minha mãe tira o Wi-Fi)\nAs vezes nem percebo que estou a tanto tempo no celular.', 79, 1),
(107, 'Pode ser um alerta de que você está ficando dependente da tecnologia, tem que ficar de olho.\nSó porque você gosta muito, não é nada demais.', 80, 0),
(108, 'água.\nDizem que se você não consegue encostar seus dois pés quer dizer isso.', 81, 0),
(109, 'jogar mais.\nUsar truques para ficar acordado a noite toda jogando.', 82, 0),
(110, '”\n“Fico no celular até altas horas porque amanhã não tenho aula.”\n“Não preciso de pausas, a internet é minha vida.”\n“Uso a internet para estudar, jogar, mas sempre saio pra me exercitar e ficar com minha família”', 83, 0),
(111, 'viralizar, já tô preparando o vídeo!\nSó entro em desafio se não colocar minha vida em risco.\nQuanto mais insano, mais like. To dentro!\nHoje em dia tem que ser assim, então vou sim!', 84, 0),
(112, 'a plataforma e incentivo os meus amigos a fazerem o mesmo.\nCompartilho para geral ver.\nIgnorar porque não é meu problema!\nCrio conteúdos parecidos para mostrar que não tenho medo.', 85, 1),
(113, 'internet.\nSó se for um amigo, ai sim pode.', 86, 0),
(114, 'favor do caos.\nNão, prefiro conteúdos que me façam bem, denuncio na hora!\nSe for um amigo meu fazendo eu to la apoiando-o em tudo.\nAcho muito engraçado, não consigo deixar de ver.', 87, 0),
(115, 'vida da pessoa em risco.\nSim, eu jogo a ideia e se ela aceitar, é problema dela.\nSe for de zoeira, tudo bem, não da em nada.\nSó se for um desafio famoso.', 88, 1),
(116, 'pode mais\nTentando estragar a diversão da galera\nCumprindo a lei pra proteger crianças e adolescentes\nSó querem que a gente pague pra liberar depois.', 89, 0),
(117, 'lei, porque incentiva vício e gasto sem controle.\nÉ só jogo, não tem problema nenhum.\nMelhor ainda, dá pra gastar a mesada sem pensar.\nSe é divertido, tá valendo.', 90, 1),
(118, 'complicar e ninguém conseguir entrar.\nPorque elas querem coletar mais dados.\nSó serve pra gastar tempo\nPra garantir que crianças e adolescentes não acessem o que não deveriam.', 91, 0),
(119, 'um puxão de orelha.', 92, 0),
(120, 'de dados e privacidade, e isso se conecta com a proteção de menores.\nPra inventar burocracia nova.\nPra ganhar mais likes no Insta oficial.', 93, 0),
(121, 'um fala o que quer\nApagar só se alguém reclamar.\nEsconder mas não excluir, pra não dar trabalho.', 94, 1),
(122, 'proteção garantida pelo ECA Digital.\nÉ só diversão, ninguém liga.', 95, 0),
(123, 'assustar a galera e perder usuário.\nÉ só pra inglês ler.\nPra colocar texto chato que ninguém lê\nPra dar transparência e ajudar famílias a decidir melhor.', 96, 0),
(124, 'evitar uso excessivo que pode causar dependência e prejudicar a vida real.\nPra estragar a diversão de quem joga muito\nPra todo mundo dormir cedo.\nPra acabar com os games.', 97, 1),
(125, 'Melhor, aí posso comprar o que eu quiser.\nÉ ok só pra ver umas paradas.', 98, 0),
(126, 'Contar a verdade ou pedir ajuda ao responsável.\nCadastro fake é normal, relaxa.', 99, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta_usuario`
--

CREATE TABLE `resposta_usuario` (
  `idresposta_usuario` bigint(20) UNSIGNED NOT NULL,
  `resposta_idresposta` int(11) NOT NULL,
  `sessao_idsessao` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `pergunta_idpergunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessao`
--

CREATE TABLE `sessao` (
  `idsessao` bigint(20) UNSIGNED NOT NULL,
  `pergunta_idpergunta` int(11) NOT NULL,
  `datahora_inicio` datetime NOT NULL,
  `usuario_idusuario` int(10) NOT NULL,
  `datahora_fim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `sessao`
--

INSERT INTO `sessao` (`idsessao`, `pergunta_idpergunta`, `datahora_inicio`, `usuario_idusuario`, `datahora_fim`) VALUES
(1, 0, '2025-05-28 11:31:20', 1, '0000-00-00 00:00:00'),
(2, 0, '2025-05-28 11:31:43', 1, '0000-00-00 00:00:00'),
(3, 0, '2025-05-28 11:32:23', 1, '0000-00-00 00:00:00'),
(4, 0, '2025-05-28 11:35:30', 1, '0000-00-00 00:00:00'),
(5, 0, '2025-05-28 11:41:02', 1, '0000-00-00 00:00:00'),
(6, 0, '2025-05-28 11:42:02', 1, '0000-00-00 00:00:00'),
(7, 0, '2025-05-28 11:45:06', 1, '0000-00-00 00:00:00'),
(8, 0, '2025-05-29 00:39:44', 1, '0000-00-00 00:00:00'),
(9, 0, '2025-06-04 10:29:28', 1, '0000-00-00 00:00:00'),
(10, 0, '2025-06-04 10:29:55', 1, '2025-06-04 10:29:55'),
(11, 0, '2025-06-04 10:30:22', 1, '2025-06-04 10:30:22'),
(12, 0, '2025-06-04 10:39:28', 1, '2025-06-04 10:39:28'),
(13, 0, '2025-06-04 10:40:34', 1, '2025-06-04 10:40:34'),
(14, 0, '2025-06-04 10:44:21', 1, '2025-06-04 10:44:21'),
(15, 0, '2025-06-04 10:48:34', 1, '2025-06-04 10:48:34'),
(16, 0, '2025-06-04 10:52:05', 1, '2025-06-04 10:52:05'),
(17, 0, '2025-06-04 10:52:39', 1, '2025-06-04 10:52:39'),
(18, 0, '2025-06-04 10:56:44', 1, '2025-06-04 10:56:44'),
(19, 0, '2025-06-04 10:56:59', 1, '2025-06-04 10:56:59'),
(20, 0, '2025-06-04 10:57:29', 1, '2025-06-04 10:57:29'),
(21, 0, '2025-06-04 10:58:46', 1, '2025-06-04 10:58:46'),
(22, 0, '2025-06-04 11:07:48', 1, '2025-06-04 11:07:48'),
(23, 0, '2025-06-04 11:08:57', 1, '2025-06-04 11:08:57'),
(24, 0, '2025-06-04 11:14:30', 1, '2025-06-04 11:14:30'),
(25, 0, '2025-06-04 11:22:56', 1, '2025-06-04 11:22:56'),
(26, 0, '2025-06-04 11:25:31', 1, '2025-06-04 11:25:31'),
(27, 0, '2025-06-11 09:54:53', 1, '2025-06-11 09:54:53'),
(28, 0, '2025-06-11 10:50:11', 1, '2025-06-11 10:50:11'),
(29, 0, '2025-06-11 11:08:55', 1, '2025-06-11 11:08:55'),
(30, 0, '2025-06-11 11:09:43', 1, '2025-06-11 11:09:43'),
(31, 0, '2025-06-11 11:13:29', 1, '2025-06-11 11:13:29'),
(32, 0, '2025-06-11 11:13:55', 1, '2025-06-11 11:13:55'),
(33, 0, '2025-06-11 11:15:02', 1, '2025-06-11 11:15:02'),
(34, 0, '2025-06-11 11:20:35', 1, '2025-06-11 11:20:35'),
(35, 0, '2025-06-11 11:21:01', 1, '2025-06-11 11:21:01'),
(36, 0, '2025-06-13 10:18:01', 1, '2025-06-13 10:18:01'),
(37, 0, '2025-06-13 10:18:51', 1, '2025-06-13 10:18:51'),
(38, 0, '2025-06-13 10:21:33', 1, '2025-06-13 10:21:33'),
(39, 0, '2025-06-13 10:26:40', 1, '2025-06-13 10:26:40'),
(40, 0, '2025-06-13 10:29:10', 1, '2025-06-13 10:29:10'),
(41, 0, '2025-06-13 10:32:33', 1, '2025-06-13 10:32:33'),
(42, 0, '2025-06-13 10:33:37', 1, '2025-06-13 10:33:37'),
(43, 0, '2025-06-13 10:35:02', 1, '2025-06-13 10:35:02'),
(44, 0, '2025-06-13 10:41:15', 1, '2025-06-13 10:41:15'),
(45, 0, '2025-06-13 10:41:27', 1, '2025-06-13 10:41:27'),
(46, 0, '2025-06-13 10:43:53', 1, '2025-06-13 10:43:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema`
--

CREATE TABLE `tema` (
  `idtema` bigint(20) UNSIGNED NOT NULL,
  `tema_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `tema`
--

INSERT INTO `tema` (`idtema`, `tema_nome`) VALUES
(1, 'Segurança'),
(2, 'hora da verdade\n\nsegurança da informação'),
(3, 'hora da verdade\n\nstalking'),
(4, 'hora da verdade\n\nuso responsável'),
(5, 'hora da verdade\n\ncomportamento seguro'),
(6, 'Sabichão\n\nuso responsável'),
(7, 'desafio\n\ncomportamento seguro'),
(8, 'sabichão\n\ncomportamento seguro'),
(9, 'hora da verdade\n\nproteção de dados'),
(10, 'Sabichão\n\nSegurança cibernética'),
(11, 'Deu ruim\n\nComportamento seguro'),
(12, 'Desafio\n\nCyberbullying'),
(13, 'sabichão\n\ncyberbullying'),
(14, 'sabichão\n\nstalking'),
(15, 'sabichão\n\nproteção de dados'),
(16, 'deu ruim\n\nphishing'),
(17, 'deu ruim\n\nproteção de dados'),
(18, 'deu ruim \n \nstalking'),
(19, 'desafio\n\nproteção de dados'),
(20, 'Hora da verdade \n\nuso responsável da IA'),
(21, 'Hora da verdade\n\nuso responsável da IA'),
(22, 'Desafio \n\nuso responsável da IA'),
(23, 'Sabichão\n\nuso responsável da IA'),
(24, 'Hora da verdade\n\nperigos em jogos online'),
(25, 'Deu ruim \n\nperigos em jogos online'),
(26, 'Desafio\n\nperigos em jogos online'),
(27, 'Sabichão\n\nperigos em jogos online'),
(28, 'Hora da verdade\n\nCiberadição'),
(29, 'Desafio\n\nCiberadição'),
(30, 'Sabichão\n\nCiberadição'),
(31, 'Desafio\n\npatostreaming comportamento inseguro'),
(32, 'Sabichão \nPatostreamingcomportamento inseguro'),
(33, 'Hora da verdade\n\npatostreaming comportamento inseg'),
(34, 'Deu ruim \n\npatostreaming comportamento inseguro'),
(35, 'ECA Digital');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` bigint(20) UNSIGNED NOT NULL,
  `apelido_usuario` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `apelido_usuario`) VALUES
(1, 'raposaverde0001');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`idpergunta`),
  ADD UNIQUE KEY `idpergunta` (`idpergunta`);

--
-- Índices para tabela `pontuacao`
--
ALTER TABLE `pontuacao`
  ADD PRIMARY KEY (`idpontuacao`),
  ADD UNIQUE KEY `idpontuacao` (`idpontuacao`);

--
-- Índices para tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`idresposta`),
  ADD UNIQUE KEY `idresposta` (`idresposta`);

--
-- Índices para tabela `resposta_usuario`
--
ALTER TABLE `resposta_usuario`
  ADD PRIMARY KEY (`idresposta_usuario`),
  ADD UNIQUE KEY `idresposta_usuario` (`idresposta_usuario`);

--
-- Índices para tabela `sessao`
--
ALTER TABLE `sessao`
  ADD PRIMARY KEY (`idsessao`),
  ADD UNIQUE KEY `idsessao` (`idsessao`);

--
-- Índices para tabela `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`idtema`),
  ADD UNIQUE KEY `idtema` (`idtema`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `idusuario` (`idusuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `idpergunta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `pontuacao`
--
ALTER TABLE `pontuacao`
  MODIFY `idpontuacao` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `idresposta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de tabela `resposta_usuario`
--
ALTER TABLE `resposta_usuario`
  MODIFY `idresposta_usuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sessao`
--
ALTER TABLE `sessao`
  MODIFY `idsessao` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `tema`
--
ALTER TABLE `tema`
  MODIFY `idtema` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
