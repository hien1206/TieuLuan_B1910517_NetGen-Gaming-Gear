-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2023 lúc 09:32 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `myphamphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_password` varchar(100) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_phone` varchar(20) NOT NULL,
  `account_type` int(11) NOT NULL,
  `account_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_password`, `account_email`, `account_phone`, `account_type`, `account_status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '0987654322', 2, 0),
(26, 'Huỳnh Trọng Hiển', 'e10adc3949ba59abbe56e057f20f883e', 'tronghiengato@gmail.com', '', 1, 0),
(27, 'Lê Tài', 'e10adc3949ba59abbe56e057f20f883e', 'letai@gmail.com', '', 0, 0),
(28, 'Trọng Hiển', 'e10adc3949ba59abbe56e057f20f883e', 'tronghien@gmail.com', '0398419004', 1, 0),
(29, 'Lê Tâm', 'e10adc3949ba59abbe56e057f20f883e', 'letam@gmail.com', '', 0, 0),
(30, 'Huỳnh Trọng Hiển', 'e10adc3949ba59abbe56e057f20f883e', 'test@gmail.com', '', 0, 0),
(31, 'hien', 'e10adc3949ba59abbe56e057f20f883e', 'tronghiengato@gmail.com', '', 1, 0),
(32, 'Huỳnh Trọng Hiển', 'e10adc3949ba59abbe56e057f20f883e', 'test2@gmail.com', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_author` varchar(100) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` text NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(100) NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(1, 'Huỳnh Trọng Hiển', '5 mùi hương nước hoa dùng được cho cả nam và nữ bạn không nên bỏ qua', '<p><em>Bạn c&oacute; biết? M&ugrave;i hương ch&iacute;nh l&agrave; điểm cuốn h&uacute;t v&agrave; ghi đậm dấu ấn với mọi người. Thế nhưng, c&oacute; qu&aacute; nhiều điều khiến bạn kh&oacute; khăn khi lựa chọn một m&ugrave;i hương ph&ugrave; hợp với bản th&acirc;n. V&agrave; bạn mong muốn sở hữu một m&ugrave;i hương đặc biệt m&agrave; mọi giới t&iacute;nh đều sử dụng được? Đừng lo, b&agrave;i viết sau đ&acirc;y sẽ gi&uacute;p &iacute;ch cho bạn. H&atilde;y c&ugrave;ng Parfumerie t&igrave;m hiểu về 5 m&ugrave;i hương Unisex nổi bật v&agrave; được y&ecirc;u th&iacute;ch nhất mọi thời đại dưới đ&acirc;y nh&eacute;:</em></p>\r\n', '<p><strong>C&aacute;c nh&oacute;m hương nước hoa phổ biến hiện nay</strong></p>\r\n\r\n<p>Nước hoa d&agrave;nh cho cả nam v&agrave; nữ hay c&ograve;n được gọi c&aacute;ch kh&aacute;c l&agrave; d&ograve;ng nước hoa unisex. C&aacute;c nh&agrave; s&aacute;ng tạo m&ugrave;i hương lu&ocirc;n đặt y&ecirc;u cầu v&agrave; ti&ecirc;u chuẩn kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu để tạo sản phẩm chất lượng. Nước hoa unisex l&agrave; một trong lựa chọn tuyệt vời d&agrave;nh cho c&aacute;c cặp đ&ocirc;i muốn trải nghiệm m&ugrave;i hương c&ugrave;ng nhau.&nbsp;</p>\r\n', '1684336151_loginbanner.jpg', '2023-10-28', 1),
(2, 'Huỳnh Trọng Hiển', 'Hương thơm da thịt - Xu hướng mùi hương đang rất được yêu thích', '<p>Nếu bạn kh&ocirc;ng th&iacute;ch thơm như hoa, ngọt như kẹo, mịn như phấn, trầm ấm như gỗ... m&agrave; chỉ th&iacute;ch thơm như ch&iacute;nh m&igrave;nh, đơn giản nhưng kh&aacute;c biệt, quyến rũ v&agrave; g&acirc;y t&ograve; m&ograve; bởi sự tự nhi&ecirc;n th&igrave; những m&ugrave;i hương da thịt - xu hướng m&ugrave;i hương đang rất được y&ecirc;u th&iacute;ch hiện nay l&agrave; d&agrave;nh cho bạn. &nbsp;</p>\r\n', '<p><strong>V&igrave; sao m&ugrave;i hương da thịt lại dần trở th&agrave;nh xu hướng m&ugrave;i hướng được y&ecirc;u th&iacute;ch?&nbsp;</strong></p>\r\n\r\n<p>Sở dĩ c&oacute; t&ecirc;n gọi l&agrave; m&ugrave;i hương da thịt v&igrave; hương thơm của những chai nước hoa n&agrave;y v&ocirc; c&ugrave;ng nhẹ nh&agrave;ng, khi d&ugrave;ng sẽ ho&agrave; với m&ugrave;i cơ thể tạo ra một hương thơm tự nhi&ecirc;n, nhẹ t&ecirc;nh, dễ chịu. V&agrave; đương nhi&ecirc;n l&agrave; chống chỉ định đối với những ai y&ecirc;u th&iacute;ch sự nồng n&agrave;n, m&ugrave;i hương bay xa, tỏa mạnh. Những hương thơm da thịt n&agrave;y th&iacute;ch hợp với người y&ecirc;u phong c&aacute;ch nhẹ nh&agrave;ng, tinh tế, đ&ocirc;i khi hương thơm nhẹ đến nỗi chỉ thoang thoảng tr&ecirc;n da, những ai kề cận s&aacute;t b&ecirc;n mới c&oacute; thể cảm nhận được. Nhưng v&igrave; thế lại tạo ra được nhiều điều th&uacute; vị v&agrave; l&atilde;ng mạn.</p>\r\n', '1684338205_problem-perfumes-natural-alternatives.jpg', '2023-10-28', 1),
(3, 'Huỳnh Trọng Hiển', 'Những mùi hương nước hoa mang đến may mắn đầu năm mới', '<p>Tết đến xu&acirc;n về, mọi người đều hồ hởi bắt đầu một năm mới sung t&uacute;c. H&atilde;y để Parfumerie c&ugrave;ng bạn t&ocirc; điểm th&ecirc;m sắc &quot;đỏ&quot; cho dịp xu&acirc;n n&agrave;y c&ugrave;ng những m&ugrave;i hương nước hoa mang đến may mắn đầu năm mới nh&eacute;!</p>\r\n', '<p>Tiết trời thoải m&aacute;i dễ chịu khiến cho con người ta th&ecirc;m phần y&ecirc;u th&iacute;ch những m&ugrave;i hương ngọt dịu, quyến rũ v&agrave;&nbsp;<a href=\"https://parfumerie.vn/maison-francis-kurkdjian-baccarat-rouge-540-extrait-de-parfum\"><strong>nước hoa&nbsp;Baccarat 540 Extrait</strong></a>&nbsp;sẽ l&agrave; sự lựa chọn số một trong những ng&agrave;y đầu xu&acirc;n se lạnh. Mang nốt hương của hạnh nh&acirc;n đắng, hoa nh&agrave;i Ai Cập kết hợp c&ugrave;ng long di&ecirc;n hương đắt đỏ, m&ugrave;i hương Baccarat 540 ph&ugrave; hợp cho cả nam v&agrave; nữ, mang đến cho bạn sự&nbsp;sang trọng, thu h&uacute;t với độ b&aacute;m toả cực kỳ cao, khiến bạn trở th&agrave;nh t&acirc;m điểm trong mọi cuộc hội họp dịp xu&acirc;n n&agrave;y, mang đến cho bạn một dấu ấn ri&ecirc;ng biệt kh&oacute; qu&ecirc;n.</p>\r\n', '1684338690_slider_3.webp', '2023-10-28', 1),
(4, 'Huỳnh Trọng Hiển', 'Thành phần cấu tạo của nước hoa', '<p>Một số th&agrave;nh phần cấu tạo của nước hoa, chọn nước hoa theo th&agrave;nh phần. Sản phẩm ph&ugrave; hợp với l&agrave;n da.</p>\r\n', '<h2><em><strong>Th&agrave;nh phần cấu tạo&nbsp;của nước hoa</strong></em></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nước hoa được tạo ra từ c&aacute;c th&agrave;nh phần cơ bản như tinh dầu v&agrave; hương liệu, được pha lo&atilde;ng với cồn hoặc nước để tạo ra một dung dịch c&oacute; m&ugrave;i hương thơm. Th&agrave;nh phần cấu tạo của nước hoa bao gồm:</p>\r\n\r\n<p><strong>Tinh dầu:&nbsp;</strong>Đ&acirc;y l&agrave; th&agrave;nh phần quan trọng nhất của nước hoa. Tinh dầu được chiết xuất từ c&aacute;c loại thực vật kh&aacute;c nhau, chẳng hạn như hoa, l&aacute;, gỗ v&agrave; rễ c&acirc;y. Mỗi loại tinh dầu c&oacute; m&ugrave;i hương độc đ&aacute;o v&agrave; được sử dụng để tạo ra c&aacute;c loại nước hoa kh&aacute;c nhau.</p>\r\n\r\n<p><strong>Hương liệu:&nbsp;</strong>Hương liệu được sử dụng để tạo ra m&ugrave;i hương đặc trưng cho nước hoa. C&aacute;c hương liệu bao gồm c&aacute;c loại tinh dầu tổng hợp được sản xuất bởi c&aacute;c nh&agrave; sản xuất h&oacute;a chất.</p>\r\n\r\n<p><strong>Cồn hoặc nước:</strong>&nbsp;Cồn hoặc nước được sử dụng để pha lo&atilde;ng tinh dầu v&agrave; hương liệu, gi&uacute;p tạo ra một dung dịch c&oacute; độ d&agrave;y v&agrave; độ nhẹ vừa phải.</p>\r\n\r\n<p><strong>Chất định hương:&nbsp;</strong>Chất định hương được sử dụng để giữ cho c&aacute;c th&agrave;nh phần của nước hoa h&ograve;a tan trong nhau v&agrave; gi&uacute;p tăng độ bền của nước hoa.</p>\r\n\r\n<p><strong>Chất phụ gia:</strong>&nbsp;Chất phụ gia được sử dụng để tạo ra c&aacute;c t&iacute;nh năng kh&aacute;c cho nước hoa như tăng khả năng b&aacute;m d&iacute;nh, chống oxy h&oacute;a v&agrave; bảo vệ m&agrave;u sắc.</p>\r\n\r\n<p><strong>Nước tinh khiết:</strong>&nbsp;Nước tinh khiết được sử dụng để pha lo&atilde;ng cồn hoặc tạo ra một dung dịch nước hoa kh&ocirc;ng chứa cồn.</p>\r\n\r\n<p>Tất cả c&aacute;c th&agrave;nh phần tr&ecirc;n được pha trộn với nhau để tạo ra một sản phẩm nước hoa c&oacute; m&ugrave;i hương độc đ&aacute;o v&agrave; hấp dẫn.</p>\r\n', '1687100315_tải xuống (1).jfif', '2023-10-28', 1),
(84, 'Jean Paul Guerlain', ' “Nước hoa là hình ảnh rõ ràng nhất của kỷ niệm.”', '', '<p>Nước hoa l&agrave; một m&oacute;n qu&agrave; rất ri&ecirc;ng tư, v&agrave; t&ocirc;i nghĩ đ&oacute; l&agrave; l&yacute; do tại sao nước hoa l&agrave; một m&oacute;n qu&agrave; Gi&aacute;ng sinh tuyệt vời. Nước hoa để lại ấn tượng rất kh&aacute;c biệt, v&igrave; vậy khi bạn tặng ai đ&oacute; một m&oacute;n qu&agrave; l&agrave; nước hoa, t&ocirc;i liền nghĩ rằng m&oacute;n qu&agrave; đ&oacute; bạn d&agrave;nh cho một người m&agrave; bạn y&ecirc;u thương.</p>\r\n', '1698489471_login-bg.jpg', '2023-10-28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Chanel'),
(2, 'Gucci'),
(3, 'Louis Vuitton'),
(4, 'Dior'),
(7, 'Calvin Klein');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `capacity`
--

CREATE TABLE `capacity` (
  `capacity_id` int(11) NOT NULL,
  `capacity_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `capacity`
--

INSERT INTO `capacity` (`capacity_id`, `capacity_name`) VALUES
(3, '10ml'),
(4, '20ml'),
(5, '30ml'),
(6, '40ml'),
(7, '50ml'),
(8, '60ml'),
(9, '70ml'),
(10, '80ml'),
(11, '90ml'),
(12, '100ml');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `category_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_image`) VALUES
(1, 'Nước hoa unisex', 'Tất cả các sản phẩm nước hoa', '1684378853_pexels-anis-salmani-11711835.jpg'),
(2, 'Nước hoa nam', 'Sản phẩm nước hoa phù hợp cho nam', '1684378880_qebq3g-16571737703471658983260.webp'),
(3, 'Nước hoa nữ', 'Sản phẩm nước hoa dành cho nữ', '1684378870_nuoc-hoa-duoc-yeu-thich-nhat.jpg'),
(4, 'Nước hoa chiết', 'Người hoa với Màu nhỏ, khách hàng có thể mua về để dùng thử', '1684994125_nuochoachiet.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(100) NOT NULL,
  `collection_keyword` varchar(100) NOT NULL,
  `collection_image` varchar(100) NOT NULL,
  `collection_description` varchar(255) NOT NULL,
  `collection_order` int(11) NOT NULL,
  `collection_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_keyword`, `collection_image`, `collection_description`, `collection_order`, `collection_type`) VALUES
(1, 'Chanel', 'chanel', '1684376498_nuoc-hoa-chanel-nam-11.jpg', 'Nước hoa chanel', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_gender` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_phone`, `customer_address`) VALUES
(19, 22, 'admin', 0, 'admin@gmail.com', '0987654322', 'Phú Quốc'),
(23, 26, 'Huỳnh Trọng Hiển', 1, 'tronghiengato@gmail.com', '0387581175', 'Cần Thơ'),
(24, 27, 'Lê Tài', 1, 'letai@gmail.com', '0387581171', 'Cần Thơ'),
(25, 28, 'Trọng Hiển', 1, 'tronghien@gmail.com', '0398419004', 'Cần Thơ'),
(26, 29, 'Lê Tâm', 2, 'letam@gmail.com', '0387581173', 'Cần Thơ'),
(27, 30, 'Huỳnh Trọng Hiển', 1, 'test@gmail.com', '0387581170', 'Cần Thơ'),
(28, 0, 'Huỳnh Trọng Hiển', 0, 'tronghiengato@gmail.com', '0387581175', 'Cần Thơ'),
(29, 31, 'hien', 1, 'tronghiengato@gmail.com', '0398419004', 'hậu giang'),
(30, 32, 'Huỳnh Trọng Hiển', 1, 'test2@gmail.com', '0387581176', 'Cần Thơ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_phone` varchar(20) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delivery_note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `account_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `delivery_note`) VALUES
(146, 29, 'Lê Tâm', '0387581173', 'Cần Thơ', ''),
(192, 30, 'Huỳnh Trọng Hiển', '0387581170', 'Cần Thơ', ''),
(341, 28, 'Trọng Hiển', '0387581172', 'Cần Thơ', ''),
(1872, 30, 'Huỳnh Trọng Hiển', '0387581170', 'Cần Thơ', ''),
(1948, 28, 'Trọng Hiển', '0387581172', 'Cần Thơ', ''),
(2148, 31, 'hien', '0398419004', 'hậu giang', ''),
(2685, 1, 'Lê Thắng', '0123123123131', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(2777, 28, 'Trọng Hiển', '0387581172', 'Cần Thơ', ''),
(2905, 28, 'das', '123', '123', 'Đơn hàng mua trực tiếp'),
(3838, 30, 'Huỳnh Trọng Hiển', '0387581170', 'Cần Thơ', ''),
(4141, 1, 'Huỳnh Trọng Hiển', '0123123123123', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(4428, 29, 'Lê Tâm', '0387581173', 'Cần Thơ', ''),
(4752, 30, 'Huỳnh Trọng Hiển', '0387581170', 'Cần Thơ', ''),
(6335, 28, 'das', '21312', 'sad', 'Đơn hàng mua trực tiếp'),
(7742, 27, 'Lê Tài', '0387581171', 'Cần Thơ', ''),
(7847, 27, 'Lê Tài', '0387581171', 'Cần Thơ', ''),
(7999, 26, 'Huỳnh Trọng Hiển', '0387581175', 'Cần Thơ', ''),
(8403, 30, 'Huỳnh Trọng Hiển', '0387581170', 'Cần Thơ', ''),
(8484, 30, 'Huỳnh Trọng Hiển', '0387581170', 'Cần Thơ', ''),
(8924, 1, 'Huỳnh Trọng Hiển', '0123123123123', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(9319, 1, 'Lê Thắng', '0123123123131', 'Cần Thơ', 'Đơn hàng mua trực tiếp'),
(9541, 29, 'Lê Tâm', '0387581173', 'Cần Thơ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `evaluate_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `evaluate_rate` int(11) NOT NULL,
  `evaluate_content` text NOT NULL,
  `evaluate_date` varchar(50) NOT NULL,
  `evaluate_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
--

INSERT INTO `evaluate` (`evaluate_id`, `account_id`, `product_id`, `account_name`, `evaluate_rate`, `evaluate_content`, `evaluate_date`, `evaluate_status`) VALUES
(26, 26, 153, 'Huỳnh Trọng Hiển', 5, 'Thơm', '2023-10-28 14:19:22', 1),
(27, 27, 152, 'Lê Tài', 3, 'Xịn', '2023-10-28 14:33:05', 1),
(28, 29, 154, 'Lê Tâm', 5, 'ádsad', '2023-10-28 17:48:46', 1),
(29, 29, 154, 'Lê Tâm', 1, '213123', '2023-10-28 17:49:01', 1),
(30, 30, 154, 'Huỳnh Trọng Hiển', 5, 'aaa', '2023-10-31 22:14:38', 1),
(31, 30, 158, 'Huỳnh Trọng Hiển', 3, '1245', '2023-11-04 15:51:13', 1),
(32, 27, 157, 'Lê Tài', 5, 'h', '2023-11-05 07:38:21', 1),
(33, 27, 158, 'Lê Tài', 5, 'ii', '2023-11-05 07:50:49', 1),
(34, 27, 158, 'Lê Tài', 5, 'iioo', '2023-11-05 07:51:00', 1),
(35, 27, 155, 'Lê Tài', 5, 'ádasdsa', '2023-11-05 08:25:55', 1),
(36, 27, 157, 'Lê Tài', 5, 'ádasd', '2023-11-05 08:28:29', 1),
(37, 30, 10, 'Huỳnh Trọng Hiển', 5, 'Thơm', '2023-11-24 17:13:42', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `staf_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `inventory_note` varchar(100) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `account_id`, `staf_name`, `supplier_name`, `supplier_phone`, `inventory_note`, `inventory_code`, `inventory_date`, `total_amount`, `inventory_status`) VALUES
(1, 0, 'Huỳnh Trọng Hiển', 'RUOK Store', '', 'thêm hàng', '9124', '2023-10-28', 29500000, 0),
(17, 26, 'Huỳnh Trọng Hiển', 'DMM STORE', '0123123213', 'nhập hàng', '2811', '2023-10-28', 22500000, 0),
(18, 29, 'Huỳnh Trọng Hiển', 'DMM STORE', '0123123213', 'nhập hàng', '9623', '2023-10-28', 180000000, 0),
(19, 30, 'Huỳnh Trọng Hiển', 'DMM STORE', '0123123213', 'nhập hàng', '1281', '2023-10-31', 15000000, 0),
(21, 30, 'Huỳnh Trọng Hiển', 'DMM STORE', '0123123213', 'nhập hàng', '8875', '2023-11-03', 2500000000, 0),
(22, 30, 'Huỳnh Trọng Hiển', 'DMM STORE', '0123123213', 'nhập hàng', '9239', '2023-11-04', 25000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_detail_id` int(11) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price_import` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_detail_id`, `inventory_code`, `product_id`, `product_quantity`, `product_price_import`) VALUES
(1, '9124', 21, 3, 2500000),
(20, '2811', 152, 15, 1500000),
(21, '9623', 154, 120, 1500000),
(22, '1281', 155, 10, 1500000),
(23, '5734', 157, 10, 50),
(24, '8875', 157, 5, 500000000),
(25, '9239', 158, 5, 5000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `metrics`
--

CREATE TABLE `metrics` (
  `metric_id` int(11) NOT NULL,
  `metric_date` date NOT NULL,
  `metric_order` int(11) NOT NULL,
  `metric_sales` varchar(100) NOT NULL,
  `metric_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `metrics`
--

INSERT INTO `metrics` (`metric_id`, `metric_date`, `metric_order`, `metric_sales`, `metric_quantity`) VALUES
(1, '2023-10-28', 26, '93382.16', 48),
(37, '2023-10-27', 4521, '124000', 12),
(38, '2023-10-25', 4521, '12300', 12),
(39, '2023-10-27', 4521, '0', 0),
(40, '2023-10-24', 4521, '123000', 3),
(41, '2023-10-31', 1, '11150400', 7),
(42, '2023-11-03', 5, '307476500', 20),
(43, '2023-11-04', 2, '10830', 2),
(44, '2023-11-09', 3, '295982000', 4),
(45, '2023-11-15', 1, '1960000', 1),
(46, '2023-11-16', 1, '4950', 1),
(47, '2023-11-27', 1, '285000000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `momo_id` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `momo_amount` varchar(50) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `account_id`, `delivery_id`, `total_amount`, `order_type`, `order_status`) VALUES
(178, 7174, '2023-10-28 13:25:35', 26, 7999, 110582, 1, 3),
(179, 5127, '2023-10-29 14:36:44', 27, 7847, 26950000, 1, 3),
(180, 7155, '2023-10-30 14:38:06', 1, 4141, 17150000, 5, 3),
(181, 687, '2023-10-31 14:39:09', 27, 7742, 855000000, 1, 3),
(182, 5401, '2023-11-01 14:44:54', 28, 2777, 552000, 1, 3),
(183, 9437, '2023-11-02 14:44:54', 29, 9541, 270000, 1, 3),
(184, 4521, '2023-10-25 17:25:41', 1, 2685, 14250000, 5, 3),
(185, 6780, '2023-10-26 17:45:20', 29, 4428, 17640000, 1, 3),
(186, 8819, '2023-10-24 17:46:58', 29, 146, 180000, 1, 3),
(187, 2384, '2023-10-31 22:15:43', 30, 192, 11150400, 1, 3),
(188, 3473, '2023-11-03 16:36:01', 30, 8403, 364500, 1, 3),
(189, 1087, '2023-11-03 16:40:31', 30, 1872, 3920000, 1, 3),
(190, 8719, '2023-11-03 16:45:21', 30, 8484, 285000000, 1, 3),
(191, 7168, '2023-11-04 04:35:13', 1, 9319, 4950, 5, 3),
(192, 6353, '2023-11-04 15:49:54', 30, 4752, 5880, 1, 3),
(193, 793, '2023-11-09 17:14:12', 28, 341, 9200000, 1, 3),
(194, 5641, '2023-11-09 17:15:15', 28, 1948, 285000000, 1, 3),
(195, 9588, '2023-11-09 19:08:37', 31, 2148, 1782000, 1, 1),
(196, 4445, '2023-11-15 15:35:25', 28, 6335, 1960000, 5, 3),
(197, 334, '2023-11-16 01:06:16', 28, 2905, 4950, 5, 3),
(198, 844, '2023-11-24 17:24:31', 30, 3838, 891000, 1, 0),
(199, 6446, '2023-11-27 23:37:59', 1, 8924, 285000000, 5, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_code`, `product_id`, `product_quantity`, `product_price`, `product_sale`) VALUES
(55, 3188, 20, 2, 4000000, 8),
(186, 7174, 10, 2, 99, 8),
(187, 7174, 18, 1, 120000, 8),
(188, 5127, 20, 1, 10000000, 2),
(189, 5127, 152, 1, 17500000, 2),
(190, 7155, 152, 1, 17500000, 2),
(191, 687, 22, 3, 300000000, 5),
(192, 5401, 16, 5, 120000, 8),
(193, 9437, 15, 2, 150000, 10),
(194, 4521, 19, 1, 15000000, 5),
(195, 6780, 154, 9, 2000000, 2),
(196, 8819, 13, 2, 100000, 10),
(197, 2384, 154, 6, 2000000, 8),
(198, 2384, 18, 1, 120000, 8),
(199, 3473, 17, 3, 135000, 10),
(200, 1087, 154, 2, 2000000, 2),
(201, 8719, 22, 1, 300000000, 5),
(202, 7168, 157, 1, 5000, 1),
(203, 6353, 158, 1, 6000, 2),
(204, 793, 20, 1, 10000000, 8),
(205, 5641, 22, 1, 300000000, 5),
(206, 9588, 10, 2, 990000, 10),
(207, 4445, 154, 1, 2000000, 2),
(208, 334, 157, 1, 5000, 1),
(209, 844, 10, 1, 990000, 10),
(210, 6446, 22, 1, 300000000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `capacity_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `quantity_sales` int(11) NOT NULL,
  `product_price_import` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` text NOT NULL,
  `product_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `capacity_id`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(10, 'Nước Hoa Louis Vuitton Sur La Route 100ml', 1, 3, 12, 6, 8, 9500000, 990000, 10, '<p>Cam kết chỉ b&aacute;n h&agrave;ng ch&iacute;nh h&atilde;ng, chất lượng đảm bảo tuyệt đối. Gi&aacute; cả tốt nhất thị trường, chất lượng sản phẩm tương xứng với số tiền bỏ ra. Giao h&agrave;ng to&agrave;n quốc đồng gi&aacute; 45k, miễn ph&iacute; ship với đơn h&agrave;ng tr&ecirc;n 5 triệu khi đ&atilde; chuyển khoản 100% Tuyệt đối kh&ocirc;ng b&aacute;n h&agrave;ng k&eacute;m chất lượng. Đảm bảo mỗi sản phẩm lu&ocirc;n trong t&igrave;nh trạng nguy&ecirc;n bản. Cam kết mang đến những d&ograve;ng sản phẩm cao cấp mang đến đẳng cấp ph&ugrave; hợp với từng qu&yacute; kh&aacute;ch h&agrave;ng. Cung cấp, giới thiệu đầy đủ th&ocirc;ng tin của sản phẩm tr&ecirc;n website: tungshop.com để qu&yacute; kh&aacute;ch c&oacute; thể t&igrave;m hiểu. Lu&ocirc;n sẵn s&agrave;ng hỗ trợ 24/24 qua Hotline về mọi vấn đề li&ecirc;n quan đến chất lượng sản phẩm, dịch vụ.</p>\r\n', '1683365833_nuoc-hoa-louisvuitton-6.jpg', 1),
(11, 'Nước Hoa Louis Vuitton Spell On You 100ml ', 1, 3, 12, 15, 0, 9555000, 199000, 10, '<p>Thương hiệu: Louis Vuitton.   Xuất Xứ: Ph&aacute;p. Dung t&iacute;ch: 100ml. Nồng độ: EDP. Nh&oacute;m hương: Floral-Hương hoa cỏ. Độ lưu hương: 3-6 giờ. Độ tỏa hương: Gần-trong khoảng 1 c&aacute;nh tay. Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, xu&acirc;n, hạ, thu</p>\r\n', '1683365920_nuoc-hoa-louisvuitton-5.jpg', 1),
(12, 'Nước Hoa Louis Vuitton Coeur Battant 100ml', 2, 3, 12, 9, 6, 9555000, 149000, 10, '<p>Thương hiệu: Louis Vuitton   Xuất Xứ: Ph&aacute;p Dung t&iacute;ch: 100ml Nồng độ: Eau de parfum (EDP) Nh&oacute;m hương: hương hoa cỏ phương Đ&ocirc;ng &ndash; Oriental Floral Độ lưu hương: L&acirc;u, từ 7 đến 12 giờ Độ tỏa hương: Gần- trong v&ograve;ng 1 c&aacute;nh tay Thời điểm khuy&ecirc;n d&ugrave;ng: Ng&agrave;y, đ&ecirc;m, Xu&acirc;n, Thu</p>\r\n', '1683365994_nuoc-hoa-louisvuitton-4.jpg', 1),
(13, 'Nước Hoa Louis Vuitton City Of Stars 100ml', 0, 3, 12, 0, 11, 9000000, 100000, 10, '<p>T&ecirc;n sản phẩm Nước Hoa Louis Vuitton City Of Stars 100ml Xuất sứ Ph&aacute;p Nh&oacute;m hương Hương hoa cỏ tr&aacute;i c&acirc;y Phong c&aacute;ch Tươi m&aacute;t trẻ trung hiện đại Hương đầu Qủa cam đỏ , Qu&yacute;t hồng , Chanh v&agrave;ng , Chanh xanh , Cam bergamot Hương giữa Hoa tiare Hương cuối Xạ hương , Hương phấn , Gỗ đ&agrave;n hương Độ lưu hương 7 &ndash; 12 giờ Thời điểm khuy&ecirc;n d&ugrave;ng Ng&agrave;y, đ&ecirc;m , xu&acirc;n , hạ , thu Dung t&iacute;ch 100ml</p>\r\n', '1683366133_nuoc-hoa-louisvuitton-3.jpg', 0),
(14, 'Nước Hoa Louis Vuitton Meteore 100ml', 3, 3, 12, 0, 15, 9555000, 200000, 8, '<p>T&ecirc;n sản phẩm Nước Hoa Louis Vuitton Meteore 100ml Xuất sứ Ph&aacute;p Nh&oacute;m hương Citrus Aromatic &ndash; Hương cam chanh thơm ng&aacute;t Phong c&aacute;ch Ph&oacute;ng kho&aacute;ng, Nam t&iacute;nh, Lịch thiệp Hương đầu Cam Mandarin, Cam Sicilian, Cam Bergamot Hương giữa Bạch đậu khấu, Hoa cam Neroli, Ti&ecirc;u hồng, Hạnh nh&acirc;n, Ti&ecirc;u đen Hương cuối Cỏ hương b&agrave;i Độ lưu hương Trung b&igrave;nh, từ 3 đến 6 tiếng Thời điểm khuy&ecirc;n d&ugrave;ng M&ugrave;a xu&acirc;n &ndash; M&ugrave;a hạ, Ban ng&agrave;y Dung t&iacute;ch 100ml</p>\r\n', '1683366239_nuoc-hoa-louisvuitton-2.jpg', 1),
(15, 'Nước Hoa Louis Vuitton Imagination 100ml', 3, 3, 12, 6, 6, 8500000, 150000, 10, '<p>T&ecirc;n sản phẩm Nước Hoa Louis Vuitton Imagination 100ml Xuất sứ Ph&aacute;p Nh&oacute;m hương Citrus Aromatic &ndash; Hương cam chanh thơm ng&aacute;t Phong c&aacute;ch Sang trọng, Nam t&iacute;nh, Hiện đại Hương đầu Cam Bergamot, Tr&aacute;i thanh y&ecirc;n, Cam Sicilian Hương giữa Gừng, Quế, Hoa cam Neroli Hương cuối Gỗ Guaiac, Tr&agrave; đen, Hương Ambroxan, Hương trầm Độ lưu hương 7 &ndash; 12 giờ Thời điểm khuy&ecirc;n d&ugrave;ng M&ugrave;a xu&acirc;n &ndash; M&ugrave;a hạ &ndash; M&ugrave;a thu, Ban ngay Dung t&iacute;ch 100ml</p>\r\n', '1683366331_nuoc-hoa-louisvuitton-1.jpg', 1),
(16, 'Nước hoa Gucci Intense OUD Eau De Parfum nữ 90ml', 1, 2, 11, 39, 6, 2500000, 120000, 8, '<p>Cam kết chỉ b&aacute;n h&agrave;ng ch&iacute;nh h&atilde;ng, chất lượng đảm bảo tuyệt đối. Gi&aacute; cả tốt nhất thị trường, chất lượng sản phẩm tương xứng với số tiền bỏ ra. Giao h&agrave;ng to&agrave;n quốc đồng gi&aacute; 45k, miễn ph&iacute; ship với đơn h&agrave;ng tr&ecirc;n 5 triệu khi đ&atilde; chuyển khoản 100% Tuyệt đối kh&ocirc;ng b&aacute;n h&agrave;ng k&eacute;m chất lượng. Đảm bảo mỗi sản phẩm lu&ocirc;n trong t&igrave;nh trạng nguy&ecirc;n bản. Cam kết mang đến những d&ograve;ng sản phẩm cao cấp mang đến đẳng cấp ph&ugrave; hợp với từng qu&yacute; kh&aacute;ch h&agrave;ng. Cung cấp, giới thiệu đầy đủ th&ocirc;ng tin của sản phẩm tr&ecirc;n website: tungshop.com để qu&yacute; kh&aacute;ch c&oacute; thể t&igrave;m hiểu. Lu&ocirc;n sẵn s&agrave;ng hỗ trợ 24/24 qua Hotline về mọi vấn đề li&ecirc;n quan đến chất lượng sản phẩm, dịch vụ.</p>\r\n', '1683366491_nuoc-hoa-gucci-nu-1.jpg', 1),
(17, 'Nước hoa Gucci Guilty Pour Homme Eau de Parfum 90ml', 2, 2, 12, 7, 4, 2500000, 135000, 10, '<p>Cam kết chỉ b&aacute;n h&agrave;ng ch&iacute;nh h&atilde;ng, chất lượng đảm bảo tuyệt đối. Gi&aacute; cả tốt nhất thị trường, chất lượng sản phẩm tương xứng với số tiền bỏ ra. Giao h&agrave;ng to&agrave;n quốc đồng gi&aacute; 45k, miễn ph&iacute; ship với đơn h&agrave;ng tr&ecirc;n 5 triệu khi đ&atilde; chuyển khoản 100% Tuyệt đối kh&ocirc;ng b&aacute;n h&agrave;ng k&eacute;m chất lượng. Đảm bảo mỗi sản phẩm lu&ocirc;n trong t&igrave;nh trạng nguy&ecirc;n bản. Cam kết mang đến những d&ograve;ng sản phẩm cao cấp mang đến đẳng cấp ph&ugrave; hợp với từng qu&yacute; kh&aacute;ch h&agrave;ng. Cung cấp, giới thiệu đầy đủ th&ocirc;ng tin của sản phẩm tr&ecirc;n website: tungshop.com để qu&yacute; kh&aacute;ch c&oacute; thể t&igrave;m hiểu. Lu&ocirc;n sẵn s&agrave;ng hỗ trợ 24/24 qua Hotline về mọi vấn đề li&ecirc;n quan đến chất lượng sản phẩm, dịch vụ.</p>\r\n', '1683366558_nuoc-hoa-gucci-2.jpg', 1),
(18, 'Nước Hoa Chanel Chance Eau Fraiche EDT 50ml nữ', 3, 1, 7, 4, 8, 2000000, 120000, 8, '<table border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thương hiệu</strong></td>\r\n			<td style=\"width:50%\"><strong>CHANEL</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>  Xuất Xứ</strong></td>\r\n			<td style=\"width:50%\">Ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Dung t&iacute;ch</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/105-ml\">Chai 50ml</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nồng độ</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/eau-de-parfum\">Eau de Parfum</a> (EDP)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nh&oacute;m hương</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/floral-fruity-huong-hoa-co-trai-cay\">Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ lưu hương</strong></td>\r\n			<td style=\"width:50%\">Rất l&acirc;u - Tr&ecirc;n 12 giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ tỏa hương</strong></td>\r\n			<td style=\"width:50%\">Xa - Toả hương trong v&ograve;ng b&aacute;n k&iacute;nh 2 m&eacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thời điểm th&iacute;ch hợp</strong></td>\r\n			<td style=\"width:50%\">Ng&agrave;y, Đ&ecirc;m, Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Th&ocirc;ng tin chung</h3>\r\n\r\n<ul>\r\n	<li>Năm ph&aacute;t h&agrave;nh :2015</li>\r\n	<li>Giới t&iacute;nh : Nữ</li>\r\n	<li>Phong c&aacute;ch :Sang trọng, quyến rũ, ngọt ng&agrave;o</li>\r\n	<li>  Xuất Xứ :Ả Rập</li>\r\n	<li>Promotion :M&atilde; giảm gi&aacute;</li>\r\n</ul>\r\n\r\n<h3>Chi tiết</h3>\r\n\r\n<ul>\r\n	<li>Nồng độ :Eau de Parfum</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lưu hương :Tr&ecirc;n 12h</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Nh&oacute;m hương :Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dung t&iacute;ch :100ml</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Độ tỏa hương :Tr&ecirc;n 2m</li>\r\n</ul>\r\n', '1683367751_nuoc-hoa-chanel-1.jpg', 1),
(19, 'Nước Hoa Chanel Chance Eau Tendre EDT 50ml nữ', 1, 1, 7, 2, 6, 3000000, 15000000, 5, '<table border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thương hiệu</strong></td>\r\n			<td style=\"width:50%\"><strong>CHANEL</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>  Xuất Xứ</strong></td>\r\n			<td style=\"width:50%\">Ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Dung t&iacute;ch</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/105-ml\">Chai 50ml</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nồng độ</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/eau-de-parfum\">Eau de Parfum</a> (EDP)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nh&oacute;m hương</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/floral-fruity-huong-hoa-co-trai-cay\">Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ lưu hương</strong></td>\r\n			<td style=\"width:50%\">Rất l&acirc;u - Tr&ecirc;n 12 giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ tỏa hương</strong></td>\r\n			<td style=\"width:50%\">Xa - Toả hương trong v&ograve;ng b&aacute;n k&iacute;nh 2 m&eacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thời điểm th&iacute;ch hợp</strong></td>\r\n			<td style=\"width:50%\">Ng&agrave;y, Đ&ecirc;m, Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Th&ocirc;ng tin chung</h3>\r\n\r\n<ul>\r\n	<li>Năm ph&aacute;t h&agrave;nh :2015</li>\r\n	<li>Giới t&iacute;nh : Nữ</li>\r\n	<li>Phong c&aacute;ch :Sang trọng, quyến rũ, ngọt ng&agrave;o</li>\r\n	<li>  Xuất Xứ :Ả Rập</li>\r\n	<li>Promotion :M&atilde; giảm gi&aacute;</li>\r\n</ul>\r\n\r\n<h3>Chi tiết</h3>\r\n\r\n<ul>\r\n	<li>Nồng độ :Eau de Parfum</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lưu hương :Tr&ecirc;n 12h</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Nh&oacute;m hương :Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dung t&iacute;ch :100ml</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Độ tỏa hương :Tr&ecirc;n 2m</li>\r\n</ul>\r\n', '1683367818_nuoc-hoa-chanel-2.jpg', 1),
(20, 'Nước Hoa Dior Sauvage Elixir 60ml', 1, 4, 8, 10, 6, 2500000, 10000000, 8, '<table border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thương hiệu</strong></td>\r\n			<td style=\"width:50%\"><strong>DIOR</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>  Xuất Xứ</strong></td>\r\n			<td style=\"width:50%\">Ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Dung t&iacute;ch</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/105-ml\">Chai 60ml</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nồng độ</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/eau-de-parfum\">Eau de Parfum</a> (EDP)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nh&oacute;m hương</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/floral-fruity-huong-hoa-co-trai-cay\">Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ lưu hương</strong></td>\r\n			<td style=\"width:50%\">Rất l&acirc;u - Tr&ecirc;n 12 giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ tỏa hương</strong></td>\r\n			<td style=\"width:50%\">Xa - Toả hương trong v&ograve;ng b&aacute;n k&iacute;nh 2 m&eacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thời điểm th&iacute;ch hợp</strong></td>\r\n			<td style=\"width:50%\">Ng&agrave;y, Đ&ecirc;m, Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Th&ocirc;ng tin chung</h3>\r\n\r\n<ul>\r\n	<li>Năm ph&aacute;t h&agrave;nh :2015</li>\r\n	<li>Giới t&iacute;nh : Unisex</li>\r\n	<li>Phong c&aacute;ch :Sang trọng, quyến rũ, ngọt ng&agrave;o</li>\r\n	<li>  Xuất Xứ :Ả Rập</li>\r\n	<li>Promotion :M&atilde; giảm gi&aacute;</li>\r\n</ul>\r\n\r\n<h3>Chi tiết</h3>\r\n\r\n<ul>\r\n	<li>Nồng độ :Eau de Parfum</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lưu hương :Tr&ecirc;n 12h</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Nh&oacute;m hương :Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dung t&iacute;ch :100ml</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Độ tỏa hương :Tr&ecirc;n 2m</li>\r\n</ul>\r\n', '1683367983_nuoc-hoa-dior-1.jpg', 1),
(21, 'Nước Hoa Dior Miss Dior Le Parfum 100ml nữ', 3, 4, 12, 0, 3, 3000000, 20000000, 8, '<table border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thương hiệu</strong></td>\r\n			<td style=\"width:50%\">DIOR</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>  Xuất Xứ</strong></td>\r\n			<td style=\"width:50%\">Ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Dung t&iacute;ch</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/105-ml\">Chai 100ml</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nồng độ</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/eau-de-parfum\">Eau de Parfum</a> (EDP)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nh&oacute;m hương</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/floral-fruity-huong-hoa-co-trai-cay\">Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ lưu hương</strong></td>\r\n			<td style=\"width:50%\">Rất l&acirc;u - Tr&ecirc;n 12 giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ tỏa hương</strong></td>\r\n			<td style=\"width:50%\">Xa - Toả hương trong v&ograve;ng b&aacute;n k&iacute;nh 2 m&eacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thời điểm th&iacute;ch hợp</strong></td>\r\n			<td style=\"width:50%\">Ng&agrave;y, Đ&ecirc;m, Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Th&ocirc;ng tin chung</h3>\r\n\r\n<ul>\r\n	<li>Năm ph&aacute;t h&agrave;nh :2015</li>\r\n	<li>Giới t&iacute;nh : Nữ</li>\r\n	<li>Phong c&aacute;ch :Sang trọng, quyến rũ, ngọt ng&agrave;o</li>\r\n	<li>  Xuất Xứ :Ả Rập</li>\r\n	<li>Promotion :M&atilde; giảm gi&aacute;</li>\r\n</ul>\r\n\r\n<h3>Chi tiết</h3>\r\n\r\n<ul>\r\n	<li>Nồng độ :Eau de Parfum</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lưu hương :Tr&ecirc;n 12h</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Nh&oacute;m hương :Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dung t&iacute;ch :100ml</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Độ tỏa hương :Tr&ecirc;n 2m</li>\r\n</ul>\r\n', '1683368078_nuoc-hoa-dior-nu-2.jpg', 1),
(22, 'Nước hoa Gucci Flora Gorgeous Jasmine EDP 100ml', 2, 2, 12, 12, 13, 30000000, 300000000, 5, '<table border=\"1\" cellspacing=\"0\" style=\"border-collapse:collapse; width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thương hiệu</strong></td>\r\n			<td style=\"width:50%\"><strong>GUCCI</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>  Xuất Xứ</strong></td>\r\n			<td style=\"width:50%\">Ph&aacute;p</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Dung t&iacute;ch</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/105-ml\">Chai 100ml</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nồng độ</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/eau-de-parfum\">Eau de Parfum</a> (EDP)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Nh&oacute;m hương</strong></td>\r\n			<td style=\"width:50%\"><a href=\"https://vuahanghieu.com/nuoc-hoa/floral-fruity-huong-hoa-co-trai-cay\">Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ lưu hương</strong></td>\r\n			<td style=\"width:50%\">Rất l&acirc;u - Tr&ecirc;n 12 giờ</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Độ tỏa hương</strong></td>\r\n			<td style=\"width:50%\">Xa - Toả hương trong v&ograve;ng b&aacute;n k&iacute;nh 2 m&eacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:50%\"><strong>Thời điểm th&iacute;ch hợp</strong></td>\r\n			<td style=\"width:50%\">Ng&agrave;y, Đ&ecirc;m, Xu&acirc;n, Hạ, Thu, Đ&ocirc;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Th&ocirc;ng tin chung</h3>\r\n\r\n<ul>\r\n	<li>Năm ph&aacute;t h&agrave;nh :2015</li>\r\n	<li>Giới t&iacute;nh : Unisex</li>\r\n	<li>Phong c&aacute;ch :Sang trọng, quyến rũ, ngọt ng&agrave;o</li>\r\n	<li>  Xuất Xứ :Ả Rập</li>\r\n	<li>Promotion :M&atilde; giảm gi&aacute;</li>\r\n</ul>\r\n\r\n<h3>Chi tiết</h3>\r\n\r\n<ul>\r\n	<li>Nồng độ :Eau de Parfum</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lưu hương :Tr&ecirc;n 12h</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Nh&oacute;m hương :Floral Fruity - hương hoa cỏ tr&aacute;i c&acirc;y</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dung t&iacute;ch :100ml</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Độ tỏa hương :Tr&ecirc;n 2m</li>\r\n</ul>\r\n', '1683368197_nuoc-hoa-gucci-3.jpg', 1),
(152, 'Nước hoa Gucci', 2, 4, 5, 13, 2, 1500000, 17500000, 2, '<p>Hết h&igrave;nh gắn đại</p>\r\n', '1698471447_1683366558_nuoc-hoa-gucci-2.jpg', 1),
(153, 'Nước hoa Chanel', 3, 3, 7, 0, 0, 25000000, 50000000, 10, '<p>Nhức nho nhờ nheo</p>\r\n', '1698325666_download.jpg', 1),
(154, 'Nước hoa chiết', 4, 7, 3, 102, 18, 1500000, 2000000, 2, '<p>sdsad</p>\r\n', '1698489040_images (1).jpg', 1),
(155, 'Nước hoa Gucci 1', 2, 4, 12, 10, 0, 1500000, 5000000, 5, '<p>dasdasd</p>\r\n', '1698765486_product-image.jpg', 1),
(157, 'Nước hoa ST 33', 0, 0, 12, 13, 2, 500000000, 5000, 1, '<p>sad</p>\r\n', '1699004947_6.jpg', 1),
(158, 'Nước hoa chiết 55', 4, 8, 3, 4, 1, 5000, 6000, 2, '<p>5646</p>\r\n', '1699087695_nuoc-hoa-chiet-nhat-kim-anh-3.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vnpay`
--

CREATE TABLE `vnpay` (
  `vnp_id` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankcode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `order_code` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`) USING BTREE;

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`) USING BTREE;

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`) USING BTREE;

--
-- Chỉ mục cho bảng `capacity`
--
ALTER TABLE `capacity`
  ADD PRIMARY KEY (`capacity_id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Chỉ mục cho bảng `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`) USING BTREE;

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`) USING BTREE;

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Chỉ mục cho bảng `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`) USING BTREE;

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`evaluate_id`) USING BTREE;

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`) USING BTREE;

--
-- Chỉ mục cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`inventory_detail_id`) USING BTREE;

--
-- Chỉ mục cho bảng `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`metric_id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`momo_id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE,
  ADD KEY `lkkn` (`account_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`) USING BTREE;

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  ADD PRIMARY KEY (`vnp_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `capacity`
--
ALTER TABLE `capacity`
  MODIFY `capacity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `momo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT cho bảng `vnpay`
--
ALTER TABLE `vnpay`
  MODIFY `vnp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `lkkn` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
