-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2021 at 02:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Sarim Sovanden', 'sarimsovanden@gmail.com', '086280018den', 'den.jpg', 'Cambodia', 'This Application made for control all the logical of website.', '086280018', 'Full Stack Web Developer'),
(2, 'Veasna', 'maveasna@gmail.com', 'veasna123', 'photo_2020-12-08_20-39-19.jpg', 'Cambodia', 'He is Manager', '0123457888', 'Linux Developer');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'hello', 'hello'),
(2, 'hello', 'hi'),
(3, 'hello', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?'),
(2, 'Women', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?'),
(3, 'Kids', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?'),
(4, 'Other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(2, 'Sarim Sovanden', 'den@gmail.com', '0304', 'Cambodia', 'Phnom Penh', '086280018', 'Street 19, Phom Penh, Phnom Penh', 'photo_2021-03-31_02-07-21.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 2, 400, 1704099871, 1, '', '2021-04-16', 'Complete'),
(2, 1, 400, 1386905235, 1, '', '2021-04-16', 'pending'),
(3, 2, 100, 1471509726, 1, '', '2021-04-17', 'pending'),
(4, 2, 400, 1471509726, 1, '', '2021-04-17', 'pending'),
(5, 2, 1200, 91926944, 3, 'Medium', '2021-04-18', 'Complete'),
(6, 2, 400, 278310791, 1, '', '2021-04-18', 'pending'),
(7, 2, 1200, 681482642, 3, 'Medium', '2021-04-18', 'pending'),
(8, 2, 400, 1811780778, 1, 'Small', '2021-04-18', 'pending'),
(9, 2, 400, 1028979423, 1, '', '2021-04-18', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 1704099871, 400, 'Western Union', 3993, 4386, '04/04/21'),
(2, 91926944, 1200, 'Paypall', 1234, 4386, '04/04/21');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(3, 2, 1471509726, 15, 1, '', 'pending'),
(5, 2, 91926944, 19, 3, 'Medium', 'Complete'),
(6, 2, 278310791, 21, 1, '', 'pending'),
(7, 2, 681482642, 19, 3, 'Medium', 'pending'),
(8, 2, 1811780778, 21, 1, 'Small', 'pending'),
(9, 2, 1028979423, 21, 1, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` varchar(100) NOT NULL,
  `product_img2` varchar(100) NOT NULL,
  `product_img3` varchar(100) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(12, 2, 2, '2021-04-04 09:04:01', 'testing', 'product_hang.jpg', 'product-back.jpg', 'product_front.jpg', 12, 'asdjf', '<p>fasdf</p>'),
(13, 4, 3, '2021-04-04 09:40:18', 'Coat boy', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 1221, 'Hood', '<p>hello this new coat for boys</p>'),
(14, 5, 2, '2021-04-04 09:55:27', 'Girl Potos T-shirt', 'g-polos-tshirt-1.jpg', 'g-polos-tshirt-2.jpg', '', 300, 'T-Shirt', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et metus vitae ligula ullamcorper molestie eu pellentesque ante. Integer ac ex in felis porttitor pharetra nec ac mi. Ut lobortis, arcu commodo venenatis congue, nibh mi efficitur justo, vel volutpat purus nunc id ante. Suspendisse tempor non sem et fringilla. Proin eu nunc in arcu pellentesque aliquet. In ornare ornare quam, at luctus risus accumsan vel. Nunc in suscipit lectus. Sed blandit laoreet lacinia. Mauris auctor velit eget vestibulum pellentesque. In finibus leo eu viverra suscipit. Curabitur bibendum, urna et egestas varius, lectus sapien semper augue, non tincidunt purus nisi et ante. Fusce vel dapibus quam.</p>'),
(15, 5, 1, '2021-04-04 09:56:23', 'Man T-shirt', 'grey-man-1.jpg', 'grey-man-2.jpg', 'grey-man-3.jpg', 100, 'T-shirt for men', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et metus vitae ligula ullamcorper molestie eu pellentesque ante. Integer ac ex in felis porttitor pharetra nec ac mi. Ut lobortis, arcu commodo venenatis congue, nibh mi efficitur justo, vel volutpat purus nunc id ante. Suspendisse tempor non sem et fringilla. Proin eu nunc in arcu pellentesque aliquet. In ornare ornare quam, at luctus risus accumsan vel. Nunc in suscipit lectus. Sed blandit laoreet lacinia. Mauris auctor velit eget vestibulum pellentesque. In finibus leo eu viverra suscipit. Curabitur bibendum, urna et egestas varius, lectus sapien semper augue, non tincidunt purus nisi et ante. Fusce vel dapibus quam.</p>'),
(16, 3, 2, '2021-04-07 12:18:25', 'Women shoes', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-3.jpg', 120, 'woment shoes', '<p>this new woment product</p>'),
(17, 3, 1, '2021-04-07 12:19:20', 'Men Soes', 'Man-Adidas-Suarez-Slop-On-1.jpg', 'Man-Adidas-Suarez-Slop-On-2.jpg', 'Man-Adidas-Suarez-Slop-On-3.jpg', 300, 'Addidass Shoes', '<p>this new shoes men product</p>'),
(18, 1, 1, '2021-04-07 12:20:27', 'Jacket Men', 'Man-Geox-Winter-jacket-1.jpg', 'Man-Geox-Winter-jacket-2.jpg', 'Man-Geox-Winter-jacket-3.jpg', 3000, 'jacket', '<p>this new Men jacket beautiful</p>'),
(19, 5, 1, '2021-04-08 15:13:35', 'T-shirt Men', 'polos-tshirt-1.jpg', 'polos-tshirt-2.jpg', '', 400, 'tshirt', '<p>this new T-shirt bran</p>'),
(21, 1, 2, '2021-04-18 07:39:09', 'jacket', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-3.jpg', 400, 'jacket', '<p>hello</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, ' Jackets ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?'),
(2, 'Accessories', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?'),
(3, 'Shoes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?'),
(4, 'Coats', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam reiciendis ea repellat, nemo atque ullam, laborum error delectus, neque perferendis natus deleniti labore veritatis dignissimos obcaecati aliquam est distinctio assumenda?'),
(5, ' T-Shirt ', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(155) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-5.jpg'),
(2, 'Slide number 2', 'slide-2.jpg'),
(3, 'Slide number 3', 'slide-3.jpg'),
(4, 'Slide number 4', 'slide-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(2, 'hello', 'hello', '<p>hello</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
