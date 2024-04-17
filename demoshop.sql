-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2024 lúc 06:58 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demoshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_category` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name_category`) VALUES
(9, 'Điện Thoại'),
(10, 'MackBook\r\n'),
(11, 'Phụ Kiện'),
(12, 'Đồng Hồ\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` bit(1) NOT NULL,
  `total` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `sale` float NOT NULL,
  `image` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(2000) NOT NULL,
  `amount` int(11) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `price`, `sale`, `image`, `date`, `description`, `amount`, `view`) VALUES
(1, 9, 'Điện thoại iPhone 11 64GB', 8990000, 0, 'ip11-64.jpg', '0000-00-00', 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.\r\n', 100, 10),
(2, 9, 'Điện thoại iPhone 11 128GB', 10590000, 0, 'ip11-128.jpg', '0000-00-00', 'Được xem là một trong những phiên bản iPhone \"giá rẻ\" của bộ 3 iPhone 11 series nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.', 100, 10),
(3, 9, 'Điện thoại iPhone 12 64GB', 12000000, 0, 'ip12-64.jpg', '0000-00-00', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.\r\n Hiệu năng vượt xa mọi giới hạn\r\n Cụm camera không ngừng cải tiến\r\n Ghi dấu ấn về mặt thiết kế\r\n Trải nghiệm xuyên suốt, liền mạch cả ngày dài\r\n ', 100, 10),
(4, 10, 'Laptop Apple MacBook Air 13 inch M3 8GB/256GB (MRXN3SA/A) ', 28000000, 0, 'mac13.jpg', '0000-00-00', 'Tiếp nối những thành công mạnh mẽ từ phiên bản Macbook Air M2, thì nay MacBook Air 13 inch M3 2024 đã quay lại thật bùng nổ vào những tháng đầu 2024 này. Với con chip M3 cải tiến tuyệt vời, ngoại hình đến tiện ích \"miễn chê\" sẽ cho bạn trải nghiệm những chế độ công việc tuyệt vời.', 100, 10),
(5, 10, 'Laptop Apple MacBook Pro 14 inch M3 Max 36GB/1TB ', 79000000, 0, 'macm3m.jpg', '0000-00-00', 'Ghi dấu đậm nét vào những tháng cuối năm 2023 này, Apple đã tung ra thị trường thế hệ Macbook Pro M3 Max 14 inch 36 GB với sự góp mặt của con chip M3 Max hoàn toàn mới đi cùng những thông số cải tiến đầy ưu việt, hứa hẹn sẽ đáp ứng chuyên sâu nhất mọi công việc, những tác vụ phức tạp cho người dùng.', 100, 10),
(6, 12, 'Đồng hồ thông minh Apple Watch SE 2023 GPS 40mm viền nhôm dây thể thao', 7000000, 0, 'awse.jpg', '0000-00-00', 'Apple Watch SE 2023 GPS 40mm viền nhôm dây thể thao là chiếc smartwatch có mức giá dễ tiếp cận nhất nhà Táo, là lựa chọn tối ưu ngân sách cho người dùng nhưng vẫn đảm bảo một thiết kế đẹp mắt, hỗ trợ đa dạng tính năng cũng như tiện ích hằng ngày.', 100, 10),
(7, 12, 'Đồng hồ thông minh Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Ocean ', 25000000, 0, 'awultra.jpg', '0000-00-00', 'Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Ocean là chiếc đồng hồ thông minh của Apple gây được nhiều sự chú ý của giới truyền thông và người yêu công nghệ tại sự kiện Wonderlust năm 2023. Đồng hồ sở hữu vẻ ngoài vừa thời thượng vừa đậm chất thể thao vô cùng độc đáo, các tính năng bên trong cũng có cải tiến hứa hẹn sẽ làm hài lòng sự mong đợi của người dùng.', 100, 10),
(8, 11, 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3 ', 6200000, 0, 'ap2.jpg', '0000-00-00', 'Tai nghe Bluetooth AirPods Pro (2nd Gen) USB-C Charge Apple sở hữu thiết kế mang đậm chất thương hiệu Apple, màu sắc sang trọng, đi cùng nhiều công nghệ cho các iFan: chip Apple H2, chống bụi, chống ồn chủ động,... hứa hẹn mang đến trải nghiệm âm thanh sống động, chinh phục người dùng.', 100, 10),
(12, 11, 'Bao da bàn phím Smart Keyboard Folio 2 iPad Pro 11 inch Apple MXNK2 ', 4655000, 0, 'baoda.jpg', '0000-00-00', 'Thiết kế sang trọng cùng khả năng tháo lắp và gập mở dễ dàng\r\nBàn phím Smart Keyboard Folio 2 cho iPad Pro 11 inch Apple MXNK2 là hàng chính hãng của Apple được thiết kế với nhiều tính năng thông minh tích hợp. Keyboard Folio 2 dành cho iPad Pro 11 inch dễ dàng biến chiếc iPad thành laptop nhỏ gọn, tiện dụng với chức năng gõ tuyệt vời.', 100, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(100) NOT NULL,
  `fullname` varchar(191) NOT NULL,
  `image` varchar(100) NOT NULL,
  `role` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `fullname`, `image`, `role`) VALUES
(6, 'admin1', 'admin@gmail.com', '2024-04-12 01:38:52', 'admin1', 'Admin', 'user.jpg', b'0'),
(7, 'GiaBang', 'bangngo568@gmail.com', '2024-04-12 01:39:24', '12345', 'Ngô Gia Băng', 'user.jpg', b'1'),
(8, 'admin', 'admin@gmail.com', '2024-04-17 12:00:19', 'admin', 'Admin1', 'admin.jpg\r\n', b'0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
