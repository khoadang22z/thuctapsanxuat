-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2026 at 05:13 AM
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
-- Database: `quanlichitieucanhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `limit_amount` decimal(15,2) NOT NULL,
  `month_year` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `budgets`
--

INSERT INTO `budgets` (`id`, `user_id`, `category_id`, `limit_amount`, `month_year`) VALUES
(1, 1, 4, 1600000.00, '2026-11'),
(2, 1, 5, 2000000.00, '2026-11'),
(3, 1, 6, 400000.00, '2026-11'),
(4, 1, 7, 600000.00, '2026-11'),
(5, 1, 8, 500000.00, '2026-11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `type`) VALUES
(1, 1, 'Tiền gia đình chu cấp', 'THU'),
(2, 1, 'Làm thêm kỹ thuật / Cài Win & Camera', 'THU'),
(3, 1, 'Thưởng & Thu nhập khác', 'THU'),
(4, 1, 'Ăn uống & Cà phê', 'CHI'),
(5, 1, 'Tiền trọ & Điện nước', 'CHI'),
(6, 1, 'Xăng xe & Đi lại', 'CHI'),
(7, 1, 'Học tập & Thiết bị IT', 'CHI'),
(8, 1, 'Mua sắm & Quà tặng', 'CHI'),
(9, 1, 'Giải trí & Nạp game', 'CHI');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `wallet_id`, `category_id`, `amount`, `reason`, `note`, `transaction_date`) VALUES
(1, 1, 2, 1, 3500000.00, 'Tiền gia đình gửi đầu tháng', 'Mẹ chuyển khoản sinh hoạt phí tháng 8', '2026-08-05'),
(2, 1, 2, 5, 1800000.00, 'Đóng tiền phòng trọ tháng 8', 'Bao gồm tiền phòng và rác', '2026-08-07'),
(3, 1, 1, 4, 850000.00, 'Tiền ăn trưa và ăn tối', 'Ăn cơm bình dân khu vực Củ Chi', '2026-08-20'),
(4, 1, 1, 6, 250000.00, 'Đổ xăng xe máy', 'Đổ xăng đi học cả tháng', '2026-08-25'),
(5, 1, 2, 1, 3500000.00, 'Tiền gia đình gửi đầu tháng', 'Sinh hoạt phí tháng 9', '2026-09-03'),
(6, 1, 1, 2, 950000.00, 'Lắp đặt camera và đi dây mạng', 'Làm thêm cuối tuần cho nhà dân', '2026-09-12'),
(7, 1, 2, 5, 1850000.00, 'Đóng tiền phòng trọ tháng 9', 'Phòng 1.5tr + điện nước 350k', '2026-09-06'),
(8, 1, 2, 7, 650000.00, 'Mua giáo trình và đóng học phí phụ thu', 'Tài liệu môn Lập trình Web & CSDL', '2026-09-10'),
(9, 1, 1, 4, 1100000.00, 'Tiền ăn trưa và ăn tối', 'Ăn uống hằng ngày tháng 9', '2026-09-22'),
(10, 1, 3, 6, 320000.00, 'Đổ xăng xe máy', 'Đi lại và về quê cuối tháng', '2026-09-28'),
(11, 1, 2, 1, 3500000.00, 'Tiền gia đình gửi đầu tháng', 'Sinh hoạt phí tháng 10', '2026-10-02'),
(12, 1, 1, 2, 1200000.00, 'Sửa máy tính và cài phần mềm', 'Khắc phục lỗi mạng & nâng cấp SSD cho khách', '2026-10-14'),
(13, 1, 2, 5, 1820000.00, 'Đóng tiền phòng trọ tháng 10', 'Tiền nhà + điện nước', '2026-10-05'),
(14, 1, 1, 4, 1250000.00, 'Tiền ăn trưa và ăn tối', 'Ăn cơm trưa đi học + ăn tối', '2026-10-18'),
(15, 1, 3, 8, 550000.00, 'Mua quà tặng ngày 20/10', 'Mua quà và hoa dịp Phụ nữ Việt Nam', '2026-10-19'),
(16, 1, 1, 6, 280000.00, 'Đổ xăng xe máy', 'Đổ đầy bình 4 lần trong tháng', '2026-10-25'),
(17, 1, 3, 9, 200000.00, 'Nạp thẻ game giải trí', 'Nạp thẻ cuối tuần thư giãn', '2026-10-27'),
(18, 1, 2, 1, 3500000.00, 'Tiền gia đình gửi đầu tháng', 'Mẹ chuyển khoản tiền sinh hoạt tháng 11', '2026-11-02'),
(19, 1, 1, 2, 1500000.00, 'Lắp đặt camera và đi dây mạng', 'Lắp trọn bộ 2 mắt camera cho tiệm tạp hóa', '2026-11-11'),
(20, 1, 2, 2, 800000.00, 'Sửa máy tính và cài phần mềm', 'Vệ sinh laptop, cài Win & Office cho 4 máy', '2026-11-19'),
(21, 1, 3, 3, 300000.00, 'Thưởng hỗ trợ nhóm đồ án', 'Tiền thưởng làm thêm ngoài giờ', '2026-11-24'),
(22, 1, 2, 5, 1880000.00, 'Đóng tiền phòng trọ tháng 11', 'Tiền phòng 1.500k + điện 280k + nước/wifi 100k', '2026-11-05'),
(23, 1, 1, 4, 420000.00, 'Tiền ăn trưa và ăn tối', 'Cơm trưa căn tin và cơm tối tuần 1', '2026-11-07'),
(24, 1, 1, 6, 110000.00, 'Đổ xăng xe máy', 'Đổ xăng A95 đầy bình', '2026-11-08'),
(25, 1, 3, 4, 185000.00, 'Cà phê chạy deadline nhóm', 'Uống nước họp nhóm làm đề cương PHP', '2026-11-10'),
(26, 1, 2, 7, 450000.00, 'Mua linh kiện & dụng cụ mạng', 'Mua kìm bấm mạng, hạt RJ45 và dây cáp test', '2026-11-13'),
(27, 1, 1, 4, 460000.00, 'Tiền ăn trưa và ăn tối', 'Chi phí ăn uống hằng ngày tuần 2', '2026-11-15'),
(28, 1, 3, 8, 390000.00, 'Mua quần áo & đồ dùng cá nhân', 'Đặt áo thun và đồ sinh hoạt trên sàn TMĐT', '2026-11-17'),
(29, 1, 1, 6, 115000.00, 'Đổ xăng xe máy', 'Đổ xăng đi học và đi làm thêm', '2026-11-20'),
(30, 1, 3, 9, 150000.00, 'Nạp thẻ game giải trí', 'Nạp sự kiện cuối tuần', '2026-11-22'),
(31, 1, 1, 4, 490000.00, 'Tiền ăn trưa và ăn tối', 'Ăn uống hằng ngày tuần 3 & 4', '2026-11-25'),
(32, 1, 3, 4, 210000.00, 'Cà phê chạy deadline nhóm', 'Ngồi quán cà phê ghép code và làm slide', '2026-11-27'),
(33, 1, 1, 6, 95000.00, 'Đổ xăng xe máy', 'Đổ xăng cuối tháng', '2026-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `created_at`) VALUES
(1, 'khoa2006', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nguyễn Đăng Khoa', '2026-08-15 08:30:00'),
(2, 'vanquang', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Trần Văn Quang', '2026-09-01 09:00:00'),
(3, 'mynguyen', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nguyễn Thị Trà My', '2026-09-02 10:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `name`, `balance`) VALUES
(1, 1, 'Tiền mặt (Ví cá nhân)', 1420000.00),
(2, 1, 'Thẻ ngân hàng Vietcombank', 4850000.00),
(3, 1, 'Ví điện tử MoMo', 630000.00),
(4, 2, 'Tiền mặt', 2100000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `transaction_date` (`transaction_date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
