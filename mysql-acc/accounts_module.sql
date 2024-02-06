-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 07:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts_module`
--

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `credit_amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `credit_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `customer_name`, `credit_amount`, `description`, `credit_date`, `due_date`, `payment_type`) VALUES
(32, 'testtt11', 25450.00, 'Debt test', '2023-12-24', '2023-12-26', 'cheque'),
(36, 'testtt11', 5600.00, 'Debt test', '2023-12-19', '2023-12-27', 'bank_deposit'),
(37, 'testtt11', 950.00, 'Debt test', '2023-12-28', '2024-01-04', 'bank_deposit'),
(38, 'Cust', 2500.00, 'credCust', '2023-12-28', '2024-01-05', 'cheque'),
(39, 'Cust', 2500.00, 'credCust', '2023-12-28', '2024-01-05', 'cheque'),
(40, 'Cust', 2500.00, 'credCust', '2023-12-28', '2024-01-05', 'cheque'),
(41, 'test', 10000.00, 'Debt testtest', '2023-12-28', '2023-12-29', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `credit_income`
--

CREATE TABLE `credit_income` (
  `id` int(11) NOT NULL,
  `credit_date` date DEFAULT NULL,
  `repayment_amount` decimal(10,2) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_income`
--

INSERT INTO `credit_income` (`id`, `credit_date`, `repayment_amount`, `customer_name`) VALUES
(7, '2023-12-26', 1600.00, 'testtt11'),
(8, '2023-12-28', 1000.00, 'testtt11'),
(9, '2023-12-28', 1000.00, 'testtt11'),
(10, '2023-12-28', 1000.00, 'testtt11'),
(13, '2023-12-28', 2500.00, 'Cust'),
(14, '2023-12-28', 1000.00, 'Cust'),
(15, '2023-12-28', 5000.00, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `cus_name` varchar(255) DEFAULT NULL,
  `cus_email` varchar(255) DEFAULT NULL,
  `cus_mob` varchar(20) DEFAULT NULL,
  `cus_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `cus_name`, `cus_email`, `cus_mob`, `cus_code`) VALUES
(2, 'testtt11', 'test@test.com', '123456789', 'tet21'),
(4, 'test', 'test@testmail.com', '123456789', 'test1122'),
(5, 'Cust', 'cust@custmail.com', '123456', 'cust123');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(250) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `date`, `description`, `amount`) VALUES
(2, '2023-11-18', 'donation', 200.00),
(4, '2023-11-17', 'Driller', 160.00),
(5, '2023-11-17', 'tgdhv', 132.00),
(6, '0000-00-00', 'Expanse', 17.50),
(7, '2023-11-18', 'test', 15.00),
(8, '2023-11-18', 'testt11', 502.50),
(9, '2023-11-18', 'test3', 102.35),
(10, '2023-11-18', 'testt', 150.00),
(11, '2023-11-20', 'testt', 1500.00),
(12, '2023-11-20', 'test1', 500.00),
(13, '2023-11-20', 'test20', 1000.00),
(14, '2023-11-20', 'faheem', 500.00),
(15, '2023-11-21', 'testuu', 520.00),
(16, '2023-11-21', 'expense', 10000.00),
(17, '2023-11-22', 'expense', 80000.00),
(18, '2023-11-23', 'puchas', 8000.00),
(19, '2023-12-20', 'expense', 15000.00),
(20, '2023-12-22', 'Expense', 25000.00);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `date`, `description`, `amount`) VALUES
(2, '2023-11-16', 'test1', 2500.00),
(9, '2023-11-18', 'test', 10244.00),
(10, '2023-11-18', 'tesst', 0.00),
(19, '2023-11-23', 'Income', 10000.00),
(20, '2023-11-23', 'intes', 25000.00),
(21, '2023-12-22', 'income', 90000.00),
(23, '2023-12-20', 'Income', 30000.00),
(24, '2023-12-24', 'testttt', 6500.00);

-- --------------------------------------------------------

--
-- Table structure for table `lenders`
--

CREATE TABLE `lenders` (
  `id` int(11) NOT NULL,
  `lender_name` varchar(255) DEFAULT NULL,
  `lender_email` varchar(255) DEFAULT NULL,
  `lender_phone` varchar(20) DEFAULT NULL,
  `lender_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lenders`
--

INSERT INTO `lenders` (`id`, `lender_name`, `lender_email`, `lender_phone`, `lender_code`) VALUES
(1, 'Test', 'test@testmail.com', '123456789', 'test1'),
(4, 'Faheem', 'faheemniyas11@gmail.com', '777782751', 'fhm');

-- --------------------------------------------------------

--
-- Table structure for table `lender_repayment`
--

CREATE TABLE `lender_repayment` (
  `id` int(11) NOT NULL,
  `repayment_date` date DEFAULT NULL,
  `repayment_amount` decimal(10,2) DEFAULT NULL,
  `lender_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lender_repayment`
--

INSERT INTO `lender_repayment` (`id`, `repayment_date`, `repayment_amount`, `lender_name`) VALUES
(1, '2024-01-02', 1000.00, 'Test'),
(2, '2024-01-09', 1000.00, 'Test'),
(3, '2024-01-11', 1000.00, 'Test'),
(4, '2024-01-03', 150.00, 'Faheem');

-- --------------------------------------------------------

--
-- Table structure for table `lending`
--

CREATE TABLE `lending` (
  `id` int(11) NOT NULL,
  `lender_name` varchar(255) DEFAULT NULL,
  `lend_amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lend_date` date DEFAULT NULL,
  `repayment_date` date DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lending`
--

INSERT INTO `lending` (`id`, `lender_name`, `lend_amount`, `description`, `lend_date`, `repayment_date`, `payment_type`) VALUES
(10, 'Test', 6500.00, 'Lend Test', '2024-01-02', '2024-01-24', 'cash'),
(11, 'Test', 9500.00, 'Lend Test', '2024-01-03', '2024-01-10', 'bank_deposit'),
(12, 'Faheem', 500.00, 'Lend Fah', '2024-01-02', '2024-01-09', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `repassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `repassword`) VALUES
(9, 'test', 'test@gmail.com', 'test', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_income`
--
ALTER TABLE `credit_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lenders`
--
ALTER TABLE `lenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lender_repayment`
--
ALTER TABLE `lender_repayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lending`
--
ALTER TABLE `lending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `credit_income`
--
ALTER TABLE `credit_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `lenders`
--
ALTER TABLE `lenders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lender_repayment`
--
ALTER TABLE `lender_repayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lending`
--
ALTER TABLE `lending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
