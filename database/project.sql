-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 12:00 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `po_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cart_total` varchar(100) NOT NULL,
  `bill_fname` varchar(100) NOT NULL,
  `bill_lname` varchar(100) NOT NULL,
  `bill_add` varchar(100) NOT NULL,
  `bill_city` varchar(100) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_phone` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`po_id`, `u_id`, `cart_total`, `bill_fname`, `bill_lname`, `bill_add`, `bill_city`, `bill_email`, `bill_phone`, `status`, `date`) VALUES
(1, 3, '121000', 'Aakash', 'Singha', 'street 42c h.no 10 ph-2, qutub vihar', 'psh', 'aa.com', '0700', 'delivered', '2019-10-09 11:53:51'),
(2, 3, '41000', 'Aakash', 'Singha', 'street 42c h.no 10 ph-2, qutub vihar', 'isl', 'aakl.com', '0705', 'delivered', '2019-10-12 11:46:36'),
(3, 3, '41000', 'Aakash', 'Singha', 'street 42c h.no 10 h-2, qutub vihar', 'khi', 'aakal.com', '070', '', '2019-10-09 11:57:32'),
(4, 3, '51000', 'Aakash', 'Singha', 'street 42c h.no 10 ph-2, qutub vihar', 'khi', 'aail.com', '0700', '', '2019-10-09 11:59:48'),
(5, 1, '21000', 'Aakash', 'Singha', 'street 42c h.no 10 ph-2, qutub vihar', 'khi', 'aaail.com', '070', '', '2019-10-12 11:51:23'),
(6, 3, '6000', 'Aakash', 'Singha', 'street 42c h.no 10 ph-2, qutub vihar', 'khi', 'aal.com', '07020', '', '2019-10-22 09:22:11'),
(7, 3, '6000', 'Aakash', 'Singha', 'street 42c h.no 10 ph-2, qutub vihar', 'DEL', 'aail.com', '0720', '', '2019-10-25 09:52:14'),
(8, 4, '2000', 'Aakash', 'Singha', 'street 42c h.no 10 ph-2, qutub vihar', 'DEL', 'aail.com', '0720', '', '2019-10-25 09:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_ext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `product_category`, `product_price`, `product_des`, `file_name`, `file_path`, `file_ext`) VALUES
(1, 'tum hi ho', 'afadf', '1000', 'fjfdhjfhd fghjgfgg', 'booster.jpg', 'C:/xampp/htdocs/e-commerce/uploads/', '.jpg'),
(2, 'lappy', 'laptop', '5000', 'ab kya bataye tumhe iske baare mai', 'blockchain.jpg', 'C:/xampp/htdocs/e-commerce/uploads/', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `ph_id` int(11) NOT NULL,
  `oh` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_qty` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(1, 1, 'asfdadsf', 'gfnjh', '3', 3, '2019-10-09 11:43:30'),
(2, 1, 'iphonex', '40000', '3', 3, '2019-10-09 11:43:30'),
(3, 2, 'iphonex', '40000', '1', 3, '2019-10-09 11:44:45'),
(4, 3, 'tum hi ho', 'gfnjh', '2', 3, '2019-10-09 11:57:32'),
(5, 3, 'iphonex', '40000', '1', 3, '2019-10-09 11:57:32'),
(6, 4, 'tum hi ho', '5000', '2', 3, '2019-10-09 11:59:48'),
(7, 4, 'iphonex', '40000', '1', 3, '2019-10-09 11:59:48'),
(8, 5, 'lappy', '5000', '2', 1, '2019-10-12 11:51:23'),
(9, 5, 'tum hi ho', '5000', '2', 1, '2019-10-12 11:51:23'),
(10, 6, 'tum hi ho', '5000', '1', 3, '2019-10-22 09:22:11'),
(11, 7, 'lappy', '5000', '1', 3, '2019-10-25 09:52:14'),
(12, 8, 'tum hi ho', '1000', '1', 4, '2019-10-25 09:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `fname`, `lname`, `username`, `email`, `password`, `status`) VALUES
(3, 'Aakash', 'Singha', 'aakash', 'admin@gmail.com', '12341234', 'admin'),
(4, 'divyanshu', 'pandey', 'divyanshu', 'divyanshu@gmail.com', '12341234', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
