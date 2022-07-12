-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jul-2022 às 04:22
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moedas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `catalogo`
--

CREATE TABLE `catalogo` (
  `catcod` int(11) NOT NULL,
  `codpai` int(11) DEFAULT NULL,
  `catfabricacao` varchar(50) DEFAULT NULL,
  `catdat_emissao` date DEFAULT NULL,
  `catvalor` double DEFAULT NULL,
  `codcom` int(11) DEFAULT NULL,
  `cattema` varchar(50) DEFAULT NULL,
  `codcon` int(11) DEFAULT NULL,
  `catdimensao` decimal(10,0) DEFAULT NULL,
  `catpeso` decimal(10,0) DEFAULT NULL,
  `catdes_anverso` varchar(50) DEFAULT NULL,
  `catdes_verso` varchar(50) DEFAULT NULL,
  `catleg_anverso` varchar(50) DEFAULT NULL,
  `catleg_verso` varchar(50) DEFAULT NULL,
  `catdat_compra` date DEFAULT NULL,
  `catpre_compra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `composicoes`
--

CREATE TABLE `composicoes` (
  `comcod` int(11) NOT NULL,
  `comnome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `composicoes`
--

INSERT INTO `composicoes` (`comcod`, `comnome`) VALUES
(1, 'Cobre'),
(2, 'Ouro'),
(3, 'Prata');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conservacao`
--

CREATE TABLE `conservacao` (
  `concod` int(11) NOT NULL,
  `connome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conservacao`
--

INSERT INTO `conservacao` (`concod`, `connome`) VALUES
(1, 'Ótimo'),
(2, 'Bom'),
(3, 'Regular'),
(4, 'Péssimo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paises`
--

CREATE TABLE `paises` (
  `paicod` int(11) NOT NULL,
  `painome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `paises`
--

INSERT INTO `paises` (`paicod`, `painome`) VALUES
(1, 'Afeganistão'),
(2, 'África do Sul'),
(3, 'Albânia'),
(4, 'Alemanha'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Antiga e Barbuda'),
(8, 'Arábia Saudita'),
(9, 'Argélia'),
(10, 'Argentina'),
(11, 'Arménia'),
(12, 'Austrália'),
(13, 'Áustria'),
(14, 'Azerbaijão'),
(15, 'Bahamas'),
(16, 'Bangladexe'),
(17, 'Barbados'),
(18, 'Barém'),
(19, 'Bélgica'),
(20, 'Belize'),
(21, 'Benim'),
(22, 'Bielorrússia'),
(23, 'Bolívia'),
(24, 'Bósnia e Herzegovina'),
(25, 'Botsuana'),
(26, 'Brasil'),
(27, 'Brunei'),
(28, 'Bulgária'),
(29, 'Burquina Faso'),
(30, 'Burúndi'),
(31, 'Butão'),
(32, 'Cabo Verde'),
(33, 'Camarões'),
(34, 'Camboja'),
(35, 'Canadá'),
(36, 'Catar'),
(37, 'Cazaquistão'),
(38, 'Chade'),
(39, 'Chile'),
(40, 'China'),
(41, 'Chipre'),
(42, 'Colômbia'),
(43, 'Comores'),
(44, 'Congo-Brazzaville'),
(45, 'Coreia do Norte'),
(46, 'Coreia do Sul'),
(47, 'Cosovo'),
(48, 'Costa do Marfim'),
(49, 'Costa Rica'),
(50, 'Croácia'),
(51, 'Cuaite'),
(52, 'Cuba'),
(53, 'Dinamarca'),
(54, 'Dominica'),
(55, 'Egito'),
(56, 'Emirados Árabes Unidos'),
(57, 'Equador'),
(58, 'Eritreia'),
(59, 'Eslováquia'),
(60, 'Eslovénia'),
(61, 'Espanha'),
(62, 'Essuatíni'),
(63, 'Estado da Palestina'),
(64, 'Estados Unidos'),
(65, 'Estónia'),
(66, 'Etiópia'),
(67, 'Fiji'),
(68, 'Filipinas'),
(69, 'Finlândia'),
(70, 'França'),
(71, 'Gabão'),
(72, 'Gâmbia'),
(73, 'Gana'),
(74, 'Geórgia'),
(75, 'Granada'),
(76, 'Grécia'),
(77, 'Guatemala'),
(78, 'Guiana'),
(79, 'Guiné'),
(80, 'Guiné Equatorial'),
(81, 'Guiné-Bissau'),
(82, 'Haiti'),
(83, 'Honduras'),
(84, 'Hungria'),
(85, 'Iémen'),
(86, 'Ilhas Marechal'),
(87, 'Índia'),
(88, 'Indonésia'),
(89, 'Irão'),
(90, 'Iraque'),
(91, 'Irlanda'),
(92, 'Islândia'),
(93, 'Israel'),
(94, 'Itália'),
(95, 'Jamaica'),
(96, 'Japão'),
(97, 'Jibuti'),
(98, 'Jordânia'),
(99, 'Laus'),
(100, 'Lesoto'),
(101, 'Letónia'),
(102, 'Líbano'),
(103, 'Libéria'),
(104, 'Líbia'),
(105, 'Listenstaine'),
(106, 'Lituânia'),
(107, 'Luxemburgo'),
(108, 'Macedónia do Norte'),
(109, 'Madagáscar'),
(110, 'Malásia'),
(111, 'Maláui'),
(112, 'Maldivas'),
(113, 'Mali'),
(114, 'Malta'),
(115, 'Marrocos'),
(116, 'Maurícia'),
(117, 'Mauritânia'),
(118, 'México'),
(119, 'Mianmar'),
(120, 'Micronésia'),
(121, 'Moçambique'),
(122, 'Moldávia'),
(123, 'Mónaco'),
(124, 'Mongólia'),
(125, 'Montenegro'),
(126, 'Namíbia'),
(127, 'Nauru'),
(128, 'Nepal'),
(129, 'Nicarágua'),
(130, 'Níger'),
(131, 'Nigéria'),
(132, 'Noruega'),
(133, 'Nova Zelândia'),
(134, 'Omã'),
(135, 'Países Baixos'),
(136, 'Palau'),
(137, 'Panamá'),
(138, 'Papua Nova Guiné'),
(139, 'Paquistão'),
(140, 'Paraguai'),
(141, 'Peru'),
(142, 'Polónia'),
(143, 'Portugal'),
(144, 'Quénia'),
(145, 'Quirguistão'),
(146, 'Quiribáti'),
(147, 'Reino Unido'),
(148, 'República Centro-Africana'),
(149, 'República Checa'),
(150, 'República Democrática do Congo'),
(151, 'República Dominicana'),
(152, 'Roménia'),
(153, 'Ruanda'),
(154, 'Rússia'),
(155, 'Salomão'),
(156, 'Salvador'),
(157, 'Samoa'),
(158, 'Santa Lúcia'),
(159, 'São Cristóvão e Neves'),
(160, 'São Marinho'),
(161, 'São Tomé e Príncipe'),
(162, 'São Vicente e Granadinas'),
(163, 'Seicheles'),
(164, 'Senegal'),
(165, 'Serra Leoa'),
(166, 'Sérvia'),
(167, 'Singapura'),
(168, 'Síria'),
(169, 'Somália'),
(170, 'Sri Lanca'),
(171, 'Sudão'),
(172, 'Sudão do Sul'),
(173, 'Suécia'),
(174, 'Suíça'),
(175, 'Suriname'),
(176, 'Tailândia'),
(177, 'Taiuã'),
(178, 'Tajiquistão'),
(179, 'Tanzânia'),
(180, 'Timor-Leste'),
(181, 'Togo'),
(182, 'Tonga'),
(183, 'Trindade e Tobago'),
(184, 'Tunísia'),
(185, 'Turcomenistão'),
(186, 'Turquia'),
(187, 'Tuvalu'),
(188, 'Ucrânia'),
(189, 'Uganda'),
(190, 'Uruguai'),
(191, 'Usbequistão'),
(192, 'Vanuatu'),
(193, 'Vaticano'),
(194, 'Venezuela'),
(195, 'Vietname'),
(196, 'Zâmbia'),
(197, 'Zimbábue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`catcod`),
  ADD KEY `codpai` (`codpai`),
  ADD KEY `codcom` (`codcom`),
  ADD KEY `codcon` (`codcon`);

--
-- Indexes for table `composicoes`
--
ALTER TABLE `composicoes`
  ADD PRIMARY KEY (`comcod`);

--
-- Indexes for table `conservacao`
--
ALTER TABLE `conservacao`
  ADD PRIMARY KEY (`concod`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`paicod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `catcod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `composicoes`
--
ALTER TABLE `composicoes`
  MODIFY `comcod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conservacao`
--
ALTER TABLE `conservacao`
  MODIFY `concod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `paicod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `catalogo`
--
ALTER TABLE `catalogo`
  ADD CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`codpai`) REFERENCES `paises` (`paicod`),
  ADD CONSTRAINT `catalogo_ibfk_2` FOREIGN KEY (`codcom`) REFERENCES `composicoes` (`comcod`),
  ADD CONSTRAINT `catalogo_ibfk_3` FOREIGN KEY (`codcon`) REFERENCES `conservacao` (`concod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
