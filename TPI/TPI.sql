-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Mar-2018 às 00:12
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
-- Database: `h`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id_client` int(11) NOT NULL,
  `client_name` varchar(32) DEFAULT NULL,
  `client_doc` int(11) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `client_phone` int(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_employees`
--

CREATE TABLE `tb_employees` (
  `id_employee` int(11) NOT NULL,
  `employee_name` int(11) DEFAULT NULL,
  `employee_doc` int(11) DEFAULT NULL,
  `employee_address` varchar(255) DEFAULT NULL,
  `employee_phone` int(16) DEFAULT NULL,
  `employee_specialty` int(16) DEFAULT NULL,
  `employee_cargo` int(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_exams`
--

CREATE TABLE `tb_exams` (
  `id_exam` int(11) NOT NULL,
  `id_employee_reg` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL,
  `id_specialty` int(11) DEFAULT NULL,
  `exam_date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_relation_employee-specialty`
--

CREATE TABLE `tb_relation_employee-specialty` (
  `id_employee` int(11) DEFAULT NULL,
  `id_specialty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_specialties`
--

CREATE TABLE `tb_specialties` (
  `id_specialty` int(11) NOT NULL,
  `specialty_desc` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `client_doc` (`client_doc`);

--
-- Indexes for table `tb_employees`
--
ALTER TABLE `tb_employees`
  ADD PRIMARY KEY (`id_employee`) USING BTREE,
  ADD UNIQUE KEY `employee_doc` (`employee_doc`) USING BTREE;

--
-- Indexes for table `tb_exams`
--
ALTER TABLE `tb_exams`
  ADD PRIMARY KEY (`id_exam`),
  ADD KEY `id_employee_reg` (`id_employee_reg`);

--
-- Indexes for table `tb_relation_employee-specialty`
--
ALTER TABLE `tb_relation_employee-specialty`
  ADD UNIQUE KEY `id_employee` (`id_employee`),
  ADD KEY `id_specialty` (`id_specialty`);

--
-- Indexes for table `tb_specialties`
--
ALTER TABLE `tb_specialties`
  ADD PRIMARY KEY (`id_specialty`),
  ADD UNIQUE KEY `specialty_desc` (`specialty_desc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_exams`
--
ALTER TABLE `tb_exams`
  MODIFY `id_exam` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_specialties`
--
ALTER TABLE `tb_specialties`
  MODIFY `id_specialty` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
