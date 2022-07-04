-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 07:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lpbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_avl`
--

CREATE TABLE `tbl_avl` (
  `avl_id` int(11) NOT NULL,
  `avl` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `off_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_avl`
--

INSERT INTO `tbl_avl` (`avl_id`, `avl`, `def`, `item_id`, `off_id`, `pos_id`) VALUES
(1, 5, 4, 14, 9, 4),
(2, 7, 2, 25, 12, 5),
(3, 9, 6, 31, 11, 2),
(4, 8, 7, 22, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, 'Equipment'),
(2, 'Furniture And Fixture');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_con`
--

CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Working'),
(2, 'Condemed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `off_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(37, 'Ekram', 'Haque', 3, 8, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 1, 1),
(38, 'sariful', 'hasan', 2, 10, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 2, 1),
(39, 'Tariq', 'hasan', 4, 9, 'angel_locsin', '86cd607ba94a7dc9bb3a0baf1d4c1926', 1, 1),
(40, 'Julia', 'Barreto', 2, 2, 'Julia_Barreto', 'c87cac2c4079f860c8e0c8075ba4ae33', 1, 0),
(43, 'abakada', 'gahaaja', 1, 1, '21313_2222', '65ac1cb0d396486f1d2bae5310bddb67', 1, 0),
(44, 'Rub', 'Comedero', 2, 2, 'rub_comedero', '2c346f9df8cba24a0f2e985374ec2cd9', 1, 0),
(48, 'pijush', 'karmakar', 1, 8, 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(49, 'Monsur', 'Hasan', 5, 2, 'monsur_hasan', '62e1fc9daa1498af8603558a0bc1c5af', 2, 1),
(50, 'Elman', 'Shah', 5, 1, 'Elman_shah', 'e09b27af36ea21208a71fbcd52f43a4f', 1, 1),
(51, 'Sarif', 'Ahmed', 5, 11, 'sarif_ahmed', '5ae78a762582d4c59d188b73519fad18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_type`
--

CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_des` text DEFAULT NULL,
  `item_amount` double NOT NULL,
  `item_purdate` date NOT NULL,
  `item_wardate` date DEFAULT NULL,
  `item_value` date DEFAULT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT 4,
  `status_id` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_des`, `item_amount`, `item_purdate`, `item_wardate`, `item_value`, `emp_id`, `cat_id`, `con_id`, `status_id`) VALUES
(5, 'laptop', 'serial', 'model', 'brand ', '', 25500, '2017-01-06', NULL, '0000-00-00', 37, 1, 2, 4),
(10, 'AAA', '123123', '123123', '12321312', '', 123123, '2017-01-11', NULL, '0000-00-00', 37, 1, 2, 4),
(12, '21323', '12321321', '12312312', '12321312', '', 12323, '2017-01-05', NULL, '0000-00-00', 37, 1, 2, 4),
(13, 'Laptop', '343', '32423', 'Toshiba', '', 35000, '2017-01-23', NULL, '0000-00-00', 37, 1, 2, 4),
(14, 'Computer Desk', '34324', '324234423', 'Sofa', '', 3500, '2017-01-24', NULL, '0000-00-00', 37, 2, 2, 4),
(15, 'Mouse ah ah', '3423423', '234234', 'Cdr-king', '', 180, '2017-01-26', NULL, '0000-00-00', 37, 1, 2, 4),
(16, 'BBB', 'BBB', 'BBB', 'BBB', '', 25000, '2017-01-10', NULL, '0000-00-00', 37, 1, 2, 4),
(17, 'CCC', 'CCC', 'CCC', 'CCC', '', 343432, '2017-01-11', NULL, '0000-00-00', 37, 1, 2, 4),
(18, 'Aaa', 'aaa', 'aaaa', 'Aaa', '', 343, '2017-01-24', NULL, '0000-00-00', 37, 1, 2, 4),
(19, 'BBB', 'bbbb', 'bbb', 'BBb', '', 34342, '2017-01-10', NULL, '0000-00-00', 37, 1, 2, 4),
(20, '111', '111', '111', '111', '', 111, '2017-01-17', NULL, '0000-00-00', 37, 1, 2, 4),
(21, '24324', '24234', '435345', 'Brand', '', 34343, '2017-01-19', NULL, '0000-00-00', 37, 2, 2, 4),
(22, '324 Cfgh', '32432', '23423', '23432', '', 23423, '2017-03-08', '2022-05-27', '2025-10-30', 49, 1, 2, 3),
(23, 'Taller Gold', '234234', '234234', 'Artificial T', '', 1, '2017-03-09', '2022-05-24', '2030-11-22', 37, 1, 1, 4),
(24, 'Sip On', ' ', ' ', ' ', '', 34, '2017-03-22', '2022-06-02', '2027-10-22', 39, 1, 1, 4),
(25, 'Dextop Computer', '22213456', '123131445', 'DELL', '', 2, '2022-05-02', '2024-06-19', '0000-00-00', 48, 1, 1, 4),
(26, 'Rfs', '5454', '435435', 'Rtee', '', 2, '2022-05-27', '2022-05-31', '0000-00-00', 51, 1, 1, 4),
(27, 'Monsur Item', '6546', '654', 'Ydy', '', 2, '2022-05-09', '2022-05-11', '0000-00-00', 49, 1, 2, 4),
(30, 'Dell 2', ' ', ' ', ' ', '', 2, '2022-05-02', '2022-05-20', '2026-11-25', 37, 2, 1, 4),
(31, 'Dell 4', '454', '546546546', 'HP', 'tdghrt gtgtgte tegte up to ', 3, '2022-05-04', '2022-05-20', '2022-05-27', 48, 1, 1, 4),
(32, 'Dell 87', '54355', '6553443', 'HP', 'tdghrt gtgtgte tegte up to date', 4, '2022-05-03', '2022-05-26', '2025-06-26', 37, 1, 1, 4),
(33, 'Dell 28', ' ', ' ', ' ', '', 2, '2022-05-02', '2022-05-25', '2022-05-31', 49, 2, 1, 4),
(34, 'Dell 2345', '5454', '654', 'HP', '1tb ssd,8gb ram', 3, '2022-05-02', '2022-06-01', '2022-06-11', 49, 1, 1, 4),
(35, 'Acer E5', '1232', '471', 'Acer', '1tb ssd,8gb ram,DDDR3,L3 cache update', 4, '2022-05-02', '2022-05-20', '2022-05-28', 49, 1, 1, 4),
(36, 'Dell 2222', '565654', '23436', 'HP', 'gtdg', 6, '2022-06-02', '2022-06-11', '2022-06-11', 49, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_status`
--

CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repair'),
(2, 'for transfer'),
(3, 'for condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_off`
--

CREATE TABLE `tbl_off` (
  `off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_off`
--

INSERT INTO `tbl_off` (`off_id`, `off_desc`) VALUES
(1, 'Condrogonj'),
(2, 'Raypur'),
(8, 'Sodor'),
(9, 'Ramgonj'),
(10, 'Vobanigonj'),
(11, 'Komolnogor'),
(12, 'Ramgoti');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'AGM(IT-2)'),
(2, 'AGM(IT-1)'),
(3, 'JE(IT)'),
(4, 'AJE(IT)'),
(5, 'EC'),
(6, 'AGM(Admin)'),
(7, 'AGM(O&M)'),
(8, 'AGM(E&C)'),
(9, 'AGM(Fin-rev)'),
(10, 'AGM(Fin-A/C)'),
(11, 'AGM(M&S)'),
(12, 'Billing supervisor'),
(13, 'Billing Assistant'),
(14, 'AGM(HR)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT 1,
  `req_is_done` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`req_id`, `req_date`, `item_id`, `req_type_id`, `req_status_id`, `req_is_done`) VALUES
(19, '2017-01-01', 14, 1, 2, 1),
(20, '2017-01-01', 14, 1, 2, 1),
(21, '2017-01-01', 10, 1, 2, 1),
(22, '2017-01-01', 14, 1, 2, 1),
(25, '2017-01-01', 10, 1, 2, 1),
(26, '2017-01-01', 14, 2, 3, 1),
(27, '2017-01-01', 13, 3, 2, 1),
(28, '2017-01-01', 15, 1, 2, 1),
(29, '2017-01-01', 14, 1, 3, 1),
(30, '2017-01-01', 10, 1, 3, 1),
(31, '2017-01-01', 13, 1, 2, 1),
(32, '2017-01-01', 14, 1, 2, 1),
(33, '2017-01-01', 15, 3, 3, 1),
(34, '2017-01-01', 10, 1, 2, 1),
(35, '2017-01-01', 13, 3, 3, 1),
(36, '2017-01-05', 14, 1, 2, 1),
(37, '2017-01-05', 15, 3, 2, 1),
(38, '2017-01-06', 13, 3, 3, 1),
(39, '2017-01-06', 13, 1, 2, 1),
(40, '2017-01-06', 15, 3, 2, 1),
(41, '2017-01-08', 10, 1, 3, 1),
(42, '2017-01-10', 14, 1, 3, 1),
(43, '2017-01-10', 10, 1, 3, 1),
(44, '2017-01-10', 10, 3, 3, 1),
(45, '2017-01-10', 14, 3, 2, 1),
(46, '2017-01-10', 13, 3, 2, 1),
(47, '2017-01-10', 16, 3, 2, 1),
(48, '2017-01-10', 17, 3, 2, 1),
(49, '2017-01-10', 5, 3, 3, 1),
(50, '2017-01-10', 18, 3, 2, 1),
(51, '2017-01-10', 19, 3, 3, 1),
(52, '2017-01-10', 20, 3, 3, 1),
(53, '2016-01-10', 20, 3, 2, 1),
(54, '2016-01-10', 12, 3, 3, 1),
(55, '2016-01-10', 10, 3, 3, 1),
(56, '2016-01-10', 20, 3, 3, 1),
(57, '2016-01-10', 20, 3, 3, 1),
(58, '2016-01-10', 20, 3, 3, 1),
(59, '2016-01-10', 20, 3, 2, 1),
(60, '2016-01-10', 12, 3, 3, 1),
(61, '2016-01-10', 10, 3, 3, 1),
(62, '2016-01-10', 18, 3, 3, 1),
(63, '2016-01-10', 12, 3, 2, 1),
(64, '2016-01-10', 10, 3, 2, 1),
(65, '2016-01-10', 18, 3, 2, 1),
(66, '2016-01-10', 16, 3, 2, 1),
(67, '2016-01-10', 19, 3, 2, 1),
(68, '2016-01-10', 17, 3, 2, 1),
(69, '2016-01-10', 14, 1, 3, 1),
(70, '2016-01-10', 15, 1, 3, 1),
(71, '2016-01-10', 14, 1, 2, 1),
(72, '2016-01-10', 5, 1, 2, 1),
(73, '2016-01-10', 15, 1, 2, 1),
(74, '2017-01-18', 21, 1, 2, 1),
(75, '2017-01-18', 14, 3, 2, 1),
(76, '2017-01-24', 21, 1, 2, 1),
(77, '2017-01-24', 21, 3, 3, 1),
(78, '2017-01-24', 21, 3, 2, 1),
(79, '2017-01-24', 5, 1, 2, 1),
(80, '2017-01-24', 15, 3, 2, 1),
(81, '2017-02-15', 5, 1, 2, 1),
(82, '2017-02-15', 5, 1, 2, 1),
(83, '2017-02-15', 5, 3, 3, 1),
(84, '2017-03-07', 5, 1, 2, 1),
(85, '2017-03-07', 13, 3, 2, 1),
(86, '2017-03-08', 5, 1, 2, 1),
(87, '2017-03-08', 5, 3, 2, 1),
(88, '2017-03-08', 23, 3, 3, 1),
(89, '2017-03-08', 23, 1, 2, 1),
(90, '2017-03-08', 23, 3, 3, 1),
(91, '2017-03-12', 23, 2, 2, 1),
(92, '2022-05-14', 27, 3, 2, 1),
(93, '2022-05-14', 22, 2, 2, 1),
(94, '2022-05-17', 22, 3, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_status`
--

CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_type`
--

CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_avl`
--
ALTER TABLE `tbl_avl`
  ADD PRIMARY KEY (`avl_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `off_id` (`off_id`),
  ADD KEY `pos_id` (`pos_id`);

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_off`
--
ALTER TABLE `tbl_off`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_avl`
--
ALTER TABLE `tbl_avl`
  MODIFY `avl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_off`
--
ALTER TABLE `tbl_off`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_avl`
--
ALTER TABLE `tbl_avl`
  ADD CONSTRAINT `tbl_avl_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`item_id`),
  ADD CONSTRAINT `tbl_avl_ibfk_2` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`),
  ADD CONSTRAINT `tbl_avl_ibfk_3` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`);

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);

--
-- Constraints for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
  ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);

--
-- Constraints for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD CONSTRAINT `tbl_request_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`item_id`),
  ADD CONSTRAINT `tbl_request_ibfk_2` FOREIGN KEY (`req_type_id`) REFERENCES `tbl_req_type` (`req_type_id`),
  ADD CONSTRAINT `tbl_request_ibfk_3` FOREIGN KEY (`req_status_id`) REFERENCES `tbl_req_status` (`req_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
