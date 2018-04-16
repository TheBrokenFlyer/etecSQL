-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Abr-2018 às 01:49
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
-- Database: `eeee`
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
  `client_phone` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`id_client`, `client_name`, `client_doc`, `client_address`, `client_phone`) VALUES
(1, 'dummy0', 0, 'end_reeeeeeeeeeeeeeeee0', '000'),
(2, 'dummy1', 1, 'end_reeeeeeeeeeeeeeeee1', '001'),
(3, 'dummy2', 2, 'end_reeeeeeeeeeeeeeeee2', '002'),
(4, 'dummy3', 3, 'end_reeeeeeeeeeeeeeeee3', '003'),
(5, 'dummy4', 4, 'end_reeeeeeeeeeeeeeeee4', '004'),
(6, 'dummy5', 5, 'end_reeeeeeeeeeeeeeeee5', '005');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_employees`
--

CREATE TABLE `tb_employees` (
  `id_employee` int(11) NOT NULL,
  `employee_name` int(11) DEFAULT NULL,
  `employee_doc` int(11) DEFAULT NULL,
  `employee_address` varchar(255) DEFAULT NULL,
  `employee_phone` varchar(16) DEFAULT NULL,
  `employee_specialty` int(16) DEFAULT NULL,
  `employee_cargo` int(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_relation_employee-specialty`
--

CREATE TABLE `tb_relation_employee-specialty` (
  `id_client` int(11) DEFAULT NULL,
  `id_vehicle` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_relation_employee-specialty`
--

INSERT INTO `tb_relation_employee-specialty` (`id_client`, `id_vehicle`) VALUES
(1, 1),
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(3, 5),
(5, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vehicles`
--

CREATE TABLE `tb_vehicles` (
  `id_vehicle` int(11) NOT NULL,
  `vehicle_brand` varchar(16) DEFAULT NULL,
  `vehicle_year` int(4) DEFAULT NULL,
  `vehicle_model` varchar(16) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_vehicles`
--

INSERT INTO `tb_vehicles` (`id_vehicle`, `vehicle_brand`, `vehicle_year`, `vehicle_model`) VALUES
(1, '00', 1, 'A'),
(2, '00', 2, 'B'),
(3, '01', 2, 'A'),
(4, '01', 4, 'B'),
(5, '02', 3, 'A'),
(6, '02', 4, 'B');

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
-- Indexes for table `tb_vehicles`
--
ALTER TABLE `tb_vehicles`
  ADD PRIMARY KEY (`id_vehicle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_vehicles`
--
ALTER TABLE `tb_vehicles`
  MODIFY `id_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
