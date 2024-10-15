-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 05:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_qlbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `id` int(11) NOT NULL,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(20) NOT NULL,
  `bill_email` varchar(50) NOT NULL,
  `bill_pttt` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1.thanh toán trực tiếp 2.chuyển khoản 3.thanh toán online',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `bill_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang xử lý 2.Đang giao hàng 3.Đã giao hàng',
  `receive_name` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(20) DEFAULT NULL,
  `iduser` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_bill`
--

INSERT INTO `tbl_bill` (`id`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `receive_name`, `receive_address`, `receive_tel`, `iduser`) VALUES
(28, 'dlich', 'lap thach vp', '098555555', 'duclich@gmail.com', 1, 'Thursday 18th of April 2024 06:02:49 AM', 630, 0, NULL, NULL, NULL, 17),
(29, 'cucdl', 'Cao phong Sông lô', '016564116546', 'cucmei@gmail.com', 1, 'Thursday 18th of April 2024 09:29:48 AM', 625, 0, NULL, NULL, NULL, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpro` int(11) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`id`, `iduser`, `idpro`, `noidung`, `ngaybinhluan`) VALUES
(13, 18, 50, 'giày đẹp thế phải mua ngay thôi', 'Saturday 13th of April 2024 01'),
(14, 18, 54, 'được rồi đúng không', 'Saturday 13th of April 2024 01'),
(20, 17, 53, 'mũ đẹp quá shop', 'Monday 15th of April 2024 10:5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(10, 'The Blue Exchange'),
(13, 'Việt Tiến'),
(16, 'Ivy Moda'),
(17, 'Elise'),
(23, 'Đồng hồ Fossil'),
(24, 'Đồng hồ Ogiva'),
(25, 'Đồng hồ Casio'),
(27, 'Acer'),
(28, 'Lenovo'),
(40, 'Nike'),
(41, 'Adidas'),
(42, ' Buma'),
(43, 'New Balance'),
(44, 'Fila'),
(45, 'Levis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpro` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `c_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `idbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `iduser`, `idpro`, `img`, `c_name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(82, 17, 52, 'mu-nike-aerobill-tailwind-cap-bv2204-010-mau-den-64d0a8be696af-07082023151806.webp', 'Mũ Nike Aerobill Tailwind ', 30, 1, 30, 28),
(83, 17, 58, 'dong-ho-fossil.jpg', 'Đồng hồ Fossil', 400, 1, 400, 28),
(84, 17, 48, 'Giay_Tennis_Barricade_13_trang_IG3114_HM1.avif', 'GIÀY TENNIS BARRICADE 13', 200, 1, 200, 28),
(85, 18, 50, 'm1906nb_nb_02_i.webp', '1906 Utility', 160, 1, 160, 29),
(86, 18, 57, 'dong-ho-casio.jpg', 'Đồng hồ CaSIO', 350, 1, 350, 29),
(87, 18, 49, 'Ao_Polo_Henley_Tennis_HEAT.RDY_Pro_FreeLift_DJen_IS8970_21_model.avif', 'ÁO POLO HENLEY TENNIS ', 115, 1, 115, 29);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cartegory`
--

CREATE TABLE `tbl_cartegory` (
  `cartegory_id` int(11) NOT NULL,
  `cartegory_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cartegory`
--

INSERT INTO `tbl_cartegory` (`cartegory_id`, `cartegory_name`) VALUES
(19, 'Đồ thể thao'),
(22, 'Đồng hồ'),
(23, 'Mũ'),
(26, 'Quần áo'),
(53, 'Váy'),
(54, 'Trang phục Vest'),
(55, 'Trang phục công sở'),
(56, 'Trang phục trẻ em'),
(57, 'Giày');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cartegory_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_desc` varchar(5000) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_view` int(11) NOT NULL DEFAULT 0,
  `product_soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `cartegory_id`, `brand_id`, `product_price`, `product_desc`, `product_img`, `product_view`, `product_soluong`) VALUES
(11, 'Áo thun', 26, 13, 99000.00, 'vDVBB', 'ao-thun-viet-tien.jpg', 20, 15),
(21, 'Quần âu', 26, 13, 750.00, 'vải mỏng thoáng mát', 'quan-tay-viet-tien.jpg', 1100, 10),
(22, 'áo sơ mi dài tay', 26, 13, 200.00, 'áo đẹp dành cho thanh thiếu niên', 'ai-so-mi-viet-tien-dai-tay.jpg', 400, 100),
(23, 'Đồng hồ Ogiva', 22, 24, 1200.00, 'Được ưu ái với tên gọi “đồng hồ Thụy Sỹ dành cho người châu Á”. Mang cho mình cỗ máy Thụy Sỹ, Ogival nghiễm nhiên khẳng định chất lượng của mình. Đánh trúng tâm lý yêu thích những biểu tượng mang đậm nét văn hóa như linh vật phương Đông Lucky Fish, hãng đã đưa đến bộ sưu tập Skeleton chạm khắc lên mặt số được giới doanh nhân đặc biệt yêu thích. Ngoài ra, Ogival vẫn có nhiều mẫu đồng hồ Thụy Sỹ giá tương đồng đồng hồ Nhật Bản chỉ dưới 10 triệu đồng.', 'dong-ho-ogival.jpg', 0, 25),
(48, 'GIÀY TENNIS BARRICADE 13', 19, 41, 200.00, 'KIỂM SOÁT TỪNG ĐIỂM SỐ VỚI ĐÔI GIÀY TENNIS CÓ SỬ DỤNG CHẤT LIỆU TÁI CHẾ.\r\nLàm chủ sân đấu với đôi giày tennis adidas Barricade này. Hệ thống Torsion System tạo độ ổn định giúp bạn xoay chuyển thế trận, cùng dây giày lệch về một bên giúp cố định bàn chân khi bạn thực hiện các cú chuyển hướng nhanh và trượt cứu bóng. Đế giữa REPETITOR tạo độ nâng đỡ và chuyển động mượt mà cho các sải bước trên sân. Các vùng Sensepod Geofit ôm theo hình dáng tự nhiên của gót chân bạn, đảm bảo cảm giác thoải mái và nâng đỡ tới tận match point.\r\n\r\nSản phẩm này có chứa tối thiểu 20% chất liệu tái chế. Bằng cách tái sử dụng các chất liệu đã được tạo ra, chúng tôi góp phần giảm lãng phí và giảm phụ thuộc vào các nguồn tài nguyên hữu hạn, cũng như giảm phát thải từ các sản phẩm mà chúng tôi sản xuất', 'Giay_Tennis_Barricade_13_trang_IG3114_HM1.avif', 0, 66),
(50, '1906 Utility', 19, 43, 160.00, 'Description\r\nThese running shoes are designed with comfort features and premium technology to keep up with your active lifestyle', 'm1906nb_nb_02_i.webp', 0, 23),
(51, 'Mũ nike snapack air', 23, 40, 25.00, 'bamgajhg vajhahakj bajhagnv jhgajv hva jhgajb j gajba hja ja bkav', 'f7969dbbd0dd0f50fa1160e9476fb148382d75c5_0.jpg', 0, 100),
(53, 'HEAT RDY CAP', 23, 41, 72.00, '', 'HEAT_RDY_CAP_Xam_IN2733_01_standard.avif', 0, 15),
(54, 'HEAT RDY CAP 2', 23, 41, 22.00, 'fdzay sbs bsb bz rwaba b F', 'Mu_Golf_Performance_Crestable_trang_IQ2907_02_standard_hover.avif', 0, 50),
(57, 'Đồng hồ CaSIO', 22, 25, 350.00, 'Thương hiệu uy tín', 'dong-ho-casio.jpg', 0, 22),
(58, 'Đồng hồ Fossil', 22, 23, 400.00, 'bzjasgg agiab kak bab ayah gua  a agagaga  ag aga gjs  a', 'dong-ho-fossil.jpg', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `address`, `tel`, `username`, `password`, `role`) VALUES
(17, 'duclich@gmail.com', 'lap thach vp', '098555555', 'dlich', '12345', 0),
(18, 'cucmei@gmail.com', 'Cao phong Sông lô', '016564116546', 'cucdl', '111111', 0),
(19, 'admin@gmail.com', NULL, NULL, 'admin', '123456', 1),
(31, 'gat@gmail.com', NULL, NULL, 'yhI668agk6', '12345877t7f', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_binhluan_product` (`idpro`),
  ADD KEY `pk_binhluan_user` (`iduser`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cartegory`
--
ALTER TABLE `tbl_cartegory`
  ADD PRIMARY KEY (`cartegory_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `pk_product_cartegory` (`cartegory_id`),
  ADD KEY `pk_product_brand` (`brand_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_cartegory`
--
ALTER TABLE `tbl_cartegory`
  MODIFY `cartegory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD CONSTRAINT `pk_binhluan_product` FOREIGN KEY (`idpro`) REFERENCES `tbl_product` (`product_id`),
  ADD CONSTRAINT `pk_binhluan_user` FOREIGN KEY (`iduser`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `pk_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
