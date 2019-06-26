-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Jun-2019 às 00:26
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `email`, `telefone`, `cidade`) VALUES
(1, 'Abgar Ribeiro Neto', 'abgarribeiro@gmail.com', '(32) 3532-1234', 'Ubá-MG'),
(2, 'Daniel Carlos Soares', 'danielcarlossoares@gmail.com', '(32) 99948-6243', 'Ubá-MG'),
(3, 'Marcos Oliveira', 'marcosoliv@gmail.com', '(32) 9999-99999', 'São Geraldo-MG'),
(4, 'Marcos', 'marcos@marcos.com', '(32) 98899-0322', 'Ubá-MG'),
(5, 'Geraldo', 'geraldo@gmail.com', '(32) 3532-4321', 'Ubá-MG'),
(6, 'Eduardo', 'eduardo@gmail.com', '(32) 3532-9876', 'Tocantins-MG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `fornecedor` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `marca`, `preco`, `fornecedor`, `imagem`, `url`) VALUES
(1, 'Coleção Esmalte Risqué Coloridos 6 Cores', 'Risqué', '17,94', 'Ikesaki', 'esmalte.jpg', 'https://www.ikesaki.com.br/colecao-risque-coloridos-6-cores/p'),
(2, 'Kérastase Cabelos Finos Máscara de Tratamento - 200ml', 'Kérastase', '188,90', 'Epoca Cosméticos', 'mascara-cabelo.jpg', 'https://www.epocacosmeticos.com.br/kerastase-nutritive-masquintense-cabelos-finos-mascara-de-tratamento/p'),
(3, 'Senscience Inner Restore Intensif - Máscara de Reconstrução - 50ml', 'Senscience', '55,80', 'Epoca Cosméticos', 'mascara-capilar.jpg', 'https://www.epocacosmeticos.com.br/inner-restore-intensif-senscience-mascara-reconstrutora/p'),
(4, 'L\'Oréal Paris Elseve Reparação Total Shampoo - 400ml', 'L\'Oréal Paris', '19,00', 'Epoca Cosméticos', 'shampoo.jpg', 'https://www.epocacosmeticos.com.br/elseve-reparacao-total-5-quimica-l-oreal-paris-shampoo/p'),
(5, 'BB Cream Clareador SPF44 Latika 30g - Bege Claro', 'Latika', '49,00', 'Epoca Cosméticos', 'latika.jpg', 'https://www.epocacosmeticos.com.br/bb-cream-clareador-spf44-latika-30g/p'),
(6, 'Batom Matte M·A·C - Yash (Cores)', 'MAC', '71,20', 'Epoca Cosméticos', 'batom-mac.jpg', 'https://www.epocacosmeticos.com.br/batom-matte-m-a-c/p'),
(7, 'Base Em Pó Studio Fix M·A·C - C2', 'MAC', '135,20', 'Epoca Cosméticos', 'base-mac.jpg', 'https://www.epocacosmeticos.com.br/base-em-po-studio-fix-m-a-c/p'),
(8, 'Maleta de Maquiagem Markwins - Professional Colours', 'MARKWINS', '229,00', 'Epoca Cosméticos', 'maleta-markwins.jpg', 'https://www.epocacosmeticos.com.br/maleta-de-maquiagem-markwins-professional-colours/p'),
(9, 'Hidratante Facial Vichy - Mineral 89 - 30ml', 'VICHY', '107,90', 'Epoca Cosméticos', 'hidratante.jpg', 'https://www.epocacosmeticos.com.br/hidratante-facial-vichy-mineral-89/p'),
(10, 'John Frieda Sheer Blonde Go Blonder - Fluido Iluminador - 103ml', 'John Frieda', '89,00', 'Epoca Cosmeticos', 'finalizador.jpg', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) UNSIGNED NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `duracao` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `descricao`, `tipo`, `preco`, `duracao`, `imagem`) VALUES
(1, 'Progressiva', 'Cabelo', '85,00', '120 minutos', 'progressiva.png'),
(2, 'Manicure e Pedicure', 'Unhas', '30,00', '60 Minutos', 'manicure-pedicure.jpg'),
(3, 'Corte de Cabelo', 'Cabelo', '20,00', '30 Minutos', 'cortar-cabelo2.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(111) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `nivel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `usuario`, `senha`, `email`, `status`, `nivel`) VALUES
(1, 'Daniel Carlos Soares', 'daniel', 'daniel', 'danielcarlossoares@gmail.com', 1, 'Administrador'),
(2, 'Marcos Oliveira', 'marcos', 'marcos', 'marcosoliveirasamcro@gmail.com', 1, 'Administrador');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(111) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
