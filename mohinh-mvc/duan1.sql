-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2024 at 03:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `ma_bl` int NOT NULL,
  `ma_tk` int NOT NULL,
  `ma_sp` int NOT NULL,
  `noidung` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `xephang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ma_ctdh` int NOT NULL,
  `ma_dh` int NOT NULL,
  `ma_sp` int NOT NULL,
  `soluong` int NOT NULL,
  `dongia` int NOT NULL,
  `thanhtien` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ma_ctdh`, `ma_dh`, `ma_sp`, `soluong`, `dongia`, `thanhtien`) VALUES
(1, 3, 24, 1, 549000, 549000),
(2, 4, 29, 1, 599000, 599000),
(3, 5, 24, 2, 549000, 1098000),
(4, 6, 30, 1, 8091000, 8091000),
(5, 7, 25, 1, 939000, 939000),
(6, 8, 24, 1, 549000, 549000),
(7, 9, 24, 2, 549000, 1098000),
(8, 9, 25, 1, 939000, 939000),
(9, 10, 24, 0, 549000, 0),
(10, 10, 25, 4, 939000, 3756000),
(11, 11, 25, 3, 939000, 2817000),
(12, 23, 24, 4, 549000, 2196000),
(13, 23, 25, 2, 939000, 1878000),
(14, 24, 24, 3, 549000, 1647000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ma_dm` int NOT NULL,
  `ten_dm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_dm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`ma_dm`, `ten_dm`, `img_dm`) VALUES
(3, 'Ram', 'accset/uploads/ram.png'),
(4, 'CPU', 'accset/uploads/cpu.png'),
(5, 'HDD', 'accset/uploads/hdd.png'),
(6, 'SSD', 'accset/uploads/ssd.png'),
(7, 'VGA', 'accset/uploads/vga.png');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `ma_dh` int NOT NULL,
  `ma_tk` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` int NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_dat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `diachi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tong_tien` int NOT NULL,
  `ma_trangthai` tinyint NOT NULL,
  `ma_pttt` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`ma_dh`, `ma_tk`, `name`, `sdt`, `email`, `ngay_dat`, `diachi`, `ghichu`, `tong_tien`, `ma_trangthai`, `ma_pttt`) VALUES
(3, 0, 'Nguyễn Bá Thư', 483742423, 'th', '2023-12-18 22:08:24', 'hà nội ', 'hàng dễ vỡ ', 549000, 3, 4),
(4, 0, 'Nguyễn Bá Thư', 232423423, 'thu@gmail.com', '2023-07-05 20:57:18', 'Nam Định', 'thundkfs', 599000, 4, 4),
(5, 44, 'Lộc ', 94724234, 'loc@gmail.com', '2023-12-05 21:25:43', 'Hà Nội', 'h3', 1098000, 2, 3),
(6, 44, 'thu', 2147483647, 'thu@gmail.com', '2023-12-05 21:26:12', 'nam định ', 'thúa', 8091000, 1, 4),
(7, 0, '4343243', 43423, 'lmao@gmail.com', '2023-12-07 01:16:21', '4343', '432432', 939000, 1, 3),
(8, 0, '4242', 43242, 'lmao@gmail.com', '2023-12-07 01:41:21', '42342', '2', 549000, 1, 4),
(9, 47, '434', 432432, 'lmao@gmail.com', '2023-12-07 12:16:19', '423423', '4242342', 2037000, 1, 3),
(10, 47, '543', 5454, 'lmao@gmail.com', '2023-12-08 10:22:49', '5454', '5345345', 3756000, 1, 3),
(11, 47, '543', 4234234, 'lmao@gmail.com', '2023-12-08 11:12:45', '43434', '4534535', 2817000, 1, 3),
(12, 47, '543', 4234234, 'lmao@gmail.com', '2023-03-08 11:12:45', '43434', '4534535', 2817000, 1, 3),
(13, 0, 'Nguyễn Bá Thư', 483742423, 'th', '2023-10-10 22:05:52', 'hà nội ', 'hàng dễ vỡ ', 549000, 3, 4),
(14, 0, 'Nguyễn Bá Thư', 232423423, 'thu@gmail.com', '2023-08-12 20:57:18', 'Nam Định', 'thundkfs', 599000, 4, 4),
(15, 44, 'Lộc ', 94724234, 'loc@gmail.com', '2023-11-14 21:25:43', 'Hà Nội', 'h3', 1098000, 2, 3),
(16, 44, 'thu', 2147483647, 'thu@gmail.com', '2023-11-14 21:26:12', 'nam định ', 'thúa', 8091000, 1, 4),
(17, 0, '4343243', 43423, 'lmao@gmail.com', '2023-11-07 01:16:21', '4343', '432432', 939000, 1, 3),
(18, 0, '4242', 43242, 'lmao@gmail.com', '2023-10-23 01:41:21', '42342', '2', 549000, 1, 4),
(19, 47, '434', 432432, 'lmao@gmail.com', '2023-09-19 12:16:19', '423423', '4242342', 2037000, 1, 3),
(20, 47, '543', 5454, 'lmao@gmail.com', '2023-09-11 10:22:49', '5454', '5345345', 3756000, 1, 3),
(21, 47, '543', 4234234, 'lmao@gmail.com', '2023-09-18 11:12:45', '43434', '4534535', 2817000, 1, 3),
(22, 47, '543', 4234234, 'lmao@gmail.com', '2022-12-21 11:12:45', '43434', '4534535', 2817000, 1, 3),
(23, 47, '4342', 4343, 'lmao@gmail.com', '2023-12-08 23:13:27', '4343', '43434342', 4074000, 1, 3),
(24, 47, 'loc', 1234567, 'locmcpe123@gmail.com', '2024-07-10 21:38:15', 'hà nội', '', 1647000, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `ma_nsx` int NOT NULL,
  `ten_nsx` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_nsx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`ma_nsx`, `ten_nsx`, `img_nsx`) VALUES
(3, 'Intel', 'accset/uploads/logo_intel.png'),
(4, 'AMD', 'accset/uploads/logo_amd.png'),
(5, 'SAMSUNG', 'accset/uploads/samsung.jpg'),
(6, 'DELL', 'accset/uploads/logo_dell.png'),
(7, 'APPLE', 'accset/uploads/logo_apple.png'),
(8, 'ASUS', 'accset/uploads/logo_asus.png'),
(9, 'KINGSTON', 'accset/uploads/logo_kingston.png'),
(10, 'CORSAIR', 'accset/uploads/logo_corsair.png'),
(11, 'G.SKILL', 'accset/uploads/logo_g.skill.png'),
(12, 'Desktop', 'd4'),
(13, 'KINGMAX', 'accset/uploads/logo_kingmax.png'),
(14, 'MSI', 'accset/uploads/logo_msi.png');

-- --------------------------------------------------------

--
-- Table structure for table `phuongthucthanhtoan`
--

CREATE TABLE `phuongthucthanhtoan` (
  `ma_pttt` tinyint NOT NULL,
  `ten_pttt` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_pttt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phuongthucthanhtoan`
--

INSERT INTO `phuongthucthanhtoan` (`ma_pttt`, `ten_pttt`, `img_pttt`) VALUES
(3, 'ATM', 'ww'),
(4, 'Paypal', 'ww');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_sp` int NOT NULL,
  `ten_sp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int NOT NULL,
  `soluong` int NOT NULL,
  `mota` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `luotxem` int DEFAULT NULL,
  `ma_nsx` int NOT NULL,
  `ma_dm` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ma_sp`, `ten_sp`, `img`, `gia`, `soluong`, `mota`, `luotxem`, `ma_nsx`, `ma_dm`) VALUES
(22, 'Bộ vi xử lý AMD Ryzen 7 5700X', 'accset/uploads/cpu-amd-ryzen-7-5800x-a1.jpg', 5499000, 0, 'CPU AMD Ryzen 7 5700X là bộ xử lý máy tính để bàn 8 nhân, 16 luồng được sản xuất trên tiến trình 7nm FinFET của TSMC. CPU này được xây dựng trên kiến trúc Zen 3 mới nhất của AMD, mang lại hiệu năng cao hơn so với thế hệ trước. Vì vậy, đây sẽ là lựa chọn tốt cho những người dùng đang tìm kiếm một CPU tầm trung mạnh mẽ, phù hợp với các tác vụ đa nhiệm và chơi game.', 1, 4, 4),
(24, 'RAM Kingston Fury 8 GB-DDR4-2666 MHz (KF426C16BB/8)', 'accset/uploads/ram-kingston-fury-kf426c16bb-8-den-1.jpg', 549000, 0, 'RAM Kingston Fury Beast 8GB DDR4 Bus 2666MHz sở hữu bộ nhớ DDR4 tốc độ cao và tản nhiệt nhôm nguyên chất, cho phép người dùng xây dựng dễ dàng các hệ thống mạnh mẽ với mức chi phí hợp lý.', 1, 9, 3),
(25, 'RAM CORSAIR Vengeance RGB RS 8 GB-DDR4-3200 MHz', 'accset/uploads/ram-corsair-vengeance-rgb-rs-8-gb-ddr4-3200-mhz-cmg8gx4m1e3200c16-den-3.jpg', 939000, 0, 'Với LED RGB tích hợp cùng bộ tản nhiệt nhôm hầm hố, RAM Corsair Vengeance RGB RS 8GB DDR4 sẽ giúp hệ thống của bạn trở nên sống động. Bên cạnh đó, sản phẩm bộ nhớ này cũng mang lại những trải nghiệm hiệu suất cao nhất của DDR4.', 1, 10, 3),
(26, 'RAM G.SKILL Trident 16G (8Gx2) F4-3000C16D-16GTZR', 'accset/uploads/ram-gskill-16g-f4-3000c16d-16gtzr-1.jpg', 1599000, 0, 'Bên cạnh thiết kế đỉnh cao với đèn LED RGB rực rỡ kết hợp với bộ tản nhiệt Trident Z từng đoạt giải thưởng và chế tạo bằng các thành phần chất lượng cao nhất, RAM Gskill 16GB Bus 3000 sẽ là bộ kit RAM vô cùng đáng mua ở thời điểm này.', 1, 11, 3),
(27, 'RAM Desktop V-Color Skywalker Plus 8 GB - DDR4 - 3200 MHz - Purple', 'accset/uploads/ram-desktop-v-color-skywalker-plus-8-gb-ddr4-3200-mhz-tim-1.jpg', 599000, 0, 'RAM V-Color Skywalker Plus 8GB DDR4 3200MHz nổi bật với tản nhiệt chất lượng cao, dung lượng bộ nhớ DDR4 dồi dào và khả năng ép xung cực đỉnh. Sản phẩm tương thích với cả nền tảng Intel và AMD.', 1, 12, 3),
(28, 'RAM Desktop Kingspec 4 GB-DDR4-2666 MHz ', 'accset/uploads/ram-desktop-kingspec-4-gb-ddr4-2666-mhz-den-1.jpg', 399000, 0, 'RAM Kingspec 4GB DDR4 2666MHz là một giải pháp xây dựng mới hoặc nâng cấp bộ nhớ trên hệ thống. Với tốc độ truyền nhanh chóng và bộ nhớ chuẩn DDR4, sản phẩm sẽ mang đến hiệu suất vượt trội cho dàn PC của bạn.', 1, 12, 3),
(29, 'RAM Kingmax Zeus RGB 8 GB-DDR4-3200 MHz', 'accset/uploads/ram-kingmax-zeus-rgb-8gb-ddr4-3200-mhz-1.jpg', 599000, 0, 'RAM Kingmax Zeus RGB 8GB DDR4 3200MHz chắc chắn là một lựa chọn bộ nhớ hoàn hảo để nâng cao hiệu suất cũng như tính thẩm mỹ cho dàn PC của bạn.', 1, 13, 3),
(30, 'Card đồ họa Asus TUF RTX 3060 O12G V2 GAMING', 'accset/uploads/vga-asus-tuf-rtx3060-o12g-v2-gaming-1.jpg', 8091000, 0, 'Card đồ họa Asus TUF RTX 3060 O12G V2 GAMING đã được rút gọn và tích hợp lại để cung cấp sức mạnh và khả năng làm mát mạnh mẽ hơn. Các thành phần linh kiện TUF, Công nghệ Auto-Extreme và một lỗ thoát khí ở mặt sau khiến cho thiết kế của sản phẩm TUF như trở thành 1 siêu phẩm. Đối với những người ráp máy đang tìm kiếm một ', 1, 8, 7),
(31, 'Card đồ họa Asus TUF RTX4070-O12G Gaming', 'accset/uploads/vga-asus-tuf-rtx4070-o12g-gaming-4.jpg', 20590000, 0, 'Asus TUF Gaming GeForce RTX 4070 12GB GDDR6X OC Edition là lựa chọn hoàn hảo cho những người đam mê chơi game và làm việc đồ hoạ. Với hiệu năng vượt trội, thiết kế tản nhiệt đáng tin cậy và nhiều công nghệ tiên tiến được tích hợp, card đồ hoạ này hứa hẹn sẽ đem lại trải nghiệm đỉnh cao về đồ họa và game, đồng thời đáp ứng các yêu cầu khắt khe của người dùng chuyên nghiệp.', 1, 8, 7),
(32, 'Card đồ hoạ Asus PH-RTX3050-8G - 8GB GDDR6 - 128 bit', 'accset/uploads/vga-asus-ph-rtx3050-8gb-gddr6-128-bit-den-2.jpg', 6399000, 0, 'Mặc dù sở hữu kích thước siêu nhỏ gọn nhưng Asus Phoenix GeForce RTX 3050 8GB GDDR6 vẫn đảm bảo hiệu suất chơi game ấn tượng. Với quy trình sản xuất Auto-Extreme Technology, card đồ hoạ sẽ trở thành một người bạn đồng hành lâu dài cho các game thủ trong nhiều năm tới.', 1, 8, 7),
(35, 'Card đồ họa Asus DUAL RX 6600XT O8G', 'accset/uploads/vga-asus-dual-rx6600xt-o8g-1.jpg', 7990000, 0, 'Mang đến trải nghiệm kiến trúc AMD RDNA 2 mới nhất ở dạng cơ bản nhất, Card đồ họa Asus DUAL Radeon RX 6600 XT kết hợp giữa hiệu năng và sự đơn giản, độc nhất, tận dụng các công nghệ làm mát tiên tiến từ các card đồ họa hàng đầu, Dual tập trung vào chất lượng hơn phong cách, là sự lựa chọn hoàn hảo cho cho những hệ thống cân đối giữa hiệu năng và thiết kế.', 1, 8, 7),
(36, 'Ổ Cứng HDD WD Blue 2 TB SATA 3 - 7200 rpm (WD1003FZEX)', 'accset/uploads/hdd-wd-blue-2-tb-sata-3-7200-rpm-xanh-3.jpg', 1599000, 0, 'Ổ cứng HDD WD Blue 2TB 3.5 inch SATA III là một giải pháp hoàn hảo để mang lại dung lượng lưu trữ lớn cho hệ thống với mức chi phí hợp lý nhất. Sản phẩm cung cấp 2TB dung lượng bộ nhớ, đảm bảo đáp ứng tốt nhu cầu sử dụng của hầu hết mọi người.', 1, 3, 5),
(37, 'Ổ cứng HDD Enterprise WD Ultrastar DC HC330 10TB 3.5', 'accset/uploads/hdd-enterprise-wd-ultrastar-dc-hc330-10tb.jpg', 6990000, 0, 'Ổ cứng HDD WD Ultrastar DC HC330 10TB là một ổ cứng dành cho doanh nghiệp với nhiều tính năng nổi bật. Ổ cứng này đáp ứng nhu cầu lưu trữ, tốc độ truy cập dữ liệu, độ bền và ổn định cao của các doanh nghiệp.', 1, 3, 5),
(38, 'Ổ cứng HDD Western Digital Black 4TB 7200rpm - 256MB - Sata3', 'accset/uploads/hdd-western-digital-black-4tb-7200rpm-1.jpg', 4999000, 0, 'Ổ cứng HDD Western Digital Black 4TB 7200rpm - 256MB là một giải pháp lưu trữ hiệu suất cao, được thiết kế đặc biệt cho game thủ và các chuyên gia sáng tạo. Với độ tin cậy, tốc độ truyền dữ liệu nhanh và dung lượng lưu trữ lớn, đây sẽ là một lựa chọn đáng tin cậy để lưu trữ và truy xuất dữ liệu của bạn.', 1, 3, 5),
(39, 'Ổ Cứng HDD WD Blue 1 TB SATA 3 - 7200 rpm (WD60EZAZ)', 'accset/uploads/logo_intel.png', 1399000, 0, 'Với dung lượng lưu trữ lớn và tốc độ truyền tải dữ liệu nhanh, ổ cứng HDD WD Blue 1TB 3.5 inch SATA III sẽ phù hợp với nhiều mục đích sử dụng, đáp ứng tốt nhu cầu sử dụng lưu trữ các trò chơi và dữ liệu có dung lượng lớn.', 1, 3, 5),
(40, 'Ổ cứng HDD Seagate IronWolf 4TB 5900rpm SATA 3.5', 'accset/uploads/_hhd-seagate-ironwolf-4tb-5900rpm-1.jpg', 2999000, 0, 'Ổ cứng HDD Seagate IronWolf 4TB 5900 RPM được tối ưu hóa cho môi trường NAS đòi hỏi hiệu suất mạnh mẽ và độ bền cao, đảm bảo rằng dữ liệu của bạn được lưu trữ và truy xuất một cách tin cậy và nhanh chóng.', 1, 3, 5),
(41, 'Ổ Cứng HDD WD BLACK 4TB - 3.5', 'accset/uploads/_hdd-wd-black-4tb-35-sata-3-256mb-cache-7200rpm-1.jpg', 5000000, 0, 'Ổ cứng WD Black 4TB (7200RPM, SATA 6Gb/s, 256MB Cache) là một sản phẩm lưu trữ có nhiều tính năng nổi bật, phù hợp với các game thủ và người dùng chuyên nghiệp. Ổ cứng này có thể cung cấp tốc độ lưu trữ cao, dung lượng lưu trữ khổng lồ và độ bền tốt cho người dùng.', 1, 3, 5),
(42, 'SSD WD 480 GB M.2 NVMe - Đọc: 2400 MB/s - Ghi: 1650 MB/s', 'accset/uploads/ssd-wd-480-gb-m-2-nvme-sn350-green-1.jpg', 939000, 0, 'Nếu bạn đang tìm kiếm một ổ cứng SSD giá cả phải chăng, dung lượng lớn và hiệu suất cao, SSD WD Green SN350 M.2 NVMe 480GB sẽ là lựa chọn không thể bỏ qua để xây dựng các dàn PC hiệu năng cao với chi phí tối ưu.', 1, 3, 6),
(43, 'Ổ Cứng SSD Kingston 500 GB M.2 NVMe Đọc: 3500 MB/s', 'accset/uploads/ssd-kingston-500-gb-m2-nvme-doc-3500-mbs-ghi-2100-mbs-snv2s500g-1.jpg', 899000, 0, 'Với hiệu năng từ NVMe PCIe Gen 4x4 thế hệ mới, ổ SSD Kingston 500 GB M.2 NVMe cho tốc độ đọc lên tới 3500 MB/s và tốc độ ghi lên tới 2100 MB/s. Nhờ đó máy tính của bạn sẽ được tăng tốc toàn diện, có một sự “lột xác” về tốc độ. Hãy thử trải nghiệm tốc độ khởi động và tắt máy chỉ trong 1 – 2s; mở những tệp tin dung lượng khổng lồ hay chạy các ứng dụng nặng trong chớp mắt, bạn sẽ thấy được sự khác biệt từ SSD Kingston 500 GB M.2 NVMe.', 1, 3, 6),
(44, 'Ổ Cứng SSD Lexar 256 GB M2 NVME - Đọc: 3000 MB/s', 'accset/uploads/ssd-lexar-256-gb-m2-nvme-den-3.jpg', 839000, 0, 'Ổ cứng SSD Lexar 256GB NM620 M.2 2280 NVMe cho phép bạn dễ dàng cải thiện hiệu suất của hệ thống với chi phí rất phải chăng. Sản phẩm cung cấp dung lượng bộ nhớ 256GB và tốc độ truyền dữ liệu siêu nhanh.', 1, 3, 6),
(45, 'Ổ Cứng Gigabyte GP-GSTFS31120GNTD 120GB (Sata 3)', 'accset/uploads/ssd-gigabyte-gp-gstfs31120gntd-120gb-sata-3-den-1.jpg', 529000, 0, 'Nếu bạn chưa bao giờ sử dụng ổ cứng SSD trước đây, ổ cứng SSD Gigabyte 120GB SATA 3 sẽ là sản phẩm tuyệt vời dành cho bạn. Chiếc ổ cứng này hoàn hảo để trở thành nơi chứa hệ điều hành và các phần mềm cho máy tính của bạn.', 1, 3, 6),
(46, 'SSD Kingmax 256 GB M.2 NVMe - Đọc: 1950 MB/s', 'accset/uploads/ssd-kingmax-128-gb-m2-nvme-doc-1950-mb-s-ghi-1200-mb-s-den-1.jpg', 899000, 0, 'Ổ cứng SSD Kingmax 256GB cung cấp tốc độ lên đến 1950MB/s giúp cho hệ thống của bạn có được hiệu suất lưu trữ hàng đầu. Trải nghiệm chơi game và làm việc chắc chắn sẽ được cải thiện rất nhiều khi bạn sử dụng sản phẩm này.', 1, 13, 6),
(47, 'Ổ cứng SSD Silicon Power UD85 250 GB M.2 NVMe PCIe Gen 4x4 - Đọc: 3300 MB/s - Ghi: 1300 MB/s', 'accset/uploads/ssd-silicon-power-ud85-250-gb-m2-nvme-pcIe-gen-4x4-doc-3300-mbs-ghi-1300-mbs-1.jpg', 589999, 0, 'Với nhiều tính năng nổi bật, ổ cứng SSD Silicon Power UD85 250GB NVMe PCIe 4.0 M.2 hứa hẹn mang lại trải nghiệm lưu trữ và truy cập dữ liệu tốc độ cao, đáng tin cậy cho người dùng máy tính.', 1, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ma_tk` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` int DEFAULT NULL,
  `ma_vaitro` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`ma_tk`, `user`, `pass`, `email`, `dia_chi`, `sdt`, `ma_vaitro`) VALUES
(0, 'khách onl', '', '', NULL, NULL, 3),
(1, 'admin ', 'admin', 'admin@lmao.com', 'admin', 1, 0),
(44, 'loc333', '123', 'lockute132@gmail.com', '', 0, 2),
(46, 'khac', 'khach', 'lmao@gmail.com', '', 0, 2),
(47, 'khach', 'khach', 'lmao@gmail.com', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `ma_trangthai` tinyint NOT NULL,
  `ten_trangthai` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`ma_trangthai`, `ten_trangthai`) VALUES
(1, 'Đang xử lý...'),
(2, 'Đang gửi'),
(3, 'Dang su ly...'),
(4, 'dang gui');

-- --------------------------------------------------------

--
-- Table structure for table `vaitro`
--

CREATE TABLE `vaitro` (
  `ma_vaitro` tinyint NOT NULL,
  `vai_tro` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaitro`
--

INSERT INTO `vaitro` (`ma_vaitro`, `vai_tro`) VALUES
(0, 'admin'),
(1, 'test'),
(2, 'user'),
(3, 'loc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `ma_sp` (`ma_sp`),
  ADD KEY `ma_tk` (`ma_tk`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ma_ctdh`),
  ADD KEY `ma_dh` (`ma_dh`),
  ADD KEY `ma_sp` (`ma_sp`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ma_dm`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_dh`),
  ADD KEY `ma_pttt` (`ma_pttt`),
  ADD KEY `ma_tk` (`ma_tk`),
  ADD KEY `ma_trangthai` (`ma_trangthai`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`ma_nsx`);

--
-- Indexes for table `phuongthucthanhtoan`
--
ALTER TABLE `phuongthucthanhtoan`
  ADD PRIMARY KEY (`ma_pttt`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_sp`),
  ADD KEY `ma_nsx` (`ma_nsx`),
  ADD KEY `ma_dm` (`ma_dm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ma_tk`),
  ADD KEY `ma_vaitro` (`ma_vaitro`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`ma_trangthai`);

--
-- Indexes for table `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`ma_vaitro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ma_bl` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `ma_ctdh` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ma_dm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_dh` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `ma_nsx` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `phuongthucthanhtoan`
--
ALTER TABLE `phuongthucthanhtoan`
  MODIFY `ma_pttt` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma_sp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ma_tk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `ma_trangthai` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vaitro`
--
ALTER TABLE `vaitro`
  MODIFY `ma_vaitro` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`ma_sp`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`ma_tk`) REFERENCES `taikhoan` (`ma_tk`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`ma_dh`) REFERENCES `donhang` (`ma_dh`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`ma_sp`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ma_pttt`) REFERENCES `phuongthucthanhtoan` (`ma_pttt`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`ma_tk`) REFERENCES `taikhoan` (`ma_tk`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`ma_trangthai`) REFERENCES `trangthai` (`ma_trangthai`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ma_nsx`) REFERENCES `nhasanxuat` (`ma_nsx`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`ma_dm`) REFERENCES `danhmuc` (`ma_dm`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`ma_vaitro`) REFERENCES `vaitro` (`ma_vaitro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
