-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 01:34 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HKBK Shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LG'),
(4, 'Samsung'),
(5, 'Nikon'),
(6, 'Canon'),
(7, 'Sony'),
(8, 'Lenovo');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(100) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(6, '::1', 1),
(10, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Cameras'),
(3, 'Mobiles'),
(5, 'Televisions');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(5, '::1', 'Test', 'test@123.blr', 'test', 'India', '', '8888899999', 'College', 'WhatsApp Image 2018-10-24 at 3.51.37 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` varchar(5000) NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(3, 5, 3, 'LG LED Smart TV', 67490, '<div class=\"_3la3Fn _1zZOAc\">\r\n<p><strong> Explore the expansive world of the internet, keep up with trending Netflix shows, tune in to regular TV shows, and browse your personal gallery of pictures and videos on Cloud, this LG TV is your one-stop shop for all things entertainment. What&rsquo;s even better is that you can control everything on your TV with its Magic Remote. A simple drag and drop action is all it takes to play content on this TV. Want to enhance your TV&rsquo;s audio? Wirelessly connect it to a compatible audio device to get the party going.</strong></p>\r\n</div>', 'LG-TV.jpeg', 'tv,television,new,lg'),
(4, 1, 2, 'Dell Inspiron 7000', 77990, '<div>\r\n<div class=\"_2THx53\"><strong>Power to the Max</strong></div>\r\n<div class=\"_1aK10F\">\r\n<p>The latest 7th Gen Intel processor used on the Dell 7560 is a quad core processor with a base clock speed of 2.7 GHz. However, this can be boosted all the way up to 3.5 GHz.</p>\r\n</div>\r\n</div>\r\n<div class=\"_38NXIU\">\r\n<div class=\"_3LyGPp _2briKY\">\r\n<div>\r\n<div>\r\n<div>\r\n<div class=\"_2THx53\"><strong>All About that RAM</strong></div>\r\n<div class=\"_1aK10F\">\r\n<p>With 8GB of RAM, the Dell Inspiron offers smoother performance and better multitasking when using different applications. You&rsquo;ll also be able to open applications faster.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Dell.jpeg', 'dell,laptops,new,i7'),
(5, 3, 4, 'Samsung Galaxy On8', 15990, '<p><strong>Samsung brings you the Galaxy On8, a smartphone that is powerful in performance and classy in looks. Its 15.36 cm (6) Infinity Display screen gives you an immersive viewing experience. The Galaxy On8 is also quite competitive on the camera front, thanks to its 16 MP (F1.7) + 5 MP (F1.9) Dual Rear Camera and 16 MP (F1.9) Front Camera. </strong></p>', 'samsung-galaxy-on6-.jpeg', 'Samsung, Mobiles,new,galaxy'),
(6, 5, 4, 'Samsung Ultra HD', 67990, '<p><strong> Experience stunning clarity, rich images and dynamic colours with the Samsung Series 7 LED Smart TV. Its Real 4K UHD Resolution offers 4 times more pixels than FHD and lets you enjoy even the smallest of details with ultimate clarity. The PurColour feature delivers details which look as good as natural and real. This Super Big TV is made in a sleek and Slim Design to give you a breathtaking cinematic experience and it also lends a polished and modern touch to your living space.</strong></p>', 'Samsung-TV.jpeg', 'Samsung, HD,new,TV'),
(7, 1, 1, 'HP 15q Core i7 ', 60990, '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n<li><span class=\"a-list-item\"> Processor: 8th Gen Intel Core i7-8550U processor, 1.8GHz base processor speed </span></li>\r\n<li><span class=\"a-list-item\"> Operating System: This is a DOS -based laptop. Requires separate purchase and installation of operating system software (like Windows), not included in the box. Refer to HP website for drivers. </span></li>\r\n<li><span class=\"a-list-item\"> Display: 15.6-inch HD (1366x768) display </span></li>\r\n<li><span class=\"a-list-item\"> Memory &amp; Storage: 8GB DDR4 RAM with AMD Radeon 530 4GB Graphics | Storage: 1TB HDD </span></li>\r\n<li><span class=\"a-list-item\"> Design &amp; battery: Thin and Light Design | Laptop weight: 1.86 kg | Lithium battery </span></li>\r\n<li><span class=\"a-list-item\"> Warranty: This genuine HP laptop comes with 1 year domestic warranty from HP covering manufacturing defects and not covering physical damage. For more details, see Warranty section below. </span></li>\r\n<li><span class=\"a-list-item\"> Preinstalled Software: None | In the Box: Laptop with included battery and charger</span></li>\r\n<li><span class=\"a-list-item\">Ports &amp; CD drive: 1 HDMI, 2 USB 3.0, 1 USB 2.0, 1 Audio-output | With CD-drive</span></li>\r\n<li><span class=\"a-list-item\">Other features: None</span></li>\r\n</ul>\r\n<div class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\">&nbsp;</div>', 'Hp-laptop.jpeg', 'hp,laptops,new,i7'),
(8, 2, 5, 'Nikon Coolpix B500', 18275, '<p><strong>Expand the boundaries of everyday photography with the 16-megapixel Coolpix B500, fitted with a high performance 40x optical zoom* and 80x Dynamic Fine Zoom**. See the world from new angles with a flexible 3-inch tilting LCD monitor and share it all with SnapBridge, a new feature that connects the camera to your smart device. Experience these powerful features in a compact size. </strong></p>', 'Nikon-coolpix.jpeg', 'Nikon,DSLR,Camera,new,coolpix'),
(9, 2, 5, 'Nikon D3400 Camera', 38490, '<p><strong>Take your first step into the world of DSLR photography with the Nikon D3400 with SnapBridge&mdash; the feature that automatically connects your pictures with the world. The D3400 captures every memory in stunning detail with ISO 100-25600, 24.2 megapixels, an 11-point autofocus system and features the ability to shoot Full HD 1080/60p videos. No matter the situation, whatever the occasion, the compact and lightweight D3400 is always ready to immortalise your most precious moments </strong></p>', 'Nikon-cam.jpeg', 'Nikon,DSLR,Camera,new'),
(10, 2, 6, 'Canon EOS', 44280, '<p><strong>The light and compact EOS 200D fits snugly into your everyday bag. This stylish DSLR comes in 3 color options - white, black and silver. Equipped with cutting technologies packed into its compact body, capture beautiful and impressionable images and share them seamlessly on your social media feeds via the in-built Wi-Fi capability </strong></p>', 'Canon-eos.jpeg', 'Canon,DSLR,Camera,new,EOS'),
(11, 2, 7, 'Sony DSC-W810', 6999, '<p><strong>Easy to carry around and all the more simple to use, the Sony CyberShot DSC-W810 Point &amp; Shoot Camera can capture the most amazing shots and record all the special moments with excellent quality.</strong></p>', 'Sony-cyber-shot.jpeg', 'sony,cybershot,camera,new'),
(12, 1, 8, 'Lenovo Ideapad', 42990, '<p><strong>Replace your old laptop with the Ideapad 330 and get an upgrade to a robust, blazing fast laptop. The Ideapad 330 dons a minimalist design that oozes class and quality. It sports the 8th Gen Intel Core i5-8250U Processor and NVIDIA GEFORCE MX150 (2G GDDR5) graphics that ensures this laptop gives you more than an average performance. </strong></p>', 'Lenovo.jpeg', 'lenovo,laptops,new,ideapad'),
(13, 5, 7, 'Sony BRAVIA', 76499, '<p><strong>Bring home a Sony BRAVIA LED Smart TV and experience amazing 4K picture quality with impressive contrast, brightness and a High Dynamic Range. 4K HDR technology improves the clarity of previously hidden dark shadows and sunlit areas, making entertainment more lifelike.</strong></p>', 'Sony-Bravia.jpeg', 'sony,new,bravia,tv'),
(14, 3, 8, 'Lenovo X2-AP', 17499, '<p><strong>The Lenovo Vibe X2 is the benchmark for smartphones in this modern market. With Mediatek 4G LTE True8Core, you can connect to 4G networks for seamless internet browsing.</strong></p>', 'Lenovo-Phone.jpeg', 'lenovo,mobiles,new');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
