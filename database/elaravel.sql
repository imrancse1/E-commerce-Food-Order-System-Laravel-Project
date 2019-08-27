-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 02:48 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_03_191817_create_tbl_admin_table', 1),
(2, '2018_03_04_195922_create_tbl_category_table', 2),
(3, '2018_03_07_134725_create_manufacture_table', 3),
(4, '2018_03_07_195217_create_tbl_products_table', 4),
(5, '2018_03_10_060828_create_tbl_slider_table', 5),
(6, '2018_03_13_143559_create_tbl_customer_table', 6),
(7, '2018_03_14_104700_create_tbl_shipping_table', 7),
(8, '2018_03_20_132435_create_tbl_payment_table', 8),
(9, '2018_03_20_132503_create_tbl_order_table', 8),
(10, '2018_03_20_132522_create_tbl_order_details_table', 8),
(11, '2018_07_08_171924_create_tbl_contact_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'masud.affb@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Masud Parbhez', '01632214506', '2018-07-08 14:10:21', '2018-07-08 07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(18, 'Beef', 'Health is wealth.', 1, NULL, NULL),
(19, 'APPETIZER', 'It is best food.', 1, NULL, NULL),
(20, 'BURGER & SANDWICH', 'It is best food.', 1, NULL, NULL),
(21, 'CHICKEN', '....', 1, NULL, NULL),
(22, 'DRINK', '..........', 1, NULL, NULL),
(23, 'NOODLES', '........', 1, NULL, NULL),
(24, 'RICE', '...........', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `first_name`, `last_name`, `email`, `body`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'masud', 'parbhez', 'masud.affb@gmail.com', 'Hi i am parbhez.', 1, NULL, NULL),
(2, 'Prince', 'Mahmud', 'prince@gmail.com', 'It is very nice.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(10, 'sohidul islam', 'sohidulislam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '12345678910', '2018-03-22 15:08:03', NULL),
(11, 'Masud Khan', 'masudkhan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01961363543', '2018-03-22 21:09:42', NULL),
(12, 'dilarakhan', 'dilarakhan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01676993722', '2018-03-22 21:23:41', NULL),
(13, 'Learn Hunter', 'learnhunter@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01676993722', '2018-03-23 11:33:09', NULL),
(14, 'masud', 'masud.affb@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01632214506', '2018-07-08 13:56:11', NULL),
(15, 'prince', 'prince@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01632214506', '2018-07-08 14:57:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 'PRAWN', '.....', 1, NULL, NULL),
(8, 'SALAD', '.....', 1, NULL, NULL),
(9, 'SET MENU', '.................', 1, NULL, NULL),
(10, 'SOUP', '.............', 1, NULL, NULL),
(11, 'VEGETABLE', '...............', 1, NULL, NULL),
(12, 'Food', '..........', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(9, 10, 15, 11, '73,400.00', '1', '2018-03-22 15:08:52', NULL),
(10, 11, 16, 12, '58,900.00', '1', '2018-03-22 21:11:05', NULL),
(12, 14, 18, 14, '28,000.00', '1', '2018-07-08 13:56:42', NULL),
(13, 15, 19, 15, '30,000.00', '1', '2018-07-08 14:58:15', NULL),
(14, 15, 19, 16, '0.00', '1', '2018-07-08 14:59:27', NULL),
(15, 15, 19, 17, '0.00', 'pending', '2018-07-08 15:17:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(18, 9, 11, 'Laptop', '28000', '2', NULL, NULL),
(19, 9, 13, 'Tablet', '15000', '1', NULL, NULL),
(20, 9, 4, 'Shirt', '800', '3', NULL, NULL),
(21, 10, 13, 'Tablet', '15000', '2', NULL, NULL),
(22, 10, 10, 'Bed', '28000', '1', NULL, NULL),
(23, 10, 6, 'Long Scurt', '900', '1', NULL, NULL),
(24, 11, 5, 'Womens Long Shirt', '450', '2', NULL, NULL),
(25, 11, 8, 'Shirt', '700', '2', NULL, NULL),
(26, 11, 15, 'child dress', '1400', '1', NULL, NULL),
(27, 12, 11, 'Laptop', '28000', '1', NULL, NULL),
(28, 13, 13, 'Tablet', '15000', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(11, 'handcash', 'pending', '2018-03-22 15:08:52', NULL),
(12, 'handcash', 'pending', '2018-03-22 21:11:05', NULL),
(13, 'handcash', 'pending', '2018-03-23 11:34:13', NULL),
(14, 'handcash', 'pending', '2018-07-08 13:56:42', NULL),
(15, 'handcash', 'pending', '2018-07-08 14:58:15', NULL),
(16, 'handcash', 'pending', '2018-07-08 14:59:27', NULL),
(17, 'handcash', 'pending', '2018-07-08 15:17:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(21, 'Chicken Drumstick', 19, 12, 'It is wonderful.', '<span style=\"font-size: 13.3333px;\">It is wonderful.</span>', 650.00, 'image/Y7ASCnlFsOqqGjNJXaRb.jpg', 'L', 'red', 1, NULL, NULL),
(22, 'Chicken Short Wings', 19, 12, 'It is wonderful.', '<span style=\"font-size: 13.3333px;\">It is wonderful.</span>', 330.00, 'image/omn8uagZCMSF9cfTM1Pe.jpg', 'M', 'black', 1, NULL, NULL),
(23, 'French Fry', 19, 12, 'It is very testy.', '<span style=\"font-size: 13.3333px;\">It is very testy.</span>', 150.00, 'image/sjIVyOxZhfdxGO6tALAZ.jpg', 'M', 'black', 1, NULL, NULL),
(24, 'Fried Wonthon', 19, 12, 'It is very beautiful.', '<span style=\"font-size: 13.3333px;\">It is very beautiful.</span>', 340.00, 'image/KmjvG5d3S9IFgAMW06Pc.jpg', '14\"', 'red', 1, NULL, NULL),
(25, 'Beef Chili Onion', 18, 12, 'It is very testy.', '<span style=\"font-size: 13.3333px;\">It is very testy.</span>', 350.00, 'image/k8MZGnY1eiTWoYvl5OYV.jpg', 'L', 'black', 1, NULL, NULL),
(26, 'Beef Green Chili & Capsicum', 18, 12, 'It is very testy food.', '<span style=\"font-size: 13.3333px;\">It is very testy food.</span>', 250.00, 'image/IrXJUfGV5wKBuwXf2Y7a.jpg', 'L', 'Golden', 1, NULL, NULL),
(27, 'Beef Masala', 18, 12, 'It is very testy.', '<span style=\"font-size: 13.3333px;\">It is very testy.</span>', 320.00, 'image/YH8WNC2Ur3Coob6Wi2q9.jpg', 'L', 'black', 1, NULL, NULL),
(28, 'Chicken Chili Onion', 21, 12, 'It is very testy.', '<span style=\"font-size: 13.3333px;\">It is very testy.</span>', 450.00, 'image/Smo5Juw8AbHOIB11UwAB.jpg', 'L', 'black', 1, NULL, NULL),
(29, 'Chicken Lollipop', 21, 12, 'It is testy .', '<span style=\"font-size: 13.3333px;\">It is testy .</span>', 320.00, 'image/MX1eEbiQEhz92ZjnKDVm.jpg', 'L', 'black', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(15, 'maksudaaktaer@gmail.com', 'maksuda', 'Aktar', '167 gandaraia dhaka bangladesh', '01676993722', 'dhaka', NULL, NULL),
(16, 'shipping@gmail.com', 'Learn', 'Hunter', '1456 gandaria dit plot', '01961363543', 'dhaka', NULL, NULL),
(17, 'Sohidulkhan@gmail.com', 'Sohel', 'Khan', 'gandaria dit plot....', '01961363543', 'Dhaka', NULL, NULL),
(18, 'masud.affb@gmail.com', 'Masud', 'Parbhez', 'feni', '01632214506', 'Feni', NULL, NULL),
(19, 'prince@gmail.com', 'Prince', 'Mahmud', 'Dhaka', '01811602952', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 'slider/3vMs93hspeNTgAH6jEhz.jpg', '1', NULL, NULL),
(8, 'slider/VUnBW2L7T6IlMFIY5gpd.jpg', '1', NULL, NULL),
(9, 'slider/7BDdNckT2kZ584ScJ6SG.jpg', '1', NULL, NULL),
(10, 'slider/3PU0dC4fNKDxDy7sJyQx.jpg', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
