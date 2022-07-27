-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 03:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my-kitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(2, 'Georgia Leon', 'lefyxuv', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(3, 'Richard Bishop', 'naletyqate', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(13, 'Cullen Petersen', 'dehujikyz', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(14, 'Kerry Snyder', 'casidizi', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(17, 'Shafira Winters2', 'wipave', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(18, 'arman 2', 'talukder', '81dc9bdb52d04dc20036dbd8313ed055'),
(19, 'admin', 'admin', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(6, 'Burger', 'Food_Category_212.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(17, 'burger', 'smoky taste', '100', 'Food-Name-465.jpg', 6, 'Yes', 'Yes'),
(18, 'Ab incididunt velit ', 'Sunt quidem eveniet', '467', 'Food-Name-8573.jpg', 6, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_adress`) VALUES
(1, 'burger', '12', 7, '84', '2022-07-22 12:56:03', 'Ordered', 'Cedric Ewing', '+1 (753) 288-5384', 'telose@mailinator.com', 'ssssdsdsd'),
(2, 'burger', '12', 2, '24', '2022-07-22 12:59:53', 'Ordered', 'Kaseem Shaffer', '+1 (298) 451-4687', 'kibebo@mailinator.com', ''),
(3, 'burger', '12', 7, '84', '2022-07-22 01:02:47', 'Ordered', 'Brock Clayton', '+1 (723) 776-3423', 'jibyvatej@mailinator.com', ''),
(4, 'burger', '12', 7, '84', '2022-07-22 01:09:08', 'Ordered', 'Reuben Richardson', '+1 (576) 208-5733', 'dyjulypo@mailinator.com', ''),
(5, 'burger', '12', 1, '12', '2022-07-22 01:16:14', 'Ordered', 'Athena Mcclain', '+1 (169) 318-6817', 'dyjiqijuku@mailinator.com', ''),
(6, 'burger', '12', 9, '108', '2022-07-22 01:17:05', 'Ordered', 'Amal Mays', '+1 (547) 896-1759', 'kete@mailinator.com', ''),
(7, 'burger', '100', 4, '400', '2022-07-23 05:19:32', 'Ordered', 'Colleen Delacruz', '+1 (769) 456-9751', 'merahop@mailinator.com', ''),
(8, 'burger', '100', 4, '400', '2022-07-23 08:38:45', 'Ordered', 'Basil Randall', '+1 (179) 114-5287', 'habagagu@mailinator.com', ''),
(9, 'burger', '100', 905, '90500', '2022-07-24 08:01:16', 'Ordered', 'Imani Herman', '+1 (746) 933-5842', 'zupypuhej@mailinator.com', 'Omnis quisquam fugia'),
(10, 'burger', '100', 7, '700', '2022-07-24 03:17:13', 'Ordered', 'Caryn Kinney', '+1 (802) 389-8064', 'conavonico@mailinator.com', 'Sapiente architecto ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
