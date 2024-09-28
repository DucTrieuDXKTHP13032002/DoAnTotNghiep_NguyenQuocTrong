-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 26, 2024 lúc 11:41 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datn_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `modify_date` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `create_date`, `is_active`, `modify_date`, `password`, `username`, `role_id`) VALUES
(1, '2024-09-26', 1, '2024-09-26', '$2a$10$qX/RM7hTaOPxVOU13b0uSu9xMF/m/ElkTn4P2crJe0hfq26s.3GWW', 'khanhbatluc', 3),
(2, '2024-09-26', 1, '2024-09-26', '$2a$10$36rR3tL.icRVIW0/eQnWm.mjLmxti68or.9gaBndN9Z.Ongr8eDoG', 'admin', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_detail`
--

CREATE TABLE `account_detail` (
  `id` bigint(20) NOT NULL,
  `birthdate` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `address` varchar(265) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account_detail`
--

INSERT INTO `account_detail` (`id`, `birthdate`, `email`, `fullname`, `gender`, `phone`, `account_id`, `address`) VALUES
(1, '2024-09-26 00:00:00', 'khanh@gmail.com', 'nguyen quoc khanh', 'Nam', '0989898777', 1, 'Da nang'),
(2, '2024-09-26 00:00:00', 'admin@gmail.com', 'admin ', 'Nam', '0989878987', 2, 'dsdasdas');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `price` double NOT NULL,
  `size` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `cache` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`id`, `create_date`, `modify_date`, `price`, `size`, `stock`, `product_id`, `cache`, `name`) VALUES
(1, '2022-06-01', '2022-06-01', 1250000, 39, 20, 2, 3, 'Giày Sneaker Adidas Eq21 Triple Black'),
(2, '2022-06-01', '2022-06-01', 1350000, 40, 10, 2, 7, 'Giày Sneaker Adidas Eq21 Triple Black'),
(3, '2022-06-01', '2022-06-01', 1450000, 41, 7, 2, 2, 'Giày Sneaker Adidas Eq21 Triple Black'),
(4, '2022-06-01', '2022-06-01', 1320000, 39, 10, 3, 6, 'Giày Sneaker Adidas Stansmith Mule'),
(5, '2022-06-01', '2022-06-01', 1420000, 40, 10, 3, 6, 'Giày Sneaker Adidas Stansmith Mule'),
(6, '2022-06-01', '2022-06-01', 1520000, 41, 5, 3, 1, 'Giày Sneaker Adidas Stansmith Mule'),
(7, '2022-06-01', '2022-06-01', 1610000, 39, 4, 4, 2, 'Giày Sneaker Adidas 4d Fwd Pulse'),
(8, '2022-06-01', '2022-06-01', 17100000, 40, 9, 4, 1, 'Giày Sneaker Adidas 4d Fwd Pulse'),
(9, '2022-06-01', '2022-06-01', 18100000, 41, 10, 4, 0, 'Giày Sneaker Adidas 4d Fwd Pulse'),
(10, '2022-06-01', '2022-06-01', 1200000, 39, 14, 1, 0, 'Giày Sneaker Adidas Bravada NAM ANA'),
(11, '2022-06-01', '2022-06-01', 1300000, 40, 9, 1, 0, 'Giày Sneaker Adidas Bravada NAM ANA'),
(12, '2022-06-01', '2022-06-01', 1400000, 41, 9, 1, 0, 'Giày Sneaker Adidas Bravada NAM ANA'),
(13, '2022-06-01', '2022-06-01', 1300000, 39, 10, 20, 0, 'Chuck Taylor All Star Classic AB'),
(14, '2022-06-01', '2022-06-01', 1400000, 40, 10, 20, 0, 'Chuck Taylor All Star Classic AB'),
(15, '2022-06-01', '2022-06-01', 1500000, 41, 10, 20, 0, 'Chuck Taylor All Star Classic AB'),
(16, '2022-06-01', '2022-06-01', 1400000, 39, 10, 19, 0, 'Giày Thể Thao Fila Shiny Pink '),
(17, '2022-06-01', '2022-06-01', 1500000, 40, 10, 19, 0, 'Giày Thể Thao Fila Shiny Pink '),
(18, '2022-06-01', '2022-06-01', 1600000, 41, 10, 19, 0, 'Giày Thể Thao Fila Shiny Pink '),
(19, '2022-06-01', '2022-06-01', 1500000, 39, 5, 5, 3, 'GIÀY NIKE RENEW RIDE 3 NỮ'),
(20, '2022-06-01', '2022-06-01', 1600000, 40, 10, 5, 0, 'GIÀY NIKE RENEW RIDE 3 NỮ'),
(21, '2022-06-01', '2022-06-01', 1700000, 41, 10, 5, 0, 'GIÀY NIKE RENEW RIDE 3 NỮ'),
(22, '2022-06-01', '2022-06-01', 1600000, 39, 10, 6, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NAM '),
(23, '2022-06-01', '2022-06-01', 1700000, 40, 10, 6, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NAM '),
(24, '2022-06-01', '2022-06-01', 1800000, 41, 10, 6, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NAM '),
(25, '2022-06-01', '2022-06-01', 1550000, 39, 10, 8, 0, 'GIÀY NIKE AIR ZOOM RIVAL FLY'),
(26, '2022-06-01', '2022-06-01', 1650000, 40, 10, 8, 0, 'GIÀY NIKE AIR ZOOM RIVAL FLY'),
(27, '2022-06-01', '2022-06-01', 1750000, 41, 10, 8, 0, 'GIÀY NIKE AIR ZOOM RIVAL FLY'),
(28, '2022-06-01', '2022-06-01', 1650000, 39, 10, 9, 0, 'REEBOK ROYAL TECHQUET DEPOR ACE NAE'),
(29, '2022-06-01', '2022-06-01', 1750000, 40, 10, 9, 0, 'REEBOK ROYAL TECHQUET DEPOR ACE NAE'),
(30, '2022-06-01', '2022-06-01', 1850000, 41, 10, 9, 0, 'REEBOK ROYAL TECHQUET DEPOR ACE NAE'),
(31, '2022-06-01', '2022-06-01', 1750000, 39, 10, 10, 0, 'REEBOK ROYAL COMPLETE CLN2 HAZN AB'),
(32, '2022-06-01', '2022-06-01', 1850000, 40, 10, 10, 0, 'REEBOK ROYAL COMPLETE CLN2 HAZN AB'),
(33, '2022-06-01', '2022-06-01', 1950000, 41, 10, 10, 0, 'REEBOK ROYAL COMPLETE CLN2 HAZN AB'),
(34, '2022-06-01', '2022-06-01', 1850000, 39, 10, 11, 0, 'LIQUIFECT 902 BR AUTMAX AB SN'),
(35, '2022-06-01', '2022-06-01', 1950000, 40, 10, 11, 0, 'LIQUIFECT 902 BR AUTMAX AB SN'),
(36, '2022-06-01', '2022-06-01', 2050000, 41, 10, 11, 0, 'LIQUIFECT 902 BR AUTMAX AB SN'),
(37, '2022-06-01', '2022-06-01', 1850000, 39, 10, 12, 0, 'HIIT TR 2.0 FIFA ZATHER ONE'),
(38, '2022-06-01', '2022-06-01', 1950000, 40, 10, 12, 0, 'HIIT TR 2.0 FIFA ZATHER ONE'),
(39, '2022-06-01', '2022-06-01', 2050000, 41, 10, 12, 0, 'HIIT TR 2.0 FIFA ZATHER ONE'),
(40, '2022-06-01', '2022-06-01', 1950000, 39, 7, 13, 2, 'GIÀY PUMA ANZARUB LITE NAM A1'),
(41, '2022-06-01', '2022-06-01', 2050000, 40, 10, 13, 0, 'GIÀY PUMA ANZARUB LITE NAM A1'),
(42, '2022-06-01', '2022-06-01', 2150000, 41, 10, 13, 0, 'GIÀY PUMA ANZARUB LITE NAM A1'),
(43, '2022-06-01', '2022-06-01', 2050000, 39, 10, 14, 0, 'GIÀY PUMA CAVEN NỮ AB CAP'),
(44, '2022-06-01', '2022-06-01', 2150000, 40, 10, 14, 0, 'GIÀY PUMA CAVEN NỮ AB CAP'),
(45, '2022-06-01', '2022-06-01', 2250000, 41, 10, 14, 0, 'GIÀY PUMA CAVEN NỮ AB CAP'),
(46, '2022-06-01', '2022-06-01', 2050000, 39, 10, 15, 0, 'GIÀY PUMA ELICTIRIFY NITRO NAM BB'),
(47, '2022-06-01', '2022-06-01', 2150000, 40, 10, 15, 0, 'GIÀY PUMA ELICTIRIFY NITRO NAM BB'),
(48, '2022-06-01', '2022-06-01', 2250000, 41, 10, 15, 0, 'GIÀY PUMA ELICTIRIFY NITRO NAM BB'),
(49, '2022-06-01', '2022-06-01', 2050000, 39, 10, 16, 0, 'GIÀY PUMA RALPH SAMPSON LO JOKER'),
(50, '2022-06-01', '2022-06-01', 2150000, 40, 10, 16, 0, 'GIÀY PUMA RALPH SAMPSON LO JOKER'),
(51, '2022-06-01', '2022-06-01', 2250000, 41, 10, 16, 0, 'GIÀY PUMA RALPH SAMPSON LO JOKER'),
(52, '2022-06-01', '2022-06-01', 2150000, 39, 10, 17, 0, 'Giày Fila Unisex Como Mule Trắng'),
(53, '2022-06-01', '2022-06-01', 2250000, 40, 10, 17, 0, 'Giày Fila Unisex Como Mule Trắng'),
(54, '2022-06-01', '2022-06-01', 2350000, 41, 10, 17, 0, 'Giày Fila Unisex Como Mule Trắng'),
(55, '2022-06-01', '2022-06-01', 2250000, 39, 10, 18, 0, 'Giày Fila Unisex Scanline Mule Đen'),
(56, '2022-06-01', '2022-06-01', 2350000, 40, 10, 18, 0, 'Giày Fila Unisex Scanline Mule Đen'),
(57, '2022-06-01', '2022-06-01', 2450000, 41, 10, 18, 0, 'Giày Fila Unisex Scanline Mule Đen'),
(58, '2022-06-01', '2022-06-01', 2350000, 39, 9, 21, 1, 'Chuck Taylor All Star Crafted Stripes'),
(59, '2022-06-01', '2022-06-01', 2450000, 40, 10, 21, 0, 'Chuck Taylor All Star Crafted Stripes'),
(60, '2022-06-01', '2022-06-01', 2550000, 41, 10, 21, 0, 'Chuck Taylor All Star Crafted Stripes'),
(61, '2022-06-01', '2022-06-01', 2350000, 39, 10, 22, 0, 'Chuck 70 Seasonal Color CX CATER'),
(62, '2022-06-01', '2022-06-01', 2450000, 40, 10, 22, 0, 'Chuck 70 Seasonal Color CX CATER'),
(63, '2022-06-01', '2022-06-01', 2550000, 41, 10, 22, 0, 'Chuck 70 Seasonal Color CX CATER'),
(64, '2022-06-01', '2022-06-01', 2350000, 39, 10, 23, 0, 'Chuck Taylor All Star Lift Platform'),
(65, '2022-06-01', '2022-06-01', 2450000, 40, 10, 23, 0, 'Chuck Taylor All Star Lift Platform'),
(66, '2022-06-01', '2022-06-01', 2550000, 41, 10, 23, 0, 'Chuck Taylor All Star Lift Platform'),
(67, '2022-06-01', '2022-06-01', 2350000, 39, 10, 24, 0, 'Giày Super Light 19 nam AB'),
(68, '2022-06-01', '2022-06-01', 2450000, 40, 10, 24, 0, 'Giày Super Light 19 nam AB'),
(69, '2022-06-01', '2022-06-01', 2550000, 41, 10, 24, 0, 'Giày Super Light 19 nam AB'),
(70, '2022-06-01', '2022-06-01', 2350000, 39, 10, 25, 0, 'Giày chạy bộ nam SUPER ID'),
(71, '2022-06-01', '2022-06-01', 2450000, 40, 10, 25, 0, 'Giày chạy bộ nam SUPER ID'),
(72, '2022-06-01', '2022-06-01', 2550000, 41, 10, 25, 0, 'Giày chạy bộ nam SUPER ID'),
(73, '2022-06-01', '2022-06-01', 2350000, 39, 9, 26, 0, 'Giày chạy bộ nữ SUPER ID'),
(74, '2022-06-01', '2022-06-01', 2450000, 40, 10, 26, 0, 'Giày chạy bộ nữ SUPER ID'),
(75, '2022-06-01', '2022-06-01', 2550000, 41, 10, 26, 0, 'Giày chạy bộ nữ SUPER ID'),
(76, '2022-06-01', '2022-06-01', 2350000, 39, 10, 27, 9, 'Giày chạy bộ thể thao nữ'),
(77, '2022-06-01', '2022-06-01', 2450000, 40, 10, 27, 0, 'Giày chạy bộ thể thao nữ'),
(78, '2022-06-01', '2022-06-01', 2550000, 41, 10, 27, 0, 'Giày chạy bộ thể thao nữ'),
(79, '2022-06-01', '2022-06-01', 2450000, 39, 7, 7, 1, 'GIÀY NIKE AIR ZOOM PEGASUS NỮ'),
(80, '2022-06-01', '2022-06-01', 2550000, 40, 10, 7, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NỮ'),
(81, '2022-06-01', '2022-06-01', 2650000, 41, 10, 7, 0, 'GIÀY NIKE AIR ZOOM PEGASUS NỮ'),
(82, '2022-07-31', '2022-07-31', 1500000, 39, 7, 28, 1, 'Giày Adidas BOA'),
(83, '2022-07-31', '2022-07-31', 1600000, 40, 10, 28, 0, 'Giày Adidas BOA'),
(84, '2022-07-31', '2022-07-31', 1700000, 41, 9, 28, 1, 'Giày Adidas BOA'),
(85, '2022-07-31', '2022-07-31', 1500000, 39, 7, 29, 3, 'ADIDAS BOA New'),
(86, '2022-07-31', '2022-07-31', 1600000, 40, 10, 29, 0, 'ADIDAS BOA New'),
(87, '2022-07-31', '2022-07-31', 1700000, 41, 10, 29, 0, 'ADIDAS BOA New'),
(88, '2022-07-31', '2022-07-31', 2000000, 39, 4, 30, 3, 'NIKE 2022'),
(89, '2022-07-31', '2022-07-31', 2500000, 40, 10, 30, 0, 'NIKE 2022'),
(90, '2022-07-31', '2022-07-31', 3000000, 41, 10, 30, 0, 'NIKE 2022'),
(91, '2022-07-31', '2022-07-31', 3500000, 42, 10, 30, 0, 'NIKE 2022'),
(92, '2022-07-31', '2022-07-31', 500000, 38, 9, 31, 2, 'ADIDAS Super Ultra'),
(93, '2022-07-31', '2022-07-31', 700000, 39, 3, 31, 17, 'ADIDAS Super Ultra'),
(94, '2022-07-31', '2022-07-31', 1000000, 40, 13, 31, 0, 'ADIDAS Super Ultra'),
(95, '2022-07-31', '2022-07-31', 1500000, 41, 14, 31, 0, 'ADIDAS Super Ultra'),
(96, '2022-08-27', '2022-08-27', 4000000, 39, 10, 32, 0, 'Ultraboost'),
(97, '2022-08-27', '2022-08-27', 4500000, 40, 9, 32, 0, 'Ultraboost'),
(98, '2022-08-27', '2022-08-27', 5000000, 41, 10, 32, 0, 'Ultraboost'),
(99, '2022-08-27', '2022-08-27', 5500000, 42, 9, 32, 0, 'Ultraboost'),
(100, '2022-08-28', '2022-08-28', 10500000, 36, 1, 33, 0, 'Gucci Gang'),
(101, '2022-08-28', '2022-08-28', 11000000, 37, 4, 33, 0, 'Gucci Gang'),
(102, '2022-08-28', '2022-08-28', 12000000, 38, 4, 33, 0, 'Gucci Gang'),
(103, '2022-08-28', '2022-08-28', 13000000, 39, 5, 33, 0, 'Gucci Gang'),
(104, '2022-08-28', '2022-08-28', 24000000, 40, 4, 33, 0, 'Gucci Gang'),
(105, '2022-08-28', '2022-08-28', 15000000, 41, 4, 33, 0, 'Gucci Gang'),
(106, '2022-08-28', '2022-08-28', 16000000, 42, 5, 33, 0, 'Gucci Gang'),
(107, '2022-08-28', '2022-08-28', 17000000, 43, 5, 33, 0, 'Gucci Gang'),
(108, '2022-08-28', '2022-08-28', 18000000, 44, 5, 33, 0, 'Gucci Gang'),
(109, '2022-08-28', '2022-08-28', 19000000, 45, 5, 33, 0, 'Gucci Gang'),
(110, '2022-08-28', '2022-08-28', 1200000, 39, 2, 34, 0, 'Gucci000'),
(111, '2022-08-28', '2022-08-28', 2000000, 40, 4, 34, 0, 'Gucci000'),
(112, '2022-08-28', '2022-08-28', 2500000, 41, 5, 34, 0, 'Gucci000'),
(113, '2022-08-28', '2022-08-28', 3000000, 42, 5, 34, 0, 'Gucci000'),
(114, '2024-09-26', '2024-09-26', 1000000, 38, 44, 35, 0, 'dsadsad'),
(115, '2024-09-26', '2024-09-26', 1000000, 39, 55, 35, 0, 'dsadsad'),
(116, '2024-09-26', '2024-09-26', 2000000, 40, 33, 35, 0, 'dsadsad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `create_date`, `description`, `image`, `is_active`, `modify_date`, `name`) VALUES
(1, '2022-06-01', 'PUMA', 'puma.jpg', b'1', '2022-07-14', 'PUMA'),
(2, '2022-06-01', 'REEBOK', 'reeebok.jpg', b'1', '2024-06-04', 'REEBOK'),
(3, '2022-06-01', 'NIKE', 'nike.jpg', b'1', '2022-07-21', 'NIKE'),
(4, '2022-06-01', 'ADIDAS', 'adidas.jpg', b'1', '2022-06-01', 'ADIDAS'),
(5, '2022-06-01', 'FILA', 'Dfila.jpg', b'1', '2022-06-01', 'FILA'),
(6, '2022-06-01', 'CONVERSE vintage', 'converse.jpg', b'1', '2022-07-14', 'CONVERSE'),
(7, '2022-06-01', 'LI-NING  của Trung Quốc', 'lining.jpg', b'1', '2022-07-14', 'LI-NING'),
(8, '2022-07-14', 'Local brand của Công Minh Idol', NULL, b'0', '2022-07-17', 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  `last_price` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `create_date`, `description`, `is_active`, `modify_date`, `name`) VALUES
(1, '2022-06-01', 'Giày Nam', b'1', '2022-07-21', 'Giày Nam'),
(2, '2022-06-01', 'Giày Nữ', b'1', '2022-06-01', 'Giày Nữ'),
(3, '2022-06-01', 'Giày Trẻ Em', b'1', '2022-06-01', 'Giày Trẻ Em'),
(4, '2022-06-01', 'Giày Ðá Bóng', b'1', '2022-06-01', 'Giày Ðá Bóng'),
(5, '2022-06-01', 'Giày Thời Trang', b'1', '2022-06-01', 'Giày Thời Trang'),
(6, '2022-06-01', 'Giày bóng rổ', b'1', '2022-07-15', 'Giày bóng rổ'),
(7, '2022-06-01', 'Giày chạy bộ nè', b'1', '2022-07-15', 'Giày chạy bộ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `create_date`, `image_link`, `is_active`, `modify_date`, `name`, `product_id`) VALUES
(1, '2024-09-26', 'sg-11134201-22120-ubzbvpu0kpkvfd.jpg', b'1', '2024-09-26', 'main', 35),
(2, '2024-09-26', '786aed6c4a9370fecee633301e81dc26.jpg', b'1', '2024-09-26', 'other', 35),
(3, '2024-09-26', 'ca32da95ed207a37dfcfcc184fa52059.jpg', b'1', '2024-09-26', 'other', 35),
(4, '2024-09-26', 'vn-11134207-7r98o-lqpwlqnb93qv55.jpg', b'1', '2024-09-26', 'other', 35),
(5, '2024-09-26', 'order-sneaker-nam-bieu-tuong-nike-air-jordan-1-elle-man.jpg', b'1', '2024-09-26', 'other', 35),
(6, '2024-09-26', 'giay-da-bong-size-lon-mau-den-do-4.jpg', b'1', '2024-09-26', 'other', 35);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `deliver` tinyint(1) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `is_pending` tinyint(1) NOT NULL,
  `modify_date` date NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `ship_date` date DEFAULT NULL,
  `total` double NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `order_status_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `voucher_id` bigint(20) DEFAULT NULL,
  `encode_url` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL,
  `code` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `shipment` varchar(1000) DEFAULT NULL,
  `payment` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `origin_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `sell_price` double NOT NULL,
  `attribute_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(1000) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `view` bigint(20) NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `sale_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `code`, `create_date`, `description`, `modify_date`, `name`, `view`, `brand_id`, `sale_id`, `is_active`) VALUES
(1, 'Fw2888', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Sneaker Adidas Bravada NAM ANA', 100, 4, 2, 1),
(2, 'H00521', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Sneaker Adidas Eq21 Triple Black', 100, 4, 2, 1),
(3, 'Fx5849', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân. ', '2022-06-01', 'Giày Sneaker Adidas Stansmith Mule', 100, 4, 2, 1),
(4, 'Q46225', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Sneaker Adidas 4d Fwd Pulse', 100, 4, 1, 1),
(5, 'MSN913', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE RENEW RIDE 3 NỮ', 100, 3, 2, 1),
(6, 'MSN911', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE AIR ZOOM PEGASUS NAM ', 100, 3, 3, 1),
(7, 'MSN910', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE AIR ZOOM PEGASUS NỮ', 100, 3, 1, 1),
(8, 'MSN908', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY NIKE AIR ZOOM RIVAL FLY', 100, 3, 2, 1),
(9, 'GV7412', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2024-06-04', 'REEBOK ROYAL TECHQUET DEPOR ACE NAE', 100, 2, 3, 1),
(10, 'EG9415', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'REEBOK ROYAL COMPLETE CLN2 HAZN AB', 100, 2, 1, 1),
(11, 'GY7749', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'LIQUIFECT 902 BR AUTMAX AB SN', 100, 2, 2, 1),
(12, 'GY8453', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'HIIT TR 2.0 FIFA ZATHER ONE', 100, 2, 3, 1),
(13, 'MSP215', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA ANZARUB LITE NAM A1', 100, 1, 1, 1),
(14, 'MSP207', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA CAVEN NỮ AB CAP', 100, 1, 2, 1),
(15, 'MSP223', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA ELICTIRIFY NITRO NAM BB', 100, 1, 3, 1),
(16, 'MSP218', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'GIÀY PUMA RALPH SAMPSON LO JOKER', 100, 1, 1, 1),
(17, 'h04190', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Fila Unisex Como Mule Trắng', 100, 5, 2, 1),
(18, 'h041919', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Fila Unisex Scanline Mule Đen', 100, 5, 3, 1),
(19, 'h026064', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Thể Thao Fila Shiny Pink ', 100, 5, 1, 1),
(20, 'M7650', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck Taylor All Star Classic AB', 100, 6, 2, 1),
(21, 'A00416C', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck Taylor All Star Crafted Stripes', 100, 6, 3, 1),
(22, 'A00621C', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck 70 Seasonal Color CX CATER', 100, 6, 1, 1),
(23, 'A03175C', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Chuck Taylor All Star Lift Platform', 100, 6, 2, 1),
(24, 'ARVS001-5', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày Super Light 19 nam AB', 100, 7, 3, 1),
(25, 'ARMS003-2', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày chạy bộ nam SUPER ID', 100, 7, 1, 1),
(26, 'ARHR042-4', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày chạy bộ nữ SUPER ID', 100, 7, 2, 1),
(27, 'ARHR132-1', '2022-06-01', 'Giày Nike SB Blazer Court là dòng giày sneaker rất được yêu thích của Nike trên toàn thế giới. Với thiết kế đơn giản nhưng đẹp mắt, Nike SB Blazer Court chắc chắn là đôi giày không thể thiếu với bất cứ ai.\nPhần upper của giày được làm từ chất liệu vải Canvas bền chắc, đế giày làm bằng cao su với công nghệ độc quyền của Nike, giúp nó cực kỳ êm ái và dễ chịu khi lên chân.', '2022-06-01', 'Giày chạy bộ thể thao nữ', 100, 7, 1, 1),
(28, 'NEW888', '2022-07-31', 'Giày siêu siêu đẹp', '2022-08-27', 'Giày Adidas BOA', 1, 3, 4, 1),
(29, 'BOA888', '2022-07-31', 'X', '2022-07-31', 'ADIDAS BOA New', 1, 3, 4, 1),
(30, 'NIKE2022', '2022-07-31', 'Sản phẩm mới nhất của NIKE', '2022-08-27', 'NIKE 2022', 1, 3, 3, 1),
(31, 'SUPER2022', '2022-07-31', 'Mẫu giày mới của ADIDAS năm 2022', '2022-08-01', 'ADIDAS Super Ultra', 1, 8, 3, 1),
(32, 'ULT9999', '2022-08-27', 'Kiểu dáng: Ôm vừa, có dây buộc. Đế ngoài: Đế ngoài bằng cao su chống trơn trượt', '2022-08-27', 'Ultraboost', 1, 4, 3, 1),
(33, 'Gucci8888', '2022-08-28', 'Big City Boyyyyyyy', '2022-08-28', 'Gucci Gang', 1, 8, 2, 1),
(34, 'GC00000', '2022-08-28', 'gucci', '2022-08-28', 'Gucci000', 1, 8, 3, 1),
(35, 'sdasd', '2024-09-26', 'dsadsadas', '2024-09-26', 'dsadsad', 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `product_id`) VALUES
(1, 1, 7),
(2, 2, 6),
(3, 3, 5),
(4, 4, 3),
(5, 5, 4),
(6, 6, 2),
(7, 7, 1),
(8, 7, 8),
(10, 5, 10),
(11, 4, 11),
(12, 3, 12),
(13, 2, 13),
(14, 1, 14),
(15, 1, 15),
(16, 2, 16),
(17, 3, 17),
(18, 4, 18),
(19, 5, 19),
(20, 6, 20),
(21, 7, 21),
(22, 7, 22),
(23, 6, 23),
(24, 5, 24),
(25, 4, 25),
(26, 3, 26),
(27, 2, 27),
(30, 3, 29),
(31, 7, 29),
(67, 1, 31),
(68, 4, 31),
(69, 5, 31),
(70, 7, 31),
(73, 1, 32),
(74, 7, 32),
(75, 3, 28),
(76, 6, 28),
(77, 7, 28),
(78, 1, 30),
(79, 4, 30),
(80, 5, 30),
(81, 6, 30),
(82, 7, 30),
(87, 1, 34),
(88, 5, 34),
(97, 1, 33),
(98, 5, 33),
(99, 1, 9),
(100, 6, 9),
(101, 1, 35);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `create_date`, `modify_date`, `name`) VALUES
(1, '2022-06-01', '2022-06-01', 'ADMIN'),
(2, '2022-06-01', '2022-06-01', 'EMP'),
(3, '2022-06-01', '2022-06-01', 'CUS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `modify_date` date NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `create_date`, `description`, `discount`, `is_active`, `modify_date`, `name`) VALUES
(1, '2022-06-01', 'Chương trình mặc định', 0, b'1', '2022-06-01', 'Mặc định'),
(2, '2022-06-01', 'Thông thường', 20, b'1', '2022-06-01', 'Thông thường'),
(3, '2022-06-01', 'Siêu giảm giá', 30, b'1', '2022-06-01', 'Siêu giảm giá'),
(4, '2022-07-15', 'Công Minh Idol xả hàng', 10, b'0', '2022-07-15', 'Công Minh Idol');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) NOT NULL,
  `code` varchar(12) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `count`, `create_date`, `discount`, `expire_date`, `is_active`) VALUES
(1, 'ADIDAS2022', 1, '2022-08-28', 50, '2022-08-30', 1),
(2, 'NIKE2022', 1, '2022-06-01', 30, '2022-06-01', 0),
(3, 'NIKE2021', 0, '2022-08-27', 30, '2022-08-30', 1),
(4, 'ADIDAS888', 0, '2022-08-25', 30, '2022-08-31', 1),
(5, 'ADIDAS8888', 0, '2022-08-25', 10, '2022-08-30', 1),
(6, 'ADIDAS111', 0, '2022-08-25', 20, '2022-09-14', 1),
(7, 'ADIDAS222', 1, '2022-07-13', 25, '2022-07-30', 1),
(8, 'ADIDAS333', 1, '2022-07-13', 15, '2022-07-26', 1),
(9, 'ADIDAS444', 1, '2022-07-13', 35, '2023-08-27', 1),
(10, 'ADIDAS555', 0, '2022-08-28', 30, '2023-07-21', 1),
(11, 'ADIDAS889', 0, '2022-08-11', 10, '2022-08-30', 1),
(12, 'T8CgNF5jWG', 1, '2022-08-27', 20, '2023-08-27', 1),
(13, '6Mnmk6aOLU', 0, '2022-08-28', 30, '2023-08-28', 1),
(14, 'o06jPeZuVA', 1, '2022-08-28', 30, '2023-08-28', 1),
(15, 'KqqgfsnshW', 1, '2022-08-28', 10, '2023-08-28', 1),
(16, 'HGWfw7VB6m', 1, '2022-08-28', 30, '2023-08-28', 1),
(17, 'MST6X5lhBN', 1, '2022-08-28', 10, '2023-08-28', 1),
(18, 'JwXNmZhgeS', 1, '2022-08-29', 20, '2023-08-29', 1),
(19, 'AvCreVbd3E', 1, '2022-08-29', 20, '2023-08-29', 1),
(20, 'ZrXi6OWrl8', 1, '2022-08-29', 30, '2023-08-29', 1),
(21, 'k5BJAB5s8q', 0, '2024-06-04', 30, '2024-08-29', 1),
(22, 'ZresRaNApm', 0, '2024-06-07', 10, '2025-06-06', 1),
(23, 'Y5rF8ZbM56', 1, '2024-06-07', 10, '2025-06-07', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_k8h1bgqoplx0rkngj01pm1rgp` (`username`),
  ADD KEY `FKt3wava8ssfdspnh3hg4col3m1` (`role_id`);

--
-- Chỉ mục cho bảng `account_detail`
--
ALTER TABLE `account_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9ova18pr7v2oy5naxm6godxg3` (`account_id`);

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdmxq368cv2u55c08l151uhwer` (`product_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr73mlc9qnqbuohor52oa82e8u` (`account_id`),
  ADD KEY `FKqqnwtpr34wi90lptk7a4pd66` (`attribute_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKghwsjbjo7mg3iufxruvq6iu3q` (`product_id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4gbdnyp7alt2qobudy7oo1nwp` (`order_id`),
  ADD KEY `FK557oqdnctfria015no3n7ev72` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKagh5svlor3slbay6tq5wqor1o` (`account_id`),
  ADD KEY `FK2n7p8t83wo7x0lep1q06a6cvy` (`order_status_id`),
  ADD KEY `FKdimvsocblb17f45ikjr6xn1wj` (`voucher_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbpibmme3f3wayg5vs7pbnnmaw` (`attribute_id`),
  ADD KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_57ivhy5aj3qfmdvl6vxdfjs4p` (`code`),
  ADD KEY `FKa3a4mpsfdf4d2y6r8ra3sc8mv` (`brand_id`),
  ADD KEY `FKorwhur7undd0tdqkijmpf7882` (`sale_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdswxvx2nl2032yjv609r29sdr` (`category_id`),
  ADD KEY `FK5w81wp3eyugvi2lii94iao3fm` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_30ftp2biebbvpik8e49wlmady` (`code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `account_detail`
--
ALTER TABLE `account_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `FKt3wava8ssfdspnh3hg4col3m1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `account_detail`
--
ALTER TABLE `account_detail`
  ADD CONSTRAINT `FK9ova18pr7v2oy5naxm6godxg3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD CONSTRAINT `FKdmxq368cv2u55c08l151uhwer` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FKqqnwtpr34wi90lptk7a4pd66` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`),
  ADD CONSTRAINT `FKr73mlc9qnqbuohor52oa82e8u` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKghwsjbjo7mg3iufxruvq6iu3q` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK4gbdnyp7alt2qobudy7oo1nwp` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK557oqdnctfria015no3n7ev72` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK2n7p8t83wo7x0lep1q06a6cvy` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  ADD CONSTRAINT `FKagh5svlor3slbay6tq5wqor1o` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `FKdimvsocblb17f45ikjr6xn1wj` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FKbpibmme3f3wayg5vs7pbnnmaw` FOREIGN KEY (`attribute_id`) REFERENCES `attribute` (`id`),
  ADD CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKa3a4mpsfdf4d2y6r8ra3sc8mv` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `FKorwhur7undd0tdqkijmpf7882` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Các ràng buộc cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `FK5w81wp3eyugvi2lii94iao3fm` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKdswxvx2nl2032yjv609r29sdr` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
