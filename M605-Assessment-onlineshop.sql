-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 10:26 AM
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
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `bestsellingproducts`
-- (See below for the actual view)
--
CREATE TABLE `bestsellingproducts` (
`ProductName` varchar(255)
,`TotalQuantitySold` decimal(32,0)
,`TotalAmountSold` decimal(42,2)
,`SupplierName` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `category_name`, `description`) VALUES
(1, 'Sportswear', 'Sports-related clothing and apparel'),
(2, 'Fashion', 'Trendy and stylish clothing and accessories'),
(3, 'Beauty', 'Products related to beauty and cosmetics'),
(4, 'Workwear', 'Clothing and gear suitable for work environments'),
(5, 'Casual Wear', 'Casual and everyday clothing');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `comment_text` text DEFAULT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Customers_ID` int(11) DEFAULT NULL,
  `Products_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `comment_text`, `comment_date`, `Customers_ID`, `Products_ID`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing.', '2023-09-12 18:14:13', 1, 1),
(2, 'Vestibulum ante ipsum primis in faucibus orci.', '2023-09-12 18:14:13', 2, 2),
(3, 'Nam nec tristique dolor. Sed sit amet leo.', '2023-09-12 18:14:13', 3, 3),
(4, 'Fusce a ultrices ex. Phasellus ut venenatis.', '2023-09-12 18:14:13', 4, 4),
(5, 'Morbi vel metus ac ante condimentum auctor.', '2023-09-12 18:14:13', 5, 5),
(6, 'Nullam vitae neque velit. Proin vehicula eros.', '2023-09-12 18:14:13', 6, 6),
(7, 'Auctor varius felis iaculis.', '2023-09-12 18:14:13', 7, 7),
(8, 'Ullamcorper facilisis. Vestibulum accumsan lectus in leo.', '2023-09-12 18:14:13', 8, 8),
(9, 'Consectetur adipiscing elit. Nec rhoncus neque venenatis.', '2023-09-12 18:14:13', 9, 9),
(10, 'Fermentum magna auctor libero.', '2023-09-12 18:14:13', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `first_name`, `last_name`, `phone`, `email`, `address`, `password`, `last_login`) VALUES
(1, 'John', 'Doe', '+123456789', 'john@example.com', '123 Main St', 'password123', '2023-09-12 17:27:40'),
(2, 'Jane', 'Smith', '+987654321', 'jane@example.com', '456 Elm St', 'securepass', '2023-09-12 17:27:40'),
(3, 'David', 'Johnson', '+555555555', 'david@example.com', '789 Oak St', 'davidpass', '2023-09-12 17:27:40'),
(4, 'Emily', 'Wilson', '+111111111', 'emily@example.com', '101 Maple St', 'emilypass', '2023-09-12 17:27:40'),
(5, 'Michael', 'Brown', '+222222222', 'michael@example.com', '202 Pine St', 'michaelpass', '2023-09-12 17:27:40'),
(6, 'Olivia', 'Lee', '+333333333', 'olivia@example.com', '303 Cedar St', 'oliviapass', '2023-09-12 17:27:40'),
(7, 'Daniel', 'Garcia', '+444444444', 'daniel@example.com', '404 Birch St', 'danielpass', '2023-09-12 17:27:40'),
(8, 'Sophia', 'Hernandez', '+555555555', 'sophia@example.com', '505 Redwood St', 'sophiapass', '2023-09-12 17:27:40'),
(9, 'William', 'Martinez', '+666666666', 'william@example.com', '606 Spruce St', 'williampass', '2023-09-12 17:27:40'),
(10, 'Ava', 'Lopez', '+777777777', 'ava@example.com', '707 Fir St', 'avapass', '2023-09-12 17:27:40');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customertotalpurchases`
-- (See below for the actual view)
--
CREATE TABLE `customertotalpurchases` (
`FirstName` varchar(255)
,`LastName` varchar(255)
,`Email` varchar(255)
,`TotalPurchases` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `image_URL` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `Products_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `image_URL`, `description`, `Products_ID`) VALUES
(1, 'https://example.com/image1.jpg', 'Lorem Ipsum', 1),
(2, 'https://example.com/image2.jpg', 'Lorem Ipsum', 2),
(3, 'https://example.com/image3.jpg', 'Lorem Ipsum', 3),
(4, 'https://example.com/image4.jpg', 'Lorem Ipsum', 4),
(5, 'https://example.com/image5.jpg', 'Lorem Ipsum', 5),
(6, 'https://example.com/image6.jpg', 'Lorem Ipsum', 6),
(7, 'https://example.com/image7.jpg', 'Lorem Ipsum', 7),
(8, 'https://example.com/image8.jpg', 'Lorem Ipsum', 8),
(9, 'https://example.com/image9.jpg', 'Lorem Ipsum', 9),
(10, 'https://example.com/image10.jpg', 'Lorem Ipsum', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orderitemstatus`
--

CREATE TABLE `orderitemstatus` (
  `ID` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitemstatus`
--

INSERT INTO `orderitemstatus` (`ID`, `status`) VALUES
(1, 'Initial sale'),
(2, 'Returns'),
(3, 'Exchanges'),
(4, 'Refunds');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `Customers_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `order_date`, `total_amount`, `Customers_ID`) VALUES
(1, '2023-09-01', 149.99, 1),
(2, '2023-09-02', 299.99, 2),
(3, '2023-09-03', 199.99, 3),
(4, '2023-09-04', 79.99, 4),
(5, '2023-09-05', 449.99, 5),
(6, '2023-09-06', 29.99, 6),
(7, '2023-09-07', 99.99, 7),
(8, '2023-09-08', 39.99, 8),
(9, '2023-09-09', 129.99, 9),
(10, '2023-09-10', 199.99, 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `ID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `Orders_ID` int(11) DEFAULT NULL,
  `Products_ID` int(11) DEFAULT NULL,
  `OrderItemStatus_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`ID`, `quantity`, `unit_price`, `Orders_ID`, `Products_ID`, `OrderItemStatus_ID`) VALUES
(1, 2, 49.99, 1, 1, 1),
(2, 1, 899.99, 2, 2, 1),
(3, 3, 29.99, 3, 3, 2),
(4, 5, 19.99, 4, 4, 3),
(5, 1, 149.99, 5, 5, 1),
(6, 2, 129.99, 6, 6, 4),
(7, 4, 39.99, 7, 7, 2),
(8, 1, 14.99, 8, 8, 1),
(9, 3, 79.99, 9, 9, 3),
(10, 2, 59.99, 10, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_shipment`
--

CREATE TABLE `order_shipment` (
  `ID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `Orders_ID` int(11) DEFAULT NULL,
  `Shipments_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_shipment`
--

INSERT INTO `order_shipment` (`ID`, `quantity`, `cost`, `Orders_ID`, `Shipments_ID`) VALUES
(1, 2, 9.99, 1, 1),
(2, 1, 14.99, 2, 2),
(3, 3, 19.99, 3, 3),
(4, 5, 24.99, 4, 4),
(5, 1, 29.99, 5, 5),
(6, 2, 34.99, 6, 6),
(7, 4, 39.99, 7, 7),
(8, 1, 44.99, 8, 8),
(9, 3, 49.99, 9, 9),
(10, 2, 54.99, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `ID` int(11) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentmethod`
--

INSERT INTO `paymentmethod` (`ID`, `payment_method`) VALUES
(1, 'Credit card'),
(2, 'Bank transfer'),
(3, 'Prepaid card'),
(4, 'Cash on delivery');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `ID` int(11) NOT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `Orders_ID` int(11) DEFAULT NULL,
  `PaymentMethod_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`ID`, `due_amount`, `Orders_ID`, `PaymentMethod_ID`) VALUES
(1, 49.99, 1, 1),
(2, 299.99, 2, 2),
(3, 149.99, 3, 3),
(4, 79.99, 4, 4),
(5, 449.99, 5, 1),
(6, 29.99, 6, 2),
(7, 99.99, 7, 3),
(8, 39.99, 8, 4),
(9, 129.99, 9, 1),
(10, 199.99, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `Suppliers_ID` int(11) DEFAULT NULL,
  `Categories_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `product_name`, `price`, `description`, `Suppliers_ID`, `Categories_ID`) VALUES
(1, 'Running Shoes', 89.99, 'Comfortable and durable running shoes for athletes', 2, 1),
(2, 'T-Shirt', 19.99, 'T-shirt for everyday wear', 2, 5),
(3, 'Cosmetics Set', 49.99, 'A set of cosmetic products for beauty enthusiasts', 3, 3),
(4, 'Classic shoes', 149.99, 'Modern shoes for professionals', 4, 4),
(5, 'Smart Watch', 129.99, 'A stylish smartwatch with health advanced features', 5, 2),
(6, 'Home Decor Items', 39.99, 'Decorative items for beautiful living space', 8, 2),
(7, 'Natural makeup', 14.99, 'Makeup with natural ingredients', 3, 3),
(8, 'Hiking Backpack', 79.99, 'Durable backpack for outdoor adventurers', 10, 1),
(9, 'Sportswear Set', 69.99, 'Sportswear outfit', 1, 1),
(10, 'Casual Wear Dress', 59.99, 'Comfortable dress for casual occasions', 2, 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `returneditems`
-- (See below for the actual view)
--
CREATE TABLE `returneditems` (
`OrderItemID` int(11)
,`ProductName` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `ID` int(11) NOT NULL,
  `shipment_date` date DEFAULT NULL,
  `arrival_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`ID`, `shipment_date`, `arrival_date`) VALUES
(1, '2023-09-15', '2023-09-20'),
(2, '2023-09-16', '2023-09-21'),
(3, '2023-09-17', '2023-09-22'),
(4, '2023-09-18', '2023-09-23'),
(5, '2023-09-19', '2023-09-24'),
(6, '2023-09-20', '2023-09-25'),
(7, '2023-09-21', '2023-09-26'),
(8, '2023-09-22', '2023-09-27'),
(9, '2023-09-23', '2023-09-28'),
(10, '2023-09-24', '2023-09-29');

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplierproductcounts`
-- (See below for the actual view)
--
CREATE TABLE `supplierproductcounts` (
`SupplierID` int(11)
,`SupplierName` varchar(255)
,`SupplierEmail` varchar(255)
,`SupplierPhone` varchar(20)
,`SupplierAddress` varchar(255)
,`NumberOfProducts` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID` int(11) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID`, `supplier_name`, `email`, `phone`, `address`) VALUES
(1, 'ABCD', 'abc@example.com', '+1234567890', '123 Supplier Ave'),
(2, 'XYZ Clothing', 'xyz@example.com', '+9876543210', '456 Garment St'),
(3, 'GlobalCompany', 'global@example.com', '+5555555555', '789 Grocery Rd'),
(4, 'RocknRoll', 'tech@example.com', '+1111111111', '101 Tech Blvd'),
(5, 'Fashion Trends', 'fashion@example.com', '+2222222222', '202 Trendy St'),
(6, 'Health Essentials', 'health@example.com', '+3333333333', '303 Wellness Dr'),
(7, 'Green Gardens', 'gardens@example.com', '+4444444444', '404 Greenery Rd'),
(8, 'Home Decor', 'decor@example.com', '+5555555555', '505 Homeware Ln'),
(9, 'Top fashion', 'autoparts@example.com', '+6666666666', '606 Auto Ave'),
(10, 'Outdoor Gear', 'outdoor@example.com', '+7777777777', '707 Adventure Rd');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `ID` int(11) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`ID`, `tag`, `description`) VALUES
(1, 'Travel Essentials', 'Essential items for travelers'),
(2, 'Basics', 'Basic everyday items'),
(3, 'Gifts under 10 euros', 'Affordable gift options'),
(4, 'Christmas', 'Items related to the Christmas holiday');

-- --------------------------------------------------------

--
-- Table structure for table `tag_product`
--

CREATE TABLE `tag_product` (
  `ID` int(11) NOT NULL,
  `Tags_ID` int(11) DEFAULT NULL,
  `Products_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag_product`
--

INSERT INTO `tag_product` (`ID`, `Tags_ID`, `Products_ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 1, 5),
(6, 2, 6),
(7, 3, 7),
(8, 4, 8),
(9, 1, 9),
(10, 2, 10);

-- --------------------------------------------------------

--
-- Structure for view `bestsellingproducts`
--
DROP TABLE IF EXISTS `bestsellingproducts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bestsellingproducts`  AS SELECT `p`.`product_name` AS `ProductName`, sum(`oi`.`quantity`) AS `TotalQuantitySold`, sum(`oi`.`unit_price` * `oi`.`quantity`) AS `TotalAmountSold`, `s`.`supplier_name` AS `SupplierName` FROM ((`products` `p` join `order_item` `oi` on(`p`.`ID` = `oi`.`Products_ID`)) join `suppliers` `s` on(`p`.`Suppliers_ID` = `s`.`ID`)) GROUP BY `p`.`product_name`, `s`.`supplier_name` ORDER BY sum(`oi`.`quantity`) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Structure for view `customertotalpurchases`
--
DROP TABLE IF EXISTS `customertotalpurchases`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customertotalpurchases`  AS SELECT `c`.`first_name` AS `FirstName`, `c`.`last_name` AS `LastName`, `c`.`email` AS `Email`, sum(`o`.`total_amount`) AS `TotalPurchases` FROM (`customers` `c` left join `orders` `o` on(`c`.`ID` = `o`.`Customers_ID`)) GROUP BY `c`.`first_name`, `c`.`last_name`, `c`.`email` ;

-- --------------------------------------------------------

--
-- Structure for view `returneditems`
--
DROP TABLE IF EXISTS `returneditems`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `returneditems`  AS SELECT `oi`.`ID` AS `OrderItemID`, `p`.`product_name` AS `ProductName` FROM ((`order_item` `oi` join `products` `p` on(`oi`.`Products_ID` = `p`.`ID`)) join `orderitemstatus` `ois` on(`oi`.`OrderItemStatus_ID` = `ois`.`ID`)) WHERE `ois`.`status` = 'Returns' ;

-- --------------------------------------------------------

--
-- Structure for view `supplierproductcounts`
--
DROP TABLE IF EXISTS `supplierproductcounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplierproductcounts`  AS SELECT `s`.`ID` AS `SupplierID`, `s`.`supplier_name` AS `SupplierName`, `s`.`email` AS `SupplierEmail`, `s`.`phone` AS `SupplierPhone`, `s`.`address` AS `SupplierAddress`, count(`p`.`ID`) AS `NumberOfProducts` FROM (`suppliers` `s` left join `products` `p` on(`s`.`ID` = `p`.`Suppliers_ID`)) GROUP BY `s`.`ID`, `s`.`supplier_name`, `s`.`email`, `s`.`phone`, `s`.`address` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Customers_ID` (`Customers_ID`),
  ADD KEY `Products_ID` (`Products_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Products_ID` (`Products_ID`);

--
-- Indexes for table `orderitemstatus`
--
ALTER TABLE `orderitemstatus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Customers_ID` (`Customers_ID`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Orders_ID` (`Orders_ID`),
  ADD KEY `Products_ID` (`Products_ID`),
  ADD KEY `OrderItemStatus_ID` (`OrderItemStatus_ID`);

--
-- Indexes for table `order_shipment`
--
ALTER TABLE `order_shipment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Orders_ID` (`Orders_ID`),
  ADD KEY `Shipments_ID` (`Shipments_ID`);

--
-- Indexes for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Orders_ID` (`Orders_ID`),
  ADD KEY `PaymentMethod_ID` (`PaymentMethod_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Suppliers_ID` (`Suppliers_ID`),
  ADD KEY `Categories_ID` (`Categories_ID`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tag_product`
--
ALTER TABLE `tag_product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Tags_ID` (`Tags_ID`),
  ADD KEY `Products_ID` (`Products_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`Customers_ID`) REFERENCES `customers` (`ID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`Products_ID`) REFERENCES `products` (`ID`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`Products_ID`) REFERENCES `products` (`ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Customers_ID`) REFERENCES `customers` (`ID`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`Orders_ID`) REFERENCES `orders` (`ID`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`Products_ID`) REFERENCES `products` (`ID`),
  ADD CONSTRAINT `order_item_ibfk_3` FOREIGN KEY (`OrderItemStatus_ID`) REFERENCES `orderitemstatus` (`ID`);

--
-- Constraints for table `order_shipment`
--
ALTER TABLE `order_shipment`
  ADD CONSTRAINT `order_shipment_ibfk_1` FOREIGN KEY (`Orders_ID`) REFERENCES `orders` (`ID`),
  ADD CONSTRAINT `order_shipment_ibfk_2` FOREIGN KEY (`Shipments_ID`) REFERENCES `shipments` (`ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Orders_ID`) REFERENCES `orders` (`ID`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`PaymentMethod_ID`) REFERENCES `paymentmethod` (`ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Suppliers_ID`) REFERENCES `suppliers` (`ID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`Categories_ID`) REFERENCES `categories` (`ID`);

--
-- Constraints for table `tag_product`
--
ALTER TABLE `tag_product`
  ADD CONSTRAINT `tag_product_ibfk_1` FOREIGN KEY (`Tags_ID`) REFERENCES `tags` (`ID`),
  ADD CONSTRAINT `tag_product_ibfk_2` FOREIGN KEY (`Products_ID`) REFERENCES `products` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
