-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 03:41 PM
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
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `DishID` int(11) NOT NULL,
  `PromotionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`DishID`, `PromotionID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Name`, `Description`) VALUES
(1, 'Cold Mezze', 'Chilled, refreshing appetizers typically served to start a Lebanese meal'),
(2, 'Hot Mezze', 'Warm appetizers that often include pastries and pies'),
(3, 'Grills', 'Various meats and vegetables grilled to perfection'),
(4, 'Mains', 'Hearty Lebanese main courses, often served with rice or bread'),
(5, 'Salads', 'Fresh, vibrant Lebanese salads often dressed with lemon and olive oil'),
(6, 'Soups', 'Comforting and nourishing Lebanese soups'),
(7, 'Sweets', 'Classic Lebanese desserts, often featuring nuts, honey, and phyllo pastry'),
(8, 'Beverages', 'Traditional Lebanese drinks, both hot and cold'),
(9, 'Breads', 'A variety of Lebanese breads, from flatbreads to puffed loaves'),
(10, 'Specials', 'Chef’s special dishes that feature seasonal ingredients');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Name`, `ContactNumber`, `Email`, `Address`) VALUES
(1, 'Mohammad Ali', '+961 71 123456', 'mohammad@gmail.com', 'Main Street, Beirut, Lebanon'),
(2, 'Zahraa Mahmoud', '+961 76 234567', 'zahraa@hotmail.com', 'Palm Street, Jounieh, Lebanon'),
(3, 'Ahmed Hassan', '+961 70 345678', 'ahmed@yahoo.com', 'Red Road, Zahle, Lebanon'),
(4, 'Fatima Abdullah', '+961 81 456789', 'fatima@gmail.com', 'Green Boulevard, Byblos, Lebanon'),
(5, 'Omar Ibrahim', '+961 76 567890', 'omar@hotmail.com', 'Blue Street, Tyre, Lebanon'),
(6, 'Layla Khoury', '+961 81 678901', 'layla@yahoo.com', 'Yellow Lane, Baalbek, Lebanon'),
(7, 'Ali Hussein', '+961 70 789012', 'ali@gmail.com', 'Orange Avenue, Tripoli, Lebanon'),
(8, 'Sara Ahmed', '+961 71 890123', 'sara@hotmail.com', 'Violet Drive, Saida, Lebanon'),
(9, 'Youssef Khalil', '+961 76 901234', 'youssef@yahoo.com', 'White Road, Nabatieh, Lebanon'),
(10, 'Noura Said', '+961 70 012345', 'noura@gmail.com', 'Black Street, Batroun, Lebanon'),
(11, 'hus', 'dsah', 'dsah', 'dahj');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `DishID` int(11) NOT NULL,
  `DishName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `CookingTime` int(11) DEFAULT NULL,
  `ImageLink` varchar(255) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`DishID`, `DishName`, `Description`, `Price`, `CookingTime`, `ImageLink`, `CategoryID`) VALUES
(1, 'Hummus', 'Creamy chickpea dip with tahini and lemon juice', 6.50, 10, 'hummus_img.jpg', 1),
(2, 'Baba Ghanouj', 'Smoky eggplant dip with garlic and tahini', 7.00, 10, 'baba_ghanouj_img.jpg', 1),
(3, 'Labneh', 'Strained yogurt spread topped with olive oil', 5.00, 5, 'labneh_img.jpg', 1),
(4, 'Kibbeh', 'Bulgur wheat shells filled with spiced ground meat', 8.00, 20, 'kibbeh_img.jpg', 2),
(5, 'Sambousek', 'Pastry pockets filled with cheese or meat', 7.50, 15, 'sambousek_img.jpg', 2),
(6, 'Shish Taouk', 'Marinated chicken skewers grilled to perfection', 12.00, 15, 'shish_taouk_img.jpg', 3),
(7, 'Kafta', 'Grilled skewers of minced meat with parsley and onions', 11.00, 15, 'kafta_img.jpg', 3),
(8, 'Mansaf', 'Lamb cooked in a sauce of fermented dried yogurt', 14.00, 30, 'mansaf_img.jpg', 4),
(9, 'Tabbouleh', 'Fresh parsley salad with tomatoes, mint, and bulgur', 6.00, 5, 'tabbouleh_img.jpg', 5),
(10, 'Lentil Soup', 'Hearty soup made with lentils and vegetables', 5.50, 25, 'lentil_soup_img.jpg', 6),
(11, 'Baklava', 'Sweet pastry with nuts and syrup', 4.00, 45, 'baklava_img.jpg', 7),
(12, 'Ayran', 'Cold yogurt beverage mixed with salt', 2.50, 2, 'ayran_img.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `event_booking`
--

CREATE TABLE `event_booking` (
  `EventBookingID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `SeatingAreaID` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `NumberOfGuests` int(11) DEFAULT NULL,
  `SpecialRequests` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `event_booking`
--

INSERT INTO `event_booking` (`EventBookingID`, `CustomerID`, `SeatingAreaID`, `Date`, `NumberOfGuests`, `SpecialRequests`) VALUES
(1, 1, 1, '2024-05-16 00:16:10', 50, 'Wedding reception'),
(2, 2, 2, '2024-05-01 00:16:10', 25, 'Corporate event'),
(3, 3, 3, '2024-04-26 00:16:10', 30, 'Family reunion'),
(4, 4, 4, '2024-05-06 00:16:10', 10, 'Book club meeting'),
(5, 5, 5, '2024-05-11 00:16:10', 60, 'Anniversary party'),
(6, 6, 1, '2024-05-21 00:16:10', 70, 'Graduation celebration'),
(7, 7, 2, '2024-05-31 00:16:10', 40, 'Engagement party'),
(8, 8, 3, '2024-06-05 00:16:10', 55, 'Retirement party'),
(9, 9, 4, '2024-06-15 00:16:10', 20, 'Baby shower'),
(10, 10, 5, '2024-06-30 00:16:10', 100, 'New year party');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Comments` varchar(50) DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackID`, `CustomerID`, `OrderID`, `Rating`, `Comments`, `Date`) VALUES
(11, 1, 1, 5, 'Excellent food and service!', '2024-04-16 00:20:18'),
(12, 2, 2, 4, 'Tasty dishes, but a bit slow', '2024-04-15 00:20:18'),
(13, 3, 3, 3, 'Good, but could be spicier', '2024-04-14 00:20:18'),
(14, 4, 4, 2, 'Not satisfied with the cleanliness', '2024-04-13 00:20:18'),
(15, 5, 5, 5, 'Loved the ambiance', '2024-04-12 00:20:18'),
(16, 6, 6, 4, 'Great service!', '2024-04-11 00:20:18'),
(17, 7, 7, 3, 'Average experience', '2024-04-10 00:20:18'),
(18, 8, 8, 2, 'Food was cold', '2024-04-09 00:20:18'),
(19, 9, 9, 5, 'Perfect evening out', '2024-04-08 00:20:18'),
(20, 10, 10, 4, 'Nice place, will visit again', '2024-04-07 00:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `IngredientID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `QuantityInStock` int(11) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`IngredientID`, `Name`, `QuantityInStock`, `SupplierID`) VALUES
(1, 'Bulgur', 125, 1),
(2, 'Tahini', 50, 2),
(3, 'Sumac', 25, 3),
(4, 'Labneh', 80, 4),
(5, 'Pita Bread', 200, 5),
(6, 'Kebab Spices', 40, 6),
(7, 'Zaatar', 60, 7),
(8, 'Mint', 30, 8),
(9, 'Pomegranate Molasses', 20, 9),
(10, 'Cedar Honey', 15, 10),
(11, 'Tomato', 50, 5);

-- --------------------------------------------------------

--
-- Table structure for table `menu_set`
--

CREATE TABLE `menu_set` (
  `MenuSetID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `AvailableTimes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `menu_set`
--

INSERT INTO `menu_set` (`MenuSetID`, `Name`, `Price`, `AvailableTimes`) VALUES
(1, 'Breakfast Special', 15.00, '08:00-11:00'),
(2, 'Lunch Delight', 20.00, '12:00-15:00'),
(3, 'Dinner Feast', 30.00, '19:00-23:00'),
(4, 'Weekend Brunch', 25.00, '11:00-14:00'),
(5, 'Family Platter', 45.00, 'All Day'),
(6, 'Couples Set', 40.00, '18:00-23:00'),
(7, 'Vegetarian Picks', 22.00, 'All Day'),
(8, 'Mezze Mix', 18.00, '12:00-22:00'),
(9, 'Grill Combo', 35.00, 'All Day'),
(10, 'Dessert Assortment', 12.00, 'All Day');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `TableID` int(11) NOT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `TableSizeID` int(11) DEFAULT NULL,
  `AvailabilityStatus` tinyint(1) DEFAULT NULL,
  `SeatingAreaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`TableID`, `SeatingCapacity`, `Location`, `TableSizeID`, `AvailabilityStatus`, `SeatingAreaID`) VALUES
(1, 2, 'Corner', 1, 1, 1),
(2, 4, 'Near Window', 2, 1, 3),
(3, 6, 'Private Room', 3, 0, 4),
(4, 8, 'Outdoor', 4, 1, 5),
(5, 10, 'Patio', 5, 1, 6),
(6, 12, 'Banquet Hall', 6, 0, 7),
(7, 4, 'Bar Area', 2, 1, 8),
(8, 2, 'Terrace', 1, 0, 9),
(9, 6, 'Main Dining Area', 3, 1, 10),
(10, 8, 'Corner', 4, 0, 1),
(11, 2, 'Near Window', 1, 1, 3),
(12, 4, 'Patio', 2, 1, 6),
(13, 4, 'Main Dining', 2, 0, 10),
(14, 6, 'Private Room', 3, 1, 4),
(15, 6, 'Outdoor', 3, 0, 5),
(16, 8, 'Bar Area', 4, 1, 8),
(17, 8, 'Terrace', 4, 0, 9),
(18, 10, 'Banquet Hall', 5, 1, 7),
(19, 12, 'Corner', 6, 1, 1),
(20, 12, 'Center', 6, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `TableID` int(11) DEFAULT NULL,
  `OrderStatusID` int(11) DEFAULT NULL,
  `OrderTime` datetime DEFAULT NULL,
  `TotalBill` decimal(10,2) DEFAULT NULL,
  `SpecialInstructions` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `TableID`, `OrderStatusID`, `OrderTime`, `TotalBill`, `SpecialInstructions`) VALUES
(1, 1, 1, 1, '2024-04-15 23:14:45', 45.00, 'Allergic to peanuts'),
(2, 2, 2, 2, '2024-04-15 22:14:45', 30.00, 'Extra spicy'),
(3, 3, 3, 3, '2024-04-15 21:14:45', 60.00, ''),
(4, 4, 4, 4, '2024-04-15 20:14:45', 22.00, 'Without onions'),
(5, 5, 5, 5, '2024-04-15 00:14:45', 15.00, 'Child-friendly'),
(6, 6, 6, 6, '2024-04-14 00:14:45', 35.00, 'No garlic'),
(7, 7, 7, 7, '2024-04-13 00:14:45', 28.50, ''),
(8, 8, 8, 8, '2024-04-12 00:14:45', 18.00, 'Extra napkins'),
(9, 9, 9, 9, '2024-04-11 00:14:45', 42.00, 'Celebrate birthday'),
(10, 10, 10, 10, '2024-04-10 00:14:45', 55.00, 'Quiet table'),
(15, 1, 1, NULL, '2024-04-22 17:32:38', 19.50, 'jkjkjh'),
(16, 1, 1, 16, '2024-04-22 17:35:40', 19.50, '123'),
(17, 1, 1, 17, '2024-04-22 17:36:14', 26.00, 'hello'),
(18, 3, 8, 18, '2024-04-22 17:45:49', 10.00, 'helasa'),
(20, 1, 2, 20, '2024-04-22 17:46:38', 36.00, 'sjadj'),
(21, 1, 11, 21, '2024-04-22 17:47:19', 14.00, 'das'),
(22, 1, 11, 22, '2024-04-22 17:48:39', 14.00, 'dasdas'),
(23, 1, 11, 23, '2024-04-22 20:05:41', 21.00, 'sjdajh'),
(24, 3, 2, 24, '2024-04-22 21:02:07', 48.00, 'bla bla'),
(25, 3, 8, 25, '2024-04-23 16:37:17', 20.00, 'No Garlic');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `DishID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `PricePerItem` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`OrderDetailID`, `OrderID`, `DishID`, `Quantity`, `PricePerItem`) VALUES
(1, 1, 1, 2, 6.50),
(2, 2, 2, 1, 7.00),
(3, 3, 3, 3, 5.00),
(4, 4, 4, 1, 8.00),
(5, 5, 5, 2, 7.50),
(6, 6, 6, 1, 12.00),
(7, 7, 7, 2, 11.00),
(8, 8, 8, 1, 14.00),
(9, 9, 9, 1, 6.00),
(10, 10, 10, 1, 5.50),
(23, 23, 2, 3, 7.00),
(24, 24, 4, 6, 8.00),
(25, 25, 3, 4, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `OrderStatusID` int(11) NOT NULL,
  `StatusName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`OrderStatusID`, `StatusName`) VALUES
(1, 'Order Received'),
(2, 'Preparing'),
(3, 'Ready to Serve'),
(4, 'Served'),
(5, 'Paid'),
(6, 'Cancelled'),
(7, 'Refunded'),
(8, 'Pending Payment'),
(9, 'Order Dispatched'),
(10, 'Delivered'),
(13, 'Order Recieved'),
(16, 'Order Recieved'),
(17, 'Order Recieved'),
(18, 'Order Recieved'),
(20, 'Order Recieved'),
(21, 'Order Recieved'),
(22, 'Order Recieved'),
(23, 'Order Recieved'),
(24, 'Order Recieved'),
(25, 'Order Recieved');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `PaymentMethodID` int(11) NOT NULL,
  `MethodName` varchar(50) DEFAULT NULL,
  `AdditionalFees` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`PaymentMethodID`, `MethodName`, `AdditionalFees`) VALUES
(1, 'Cash', 0.00),
(2, 'Credit Card', 1.50),
(3, 'Online Payment', 0.00),
(4, 'Bank Transfer', 0.50),
(5, 'Mobile Payment', 0.00),
(6, 'Gift Card', 0.00),
(7, 'Coupon', 0.00),
(8, 'Loyalty Points', 0.00),
(9, 'Check', 0.75),
(10, 'Other', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `PromotionID` int(11) NOT NULL,
  `DiscountRate` decimal(5,2) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ApplicableItems` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`PromotionID`, `DiscountRate`, `StartDate`, `EndDate`, `ApplicableItems`) VALUES
(1, 10.00, '2024-05-01', '2024-05-31', 'All'),
(2, 15.00, '2024-06-01', '2024-06-15', 'Mezze'),
(3, 20.00, '2024-06-16', '2024-06-30', 'Grills'),
(4, 5.00, '2024-07-01', '2024-07-15', 'Desserts'),
(5, 25.00, '2024-07-16', '2024-07-31', 'Beverages'),
(6, 30.00, '2024-08-01', '2024-08-15', 'Salads'),
(7, 35.00, '2024-08-16', '2024-08-31', 'Mains'),
(8, 40.00, '2024-09-01', '2024-09-15', 'Soups'),
(9, 45.00, '2024-09-16', '2024-09-30', 'Sweets'),
(10, 50.00, '2024-10-01', '2024-10-15', 'Breads');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `ReservationID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `TableID` int(11) DEFAULT NULL,
  `ReservationStatusID` int(11) DEFAULT NULL,
  `ReservationDate` datetime DEFAULT NULL,
  `NumberOfGuests` int(11) DEFAULT NULL,
  `SpecialRequests` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`ReservationID`, `CustomerID`, `TableID`, `ReservationStatusID`, `ReservationDate`, `NumberOfGuests`, `SpecialRequests`) VALUES
(93, 1, 5, 1, '2024-04-23 00:15:49', 2, 'Window seating'),
(94, 2, 4, 2, '2024-04-17 00:15:49', 4, 'Birthday decoration'),
(95, 3, 3, 3, '2024-04-18 00:15:49', 3, ''),
(96, 4, 2, 4, '2024-04-19 00:15:49', 5, 'High chair for baby'),
(97, 5, 1, 5, '2024-04-20 00:15:49', 2, 'Anniversary'),
(98, 6, 6, 1, '2024-04-21 00:15:49', 4, 'Near the bar'),
(99, 7, 7, 2, '2024-04-22 00:15:49', 6, ''),
(100, 8, 8, 3, '2024-04-23 00:15:49', 3, 'Quiet area'),
(101, 9, 9, 4, '2024-04-24 00:15:49', 2, ''),
(102, 10, 10, 5, '2024-04-25 00:15:49', 8, 'Need space for a stroller');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_status`
--

CREATE TABLE `reservation_status` (
  `ReservationStatusID` int(11) NOT NULL,
  `StatusName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reservation_status`
--

INSERT INTO `reservation_status` (`ReservationStatusID`, `StatusName`) VALUES
(1, 'Pending'),
(2, 'Confirmed'),
(3, 'Cancelled'),
(4, 'Completed'),
(5, 'No Show'),
(6, 'Changed'),
(7, 'Delayed'),
(8, 'Early'),
(9, 'On-Hold'),
(10, 'Walk-In');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(50) DEFAULT NULL,
  `PermissionsLevel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `RoleName`, `PermissionsLevel`) VALUES
(1, 'Manager', 5),
(2, 'Chef', 4),
(3, 'Sous Chef', 4),
(4, 'Waiter', 2),
(5, 'Host', 2),
(6, 'Bartender', 2),
(7, 'Busser', 1),
(8, 'Dishwasher', 1),
(9, 'Accountant', 3),
(10, 'Maintenance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seating_area`
--

CREATE TABLE `seating_area` (
  `SeatingAreaID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `AmbienceType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `seating_area`
--

INSERT INTO `seating_area` (`SeatingAreaID`, `Name`, `Capacity`, `AmbienceType`) VALUES
(1, 'Corner', 20, 'Quiet'),
(2, 'Center', 30, 'Lively'),
(3, 'Near Window', 15, 'Private'),
(4, 'Private Room', 10, 'Exclusive'),
(5, 'Outdoor', 25, 'Patio'),
(6, 'Patio', 40, 'Garden'),
(7, 'Banquet Hall', 50, 'Event'),
(8, 'Bar Area', 15, 'Social'),
(9, 'Terrace', 20, 'Rooftop'),
(10, 'Main Dining Area', 60, 'Family');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `Shift` varchar(50) DEFAULT NULL,
  `RoleID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `Name`, `ContactNumber`, `Email`, `Salary`, `Shift`, `RoleID`) VALUES
(1, 'Samir issa', '+961 3 482717', 'Samir@restaurant.lb', 1500.00, 'Morning', 1),
(2, 'Reem Wehbe', '+961 3 447894', 'Reem@restaurant.lb', 800.00, 'After Noon', 4),
(4, 'Nadine marji', '+961 3 892718', 'nadinem@restaurant.lb', 500.00, 'Evening', 5),
(5, 'Nadine Tab', '+961 3 444444', 'nadine@restaurant.lb', 800.00, 'Morning', 4),
(6, 'Ibrahim Ibrahim ', '+961 81 271890', 'Ibrahim@restaurant.lb', 800.00, 'Noon', 2),
(7, 'Maha Fghali', '+961 76 261721', 'maha@restaurant.lb', 600.00, 'midnight', 7),
(8, 'Cristiano Ronaldo', '+961 1 821821', 'cristiano@restaurant.lb', 600.00, 'evening', 10),
(9, 'Rima wisam', '+971 1218121', 'rima@restaurant.lb', 900.00, 'Evening', 1),
(10, 'sara dbok', '+961 3 821721', 'sara@restaurant.lb', 500.00, 'Morning', 8);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ContactNumber` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `PreferredDeliveryDays` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `Name`, `ContactNumber`, `Email`, `Address`, `PreferredDeliveryDays`) VALUES
(1, 'Beirut Provisions', '+961 3 101010', 'supply@beirutprovisions.lb', 'Downtown Street, Beirut, Lebanon', 'Monday,Wednesday,Friday'),
(2, 'Cedar Supplies', '+961 4 202020', 'order@cedarsupplies.lb', 'Cedars Avenue, Bsharri, Lebanon', 'Tuesday,Thursday'),
(3, 'Phoenician Ingredients', '+961 1 303030', 'contact@phoenician.lb', 'Old Souk, Byblos, Lebanon', 'Monday,Tuesday'),
(4, 'Sidon Seafood Supply', '+961 7 404040', 'seafood@sidonsupply.lb', 'Fishing Port, Sidon, Lebanon', 'Wednesday,Friday'),
(5, 'Bekaa Valley Farms', '+961 8 505050', 'fresh@bekaafarms.lb', 'Wine Road, Bekaa Valley, Lebanon', 'Tuesday,Thursday,Saturday'),
(6, 'Mount Lebanon Orchards', '+961 9 606060', 'orchard@mountleb.lb', 'Mountain Path, Mount Lebanon, Lebanon', 'Monday,Wednesday'),
(7, 'Tripoli Spice Traders', '+961 6 707070', 'spices@tripolitraders.lb', 'Spice Market, Tripoli, Lebanon', 'Sunday,Thursday'),
(8, 'Akkar Grain Suppliers', '+961 5 808080', 'grains@akkarsuppliers.lb', 'Agricultural Road, Akkar, Lebanon', 'Monday,Thursday'),
(9, 'Tyre Olive Groves', '+961 7 909090', 'oliveoil@tyregroves.lb', 'Olive Street, Tyre, Lebanon', 'Tuesday,Friday'),
(10, 'Shouf Cedar Products', '+961 5 101112', 'cedar@shoufproducts.lb', 'Cedar Reserve, Shouf, Lebanon', 'Wednesday,Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `table_size`
--

CREATE TABLE `table_size` (
  `TableSizeID` int(11) NOT NULL,
  `NumberOfSeats` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `table_size`
--

INSERT INTO `table_size` (`TableSizeID`, `NumberOfSeats`) VALUES
(1, 2),
(2, 4),
(3, 6),
(4, 8),
(5, 10),
(6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE `uses` (
  `DishID` int(11) NOT NULL,
  `IngredientID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`DishID`, `IngredientID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`DishID`,`PromotionID`),
  ADD KEY `PromotionID` (`PromotionID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`DishID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `event_booking`
--
ALTER TABLE `event_booking`
  ADD PRIMARY KEY (`EventBookingID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `SeatingAreaID` (`SeatingAreaID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`IngredientID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `menu_set`
--
ALTER TABLE `menu_set`
  ADD PRIMARY KEY (`MenuSetID`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`TableID`),
  ADD KEY `TableSizeID` (`TableSizeID`),
  ADD KEY `SeatingAreaID` (`SeatingAreaID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD UNIQUE KEY `OrderStatusID_2` (`OrderStatusID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `TableID` (`TableID`),
  ADD KEY `OrderStatusID` (`OrderStatusID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `DishID` (`DishID`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`OrderStatusID`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`PaymentMethodID`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ReservationID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `TableID` (`TableID`),
  ADD KEY `ReservationStatusID` (`ReservationStatusID`);

--
-- Indexes for table `reservation_status`
--
ALTER TABLE `reservation_status`
  ADD PRIMARY KEY (`ReservationStatusID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`),
  ADD UNIQUE KEY `RoleName` (`RoleName`);

--
-- Indexes for table `seating_area`
--
ALTER TABLE `seating_area`
  ADD PRIMARY KEY (`SeatingAreaID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `table_size`
--
ALTER TABLE `table_size`
  ADD PRIMARY KEY (`TableSizeID`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`DishID`,`IngredientID`),
  ADD KEY `IngredientID` (`IngredientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `DishID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `event_booking`
--
ALTER TABLE `event_booking`
  MODIFY `EventBookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `IngredientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu_set`
--
ALTER TABLE `menu_set`
  MODIFY `MenuSetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mytable`
--
ALTER TABLE `mytable`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `OrderStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `PaymentMethodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `PromotionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ReservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `reservation_status`
--
ALTER TABLE `reservation_status`
  MODIFY `ReservationStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seating_area`
--
ALTER TABLE `seating_area`
  MODIFY `SeatingAreaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_size`
--
ALTER TABLE `table_size`
  MODIFY `TableSizeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`DishID`) REFERENCES `dish` (`DishID`),
  ADD CONSTRAINT `apply_ibfk_2` FOREIGN KEY (`PromotionID`) REFERENCES `promotion` (`PromotionID`);

--
-- Constraints for table `dish`
--
ALTER TABLE `dish`
  ADD CONSTRAINT `dish_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);

--
-- Constraints for table `event_booking`
--
ALTER TABLE `event_booking`
  ADD CONSTRAINT `event_booking_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `event_booking_ibfk_2` FOREIGN KEY (`SeatingAreaID`) REFERENCES `seating_area` (`SeatingAreaID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `ingredient_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);

--
-- Constraints for table `mytable`
--
ALTER TABLE `mytable`
  ADD CONSTRAINT `mytable_ibfk_1` FOREIGN KEY (`TableSizeID`) REFERENCES `table_size` (`TableSizeID`),
  ADD CONSTRAINT `mytable_ibfk_2` FOREIGN KEY (`SeatingAreaID`) REFERENCES `seating_area` (`SeatingAreaID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`TableID`) REFERENCES `mytable` (`TableID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`OrderStatusID`) REFERENCES `order_status` (`OrderStatusID`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`DishID`) REFERENCES `dish` (`DishID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`TableID`) REFERENCES `mytable` (`TableID`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`ReservationStatusID`) REFERENCES `reservation_status` (`ReservationStatusID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`);

--
-- Constraints for table `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `uses_ibfk_1` FOREIGN KEY (`DishID`) REFERENCES `dish` (`DishID`),
  ADD CONSTRAINT `uses_ibfk_2` FOREIGN KEY (`IngredientID`) REFERENCES `ingredient` (`IngredientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
