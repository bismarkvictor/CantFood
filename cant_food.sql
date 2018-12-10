-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Dez-2018 às 00:00
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cant_food`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `apelido` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cpf` varchar(15) CHARACTER SET utf8 NOT NULL,
  `rg` varchar(15) CHARACTER SET utf8 NOT NULL,
  `endereco` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bairro` varchar(100) CHARACTER SET utf8 NOT NULL,
  `numeroresidencia` int(8) NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `dataCadastro` datetime NOT NULL,
  `dataAtualizacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `customers`
--

INSERT INTO `customers` (`id`, `nome`, `apelido`, `cpf`, `rg`, `endereco`, `bairro`, `numeroresidencia`, `telefone`, `dataCadastro`, `dataAtualizacao`) VALUES
(7, 'Ana Carolina morta', 'Carol', '9999999999', '00099999', 'Rua Y', 'JVT', 156, '84 999938436', '2018-12-05 09:44:07', '2018-12-05 15:09:26'),
(8, 'CristovÃ£o Lima', 'chris', '111111111', '12345', 'Parelhas', 'Parelhas', 16, '84996670447', '2018-12-05 09:54:01', '2018-12-05 09:54:01'),
(9, 'Wesley Morais de AraÃºjo', 'Wesley SafadÃ£o', '12345678909', '123456789', 'Avenida Coronel Martiniano', 'Centro', 7, '84999939079', '2018-12-05 10:10:33', '2018-12-05 10:11:11'),
(10, 'Gabriel Batista ', 'Gabriel', '1234567890', '12345780', 'Maria vera LÃºcia de AraÃºjo', 'Serrote Branco', 100, '996998475', '2018-12-05 10:17:41', '2018-12-05 10:18:38'),
(11, 'JosÃ© FlÃ¡vio da Silva Maia', 'JF', '66677777746', '123452677', 'Rua Francisco Medeiros', 'Recreio', 558723112, '84999234576', '2018-12-05 10:28:58', '2018-12-05 10:28:58'),
(12, 'HÃ©lio Evangelista de Medeiros JÃºnior', 'HÃ©lio', '10404004423', '002839931', 'Rua Rodrigues Alves', 'Boa Passagem', 390, '84991936776', '2018-12-05 10:34:03', '2018-12-05 10:34:03'),
(13, 'Darlan', 'D', '109603456', '358948545', 'Rua de algum lugar', 'Ari', 9988, '84996177962', '2018-12-05 14:30:48', '2018-12-05 14:30:48'),
(14, 'AngÃ©lica Alta', 'Alta', '0Ã§9887654', '789876', 'gsgsgsgsg', 'gsgsgsg', 111, '627272727', '2018-12-05 15:10:03', '2018-12-05 15:10:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `telefone` int(15) NOT NULL,
  `dataCadastro` datetime NOT NULL,
  `dataAtualizacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `dataCadastro`, `dataAtualizacao`) VALUES
(5, 'Amarildo (Quero Notas)', 23456789, '2018-12-05 10:12:37', '2018-12-05 10:12:46'),
(6, 'Ligzarb', 98765431, '2018-12-05 10:19:19', '2018-12-05 10:19:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerente`
--

CREATE TABLE `gerente` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rg` varchar(15) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `telefone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `dataCadastro` datetime NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idProduto` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idPedidos` int(11) NOT NULL,
  `preco` double NOT NULL,
  `dataCompra` datetime NOT NULL,
  `nomeProduto` varchar(255) NOT NULL,
  `quantidade` int(12) NOT NULL,
  `nomeCliente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idProduto`, `idCliente`, `idPedidos`, `preco`, `dataCompra`, `nomeProduto`, `quantidade`, `nomeCliente`) VALUES
(11, 3, 7, 5, '2018-10-01 00:00:00', 'Pasteis', 10, 'Juliana'),
(14, 8, 8, 2, '2018-12-05 00:00:00', 'Pastel de Forno', 1, 'CristovÃ£o Lima'),
(14, 9, 9, 2.5, '2018-12-05 00:00:00', 'Pastel de Forno', 1, 'Wesley Morais de AraÃºjo'),
(15, 10, 10, 3, '2018-12-05 00:00:00', 'Risolli', 2, 'Gabriel Batista '),
(12, 12, 11, 4, '2018-12-05 00:00:00', 'Coxinha', 2, 'HÃ©lio Evangelista de Medeiros JÃºnior'),
(13, 7, 12, 8, '2018-12-05 00:00:00', 'Pastel', 4, 'Ana Carolina'),
(14, 7, 13, 10, '2018-12-05 00:00:00', 'Pastel de Forno', 4, 'Ana Carolina'),
(12, 8, 14, 4, '2018-12-05 00:00:00', 'Coxinha', 2, 'CristovÃ£o Lima'),
(16, 13, 15, 6, '2018-12-05 00:00:00', 'Coca-cola', 3, 'Darlan'),
(14, 14, 16, 2.5, '2018-12-05 00:00:00', 'Pastel de Forno', 1, 'AngÃ©lica Alta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `preco` double NOT NULL,
  `quantidade` int(8) NOT NULL,
  `dataCadastro` datetime NOT NULL,
  `dataAtualizacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `quantidade`, `dataCadastro`, `dataAtualizacao`) VALUES
(12, 'Coxinha', 2, 2, '2018-12-05 09:33:25', '2018-12-05 09:33:25'),
(14, 'Pastel de Forno', 2.5, 5, '2018-12-05 09:54:55', '2018-12-05 10:13:34'),
(15, 'Risolli', 1.5, 3, '2018-12-05 10:20:40', '2018-12-05 10:22:37'),
(16, 'Coca-cola', 2, 50, '2018-12-05 14:32:23', '2018-12-05 14:32:23'),
(17, 'ovo cozido', 1, 1, '2018-12-05 15:10:44', '2018-12-05 15:10:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idPedidos`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gerente`
--
ALTER TABLE `gerente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idPedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
