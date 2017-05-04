-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2017 at 11:10 PM
-- Server version: 5.6.23-log
-- PHP Version: 5.6.5

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Table structure for table `avila_mentors`
--

CREATE TABLE IF NOT EXISTS `avila_mentors` (
  `id_mentors` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description_short` mediumtext NOT NULL,
  `description` text NOT NULL,
  `image` varchar(30) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `avila_mentors`
--

INSERT INTO `avila_mentors` (`id_mentors`, `name`, `title`, `description_short`, `description`, `image`, `user`, `pass`) VALUES(1, 'Joana Beja', 'especial mentor', 'ex-NTC e atualmente a terminar o Mestrado em Design, a Joana não esconde que o seu piso preferido do CCCI é o do meio.', 'ex-NTC e atualmente a terminar o Mestrado em Design, a Joana não esconde que o seu piso preferido do CCCI é o do meio.<br>Se por um lado a comunicação lhe está no sangue, por outro é a programação que a desafia, e junta-se à AVILA Crew para ajudar na luta contra o insucesso de Lab4.', 'specialmentor_joana.png', 'joana', 'beja');
INSERT INTO `avila_mentors` (`id_mentors`, `name`, `title`, `description_short`, `description`, `image`, `user`, `pass`) VALUES(2, 'Guilherme Cabral', 'especial mentor', 'Apesar de cobiçado por colossos da tecnologia mundial, o Guilherme é atualmente sysadmin e backend developer no SAPO Campus.', 'Apesar de cobiçado por colossos da tecnologia mundial, o Guilherme é atualmente sysadmin e backend developer no SAPO Campus.<br>Ex-NTC e ex-MCMM, faz parte da AVILA Crew, sendo uma das pessoas que te pode ajudar a conhecer tecnologias e ferramentas para além do que é lecionado em Lab4.', 'specialmentor_gui.png', 'guilherme', 'cabral');
INSERT INTO `avila_mentors` (`id_mentors`, `name`, `title`, `description_short`, `description`, `image`, `user`, `pass`) VALUES(3, 'Rita Lopes', 'especial mentor', 'No último ano da licenciatura em NTC, a Rita assume preferência pelo mundo da programação. A título de curiosidade, é o desenvolvimento de jogos que mais a desafia apesar de assumir o seu péssimo jeito para os jogar!', 'No último ano da licenciatura em NTC, a Rita assume preferência pelo mundo da programação. A título de curiosidade, é o desenvolvimento de jogos que mais a desafia apesar de assumir o seu péssimo jeito para os jogar!<br>Junta-se à AVILA Crew para partilhar este gosto e demonstrar que Lab4 pode ser uma UC bem simpática.', 'specialmentor_rita.png', 'rita', 'lopes');

-- --------------------------------------------------------

--
-- Table structure for table `avila_sessions`
--

CREATE TABLE IF NOT EXISTS `avila_sessions` (
  `id_sessions` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(30) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `avila_sessions`
--

INSERT INTO `avila_sessions` (`id_sessions`, `title`, `date`, `image`, `description`) VALUES(1, 'Install Party', '2017-02-21', 'Install_Party.png', 'A AVILA Crew apresenta-te a primeira AVILA Session – a Install Party!\r\nDia 21 de Fevereiro, junta-te a nós pelas 21h. O local é secreto… (não queiras saber tudo já!). Fugindo do ambiente de aula tradicional, junta-te a nós - pessoas que pensam como tu, que já tiveram as mesmas dificuldades e que, melhor que ninguém, percebem pelo que estás a passar. Depois disto, só é vitima de Lab4 quem quer! ;)');
INSERT INTO `avila_sessions` (`id_sessions`, `title`, `date`, `image`, `description`) VALUES(2, 'KILL the VIRUS', '2017-03-13', 'KILL_VIRUS.png', 'O Vírus SQL propagou-se pelo CCCI e preparamo-nos para reunir esforços em busca do antídoto. Ao que tudo indica, ele estará algures pelo CCCI já na próxima segunda-feira!\r\nE tu aí que estás em Lab4, a AVILA Crew deixa-te um conselho: o melhor é vires à AVILA Session - KILL THE VIRUS, não vás tu começar a sentir os efeitos secundários do Vírus na véspera do teste...');
INSERT INTO `avila_sessions` (`id_sessions`, `title`, `date`, `image`, `description`) VALUES(3, 'N-Dimensinal VIRUS', '2017-04-01', 'N_Dimensinal_VIRUS.png', 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.');
INSERT INTO `avila_sessions` (`id_sessions`, `title`, `date`, `image`, `description`) VALUES(4, 'Connect To ME', '2017-04-21', 'Connect_ME.png', 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum.');
INSERT INTO `avila_sessions` (`id_sessions`, `title`, `date`, `image`, `description`) VALUES(5, 'Security Party', '2017-05-05', 'Security_Party.png', 'Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Vestibulum id ligula porta felis euismod semper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avila_mentors`
--
ALTER TABLE `avila_mentors`
  ADD PRIMARY KEY (`id_mentors`);

--
-- Indexes for table `avila_sessions`
--
ALTER TABLE `avila_sessions`
  ADD PRIMARY KEY (`id_sessions`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avila_mentors`
--
ALTER TABLE `avila_mentors`
  MODIFY `id_mentors` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `avila_sessions`
--
ALTER TABLE `avila_sessions`
  MODIFY `id_sessions` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
