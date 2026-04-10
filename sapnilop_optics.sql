-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2024 at 03:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sapnilop_optics`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'sapnil', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `right_sphere` varchar(100) DEFAULT NULL,
  `right_cylinder` varchar(100) DEFAULT NULL,
  `right_axis` varchar(100) DEFAULT NULL,
  `right_add` text DEFAULT NULL,
  `right_prism` varchar(100) DEFAULT NULL,
  `left_sphere` varchar(100) DEFAULT NULL,
  `left_cylinder` varchar(100) DEFAULT NULL,
  `left_axis` varchar(100) DEFAULT NULL,
  `left_add` varchar(100) DEFAULT NULL,
  `left_prism` varchar(100) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_quantity` int(10) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `lens_type` varchar(100) DEFAULT NULL,
  `lens_quantity` int(10) DEFAULT NULL,
  `lens_price` int(10) DEFAULT NULL,
  `net_total` int(10) NOT NULL,
  `discount` int(10) DEFAULT NULL,
  `payable_amount` int(10) NOT NULL,
  `advance` int(10) NOT NULL,
  `due` int(10) NOT NULL,
  `buying_date` date NOT NULL,
  `delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `invoice_no`, `name`, `phone`, `address`, `right_sphere`, `right_cylinder`, `right_axis`, `right_add`, `right_prism`, `left_sphere`, `left_cylinder`, `left_axis`, `left_add`, `left_prism`, `product_type`, `product_quantity`, `product_price`, `lens_type`, `lens_quantity`, `lens_price`, `net_total`, `discount`, `payable_amount`, `advance`, `due`, `buying_date`, `delivery_date`) VALUES
(12, '01487956654-77780', 'Gopal Kumar Saha', '01487956654', 'Tokyo, Japan', '-1.25', '-1.75', '180', '2.25', '2.15', '-3.25', '-4.25', '180', '180', '3.15', 'rimless', 1, 1500, 'blueCut', 1, 600, 2100, 100, 2000, 500, 1500, '2024-10-25', '2024-10-30'),
(13, '01746335574-70723', 'Dipu Saha', '01746335574', 'Dhanmondi', '-1.25', '-1.75', '180', '2.25', '2.15', '-3.25', '-4.25', '180', '180', '3.15', '', 0, 1000, '', 0, 800, 1800, 0, 1800, 300, 1500, '2024-10-28', '2024-10-30'),
(14, '01746335574-44817', 'Dipu Saha', '01746335574', 'Dhanmondi', '-1.25', '-1.75', '180', '2.25', '2.15', '-3.25', '-4.25', '180', '180', '3.15', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '2024-10-28', '2024-10-27'),
(15, '01746335574-45863', 'Dipu Saha', '01746335574', 'Dhanmondi', '-3.25', '-3.75', '90', '2.25', '2.15', '-3.25', '-4.25', '90', '1.25', '3.15', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '2024-10-28', '2024-10-30'),
(16, '01711111111-82918', 'Mr X', '01711111111', 'Tokyo, Japan', '-1.25', '-2.25', '90', '2.25', '', '', '', '', '', '', 'rimless', 1, 1000, 'blueCut', 1, 650, 1650, 50, 1600, 600, 1000, '2024-10-28', '2024-10-29'),
(17, '01711111111-76375', 'Mr X', '01711111111', 'Tokyo, Japan', '-1.25', '-2.25', '90', '2.25', '', '', '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '2024-10-28', '2024-10-30'),
(18, '01746335574-88074', 'Dipu Saha', '01746335574', 'Dhanmondi', '-1.25', '-1.75', '180', '2.25', '2.15', '-3.25', '-4.25', '180', '180', '3.15', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '2024-10-28', '2024-10-30'),
(19, '01711111111-03341', 'Mr X', '01711111111', 'Tokyo, Japan', '-1.25', '-2.25', '90', '2.25', '', '', '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '2024-10-28', '2024-10-28'),
(20, '01722222222-76093', 'Ahnaf Khan', '01722222222', 'Bashundhara', '-0.25', '0.50', '90', '0.75', '1.00', '-1.25', '-1.50', '180', '-1.75', '2.00', 'plastic', 1, 1200, 'blueCut', 1, 2100, 3300, 300, 3000, 1000, 2000, '2024-10-28', '2024-10-31'),
(21, '01722222222-43393', 'Ahnaf Khan', '01722222222', 'Bashundhara', '-0.25', '0.50', '90', '0.75', '1.00', '-1.25', '-1.50', '180', '-1.75', '2.00', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '2024-10-28', '2024-10-28'),
(22, '01722222222-85870', 'Ahnaf Khan', '01722222222', 'Bashundhara', '-0.25', '0.50', '90', '0.75', '1.00', '-1.25', '-1.50', '180', '-1.75', '2.00', '', 1, 100, '', 1, 200, 300, 0, 300, 0, 300, '2024-10-28', '2024-10-28'),
(23, '01733333333-60600', 'Jamal Mostafa', '01733333333', 'Uttara', '-3.25', '-3.50', '90', '-3.75', '-3.95', '-4.00', '-4.25', '180', '-4.50', '-4.75', 'rimless', 1, 2000, 'blueCut', 1, 600, 2600, 100, 2500, 500, 2000, '2024-10-30', '2024-11-01'),
(24, '01733333333-68220', 'Jamal Mostafa', '01733333333', 'Uttara', '-3.25', '-3.50', '90', '-3.75', '-3.95', '-4.00', '-4.25', '180', '-4.50', '-4.75', '', 0, 1000, '', 0, 500, 1500, 0, 1500, 1500, 0, '2024-10-30', '2024-10-30'),
(25, 'Doe-88699', 'Mr', 'Doe', 'Tokyo', '-3.25', '-1.25', '90', '', '', '-4.25', '-2.25', '180', '', '', 'rimless', 1, 1000, 'blueCut', 6, 600, 1600, 100, 1500, 1000, 500, '2024-11-11', '2024-11-18'),
(26, '01575083551-62173', 'Gopal Kumar Saha', '01575083551', 'Jigatola', '-3.25', '', '90', '-3.75', '-3.95', '-4.00', '-4.25', '180', '-4.50', '-4.75', 'Plastic', 0, 1000, 'BlueCut', 0, 200, 1200, 200, 1000, 700, 300, '2024-11-25', '2024-11-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
