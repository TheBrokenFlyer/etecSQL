-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Maio-2018 às 00:37
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
-- Database: `dt_sql`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clients`
--

CREATE TABLE `tb_clients` (
  `id_client` int(11) NOT NULL,
  `client_name` varchar(32) DEFAULT NULL,
  `client_birthday` date DEFAULT NULL,
  `client_doc` varchar(9) DEFAULT NULL,
  `client_location` varchar(128) DEFAULT NULL,
  `client_number` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_employee`
--

CREATE TABLE `tb_employee` (
  `id_employee` int(11) NOT NULL,
  `employee_name` varchar(32) DEFAULT NULL,
  `employee_birthday` date DEFAULT NULL,
  `employee_doc` varchar(9) DEFAULT NULL,
  `employee_location` varchar(128) DEFAULT NULL,
  `employee_number` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_clients`
--
ALTER TABLE `tb_clients`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `employee_doc` (`client_doc`);

--
-- Indexes for table `tb_employee`
--
ALTER TABLE `tb_employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD UNIQUE KEY `employee_doc` (`employee_doc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_clients`
--
ALTER TABLE `tb_clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_employee`
--
ALTER TABLE `tb_employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
