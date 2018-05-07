-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Maio-2018 às 01:46
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mercado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `cdCliente` int(11) NOT NULL,
  `nmCliente` varchar(200) NOT NULL,
  `dsEndereco` varchar(200) NOT NULL,
  `dtNasc` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`cdCliente`, `nmCliente`, `dsEndereco`, `dtNasc`) VALUES
(1, 'Cliente Um', 'R. Numero Um', '2001-01-01'),
(2, 'Cliente Dois', 'R. Numero Dois', '2002-02-02'),
(3, 'Cliente Três', 'R. Numero Três', '2003-03-03'),
(4, 'Cliente Quatro', 'R. Numero Quatro', '2004-04-04'),
(5, 'Cliente Cinco', 'R. Numero Cinco', '2005-05-05'),
(6, 'Cliente Seis', 'R. Numero Seis', '2006-06-06'),
(7, 'Cliente Sete', 'R. Numero Sete', '2007-07-07'),
(8, 'Cliente Oito', 'R. Numero Oito', '2008-08-08'),
(9, 'Cliente Nove', 'R. Numero Nove', '2009-09-09'),
(10, 'Cliente Dez', 'R. Numero Dez', '2010-10-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos_clientes`
--

CREATE TABLE `tb_produtos_clientes` (
  `cdCompra` int(11) NOT NULL,
  `cdCliente` int(11) NOT NULL,
  `vlCompra` int(32) NOT NULL,
  `dtCompra` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_produtos_clientes`
--

INSERT INTO `tb_produtos_clientes` (`cdCompra`, `cdCliente`, `vlCompra`, `dtCompra`) VALUES
(1, 1, 100, '2001-01-01'),
(2, 1, 200, '2002-02-02'),
(3, 2, 100, '2003-03-03'),
(4, 3, 430, '2004-04-04'),
(5, 4, 600, '2005-05-05'),
(6, 5, 150, '2006-06-06'),
(7, 5, 100, '2007-07-07'),
(8, 6, 830, '2008-08-08'),
(9, 8, 220, '2009-09-09'),
(10, 10, 450, '2010-10-10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
