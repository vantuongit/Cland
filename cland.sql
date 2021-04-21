-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 10:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cland`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(10) UNSIGNED NOT NULL,
  `cname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `cname`) VALUES
(1, 'Nhà đất bán'),
(2, 'Nhà đất cho thuê'),
(19, 'Cần bán'),
(20, 'Cần Thuê');

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `lid` int(10) UNSIGNED NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `c_id` int(10) UNSIGNED NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lands`
--

INSERT INTO `lands` (`lid`, `lname`, `description`, `date_create`, `c_id`, `picture`, `area`, `address`, `count_views`) VALUES
(4, 'Thuê chung cư mini 2 pn khu Bắc Từ Liêm', 'Cần thuê gấp chung cư mini 2 phòng ngủ, đầy đủ nội thất cơ bản, sạch sẽ, gần trường Học Viện Tài Chính và Y Tế Công Cộng 3km đổ lại. Giá tầm 5,5tr đổ lại.', '2017-08-11 17:48:21', 3, 'files/APiFVgrBxKXx3THb0zqUK7IXAXWD3k9yGsjmSZjn.jpeg', 90, 'Quận Bắc Từ Liêm - Hà Nội', 500),
(13, 'CHÍNH CHỦ BÁN NHÀ NGAY CÔNG VIÊN ĐƯỜNG TRƯỜNG SA, P. 17, QUẬN BÌNH THẠNH, GIÁ 85TR/M2', '- Chính chủ bán nhà ngay công viên đường Trường Sa, P. 17, Quận Bình Thạnh, đi bộ 5 phút tới Quận 1.\r\n- Hẻm xe hơi sát đường Trường Sa quy hoạch ra đường 20m.\r\n- Diện tích còn lại 150 m2.\r\n- Giấy phép xây dựng 1 hầm 5 lầu, xây được 35 phòng thu net 180tr/tháng.\r\n-Giá: 12,75 tỉ', '2021-04-13 01:34:59', 1, '1-468333601637900.jpg', 150, 'Đường Trường Sa, Phường 17, Bình Thạnh, Hồ Chí Minh', 0),
(14, 'BÁN CĂN NHÀ 3 TẦNG GIÁ 1 TỶ 180 TRIỆU Ở CẠNH ĐÔ THỊ ĐÔ NGHĨA VÀ SIÊU THỊ AEON MALL HÀ ĐÔNG', 'Nhà chính chủ đứng tên tôi.\r\n\r\n- Ngay cạnh khu đô thị Đô Nghĩa và công viên Nhạc Nước sầm uất.\r\n- Cạnh đê Yên Nghĩa chỉ 50m và nằm ở trong đê chứ không phải ngoài đê, đường đê đang mở rộng gấp 3 lần và xong đến 90%. Đường xong vào tháng 11 này thì giá sẽ tăng cao.\r\n\r\n- Gần đại siêu thị của Nhật Bản Aeon Mall Hà Đông.\r\n- Gần Vinhomes Smart City là đại đô thị thông minh đẳng cấp quốc tế đầu tiên của Việt Nam với gần 60 tòa chung cư cao cấp cao 40 tầng.\r\n- Nằm giữa các khu đô thị mới, được thừa hưởng đầy đủ dịch vụ và tiện ích ăn theo đô thị đã đi vào hoạt động sầm uất.\r\n\r\nSổ đỏ chính chủ nhà đất tên tôi như ảnh sổ đỏ ở tin đăng không tiếp môi giới.\r\n\r\n* Mô tả nhà:\r\n- Nhà xây 3 tầng, diện tích đất 32m2 sổ đỏ, có 3 phòng ngủ, 1 phòng khách, 1 phòng bếp, 2 vệ sinh và sân phơi.\r\n- Nhà thiết kế móng chịu lực 5 tầng, móng riêng, tường riêng, cột riêng - nhà thiết kế có bể nước ngầm và téc nước.\r\n\r\nNhà xây như hình ảnh đính kèm.\r\n\r\n* Nội thất điện nước đầy đủ chỉ về ở.\r\n1. Cầu thang gỗ Lim.\r\n2. Dây điện Trần Phú, ống nhựa Tiền Phong.\r\n3. Cửa Chính có 2 lớp cửa hiện đại và an toàn, Cửa nhôm kính Việt Pháp và cửa inox an toàn.\r\n4. Cửa thông phòng gỗ Chò, tủ bếp gỗ tự nhiên, trần thạch cao. Trang trí đèn led.\r\n5. Sơn cao cấp Jotun, bồn nước Sơn Hà. Máy bơm nước.\r\n6. Thiết bị vệ sinh Inax, trần thạch cao.\r\n7. Đá ốp cầu thang hoa cương tự nhiên.\r\n8. Đá ốp lát sàn cao cấp.\r\n- Ngân hàng hỗ trợ cho vay 60 - 70%.', '2021-04-13 01:36:08', 1, '2-468402837483500.jpg', 33, 'Phố Lê Trọng Tấn, Phường Yên Nghĩa, Hà Đông, Hà Nội', 0),
(15, 'Nhà 3 tầng mới xây 1,05 tỷ, cạnh siêu thị Nhật Bản Aeon Mall Hà Đông, bao tên sổ đỏ', '- Nhà xây 3 tầng, diện tích đất 33m2, có 3 phòng ngủ, 1 phòng khách, 1 phòng bếp, 2 vệ sinh và sân phơi.\r\n- Nhà thiết kế móng chịu lực 5 tầng, móng riêng, tường riêng, cột riêng - nhà thiết kế có bể nước ngầm và téc nước dự trữ.\r\n- Sổ đỏ chính chủ, bao sang tên sổ đỏ.\r\n- Nhà xây như hình ảnh đính kèm.\r\n\r\n- Giá bán: 1 tỷ 050 triệu.', '2021-04-13 01:37:18', 1, '3-468473264863700.jpg', 90, 'Phố Lê Trọng Tấn, Phường Yên Nghĩa, Hà Đông, Hà Nội', 0),
(16, 'Bán nhà 3 tầng mới xây 1 tỷ 100 tr bao tên sổ đỏ cách đê Yên Nghĩa 50m - Nằm trong đê', '- Nhà xây 3 tầng, diện tích đất 33m2, có 3 phòng ngủ, 1 phòng khách, 1 phòng bếp, 2 vệ sinh và sân phơi.\r\n- Nhà thiết kế móng chịu lực 5 tầng, móng riêng, tường riêng, cột riêng - nhà thiết kế có bể nước ngầm và téc nước dự trữ.\r\n\r\n* Nội thất điện nước đầy đủ chỉ về ở.\r\n1. Cầu thang gỗ Lim.\r\n2. Thiết bị vệ sinh Inax, trần thạch cao.\r\n3. Cửa Chính có 2 lớp cửa hiện đại và an toàn, Cửa nhôm kính Việt Pháp và cửa inox an toàn phía ngoài.\r\n4. Cửa thông phòng gỗ Chò, tủ bếp gỗ tự nhiên, trần thạch cao.\r\n5. Sơn cao cấp Jotun, bồn nước Sơn Hà. Máy bơm nước.\r\n6. Dây điện Trần Phú, ống nhựa Tiền Phong.\r\n7. Đá ốp cầu thang hoa cương tự nhiên.\r\n\r\n- Sổ đỏ chính chủ, bao sang tên sổ đỏ.\r\n- Nhà xây như hình ảnh đính kèm.', '2021-04-13 01:39:39', 1, '4-468614210745900.jpg', 120, 'Văn Tiến Dũng, Hòa Xuân, Đà Nẵng', 0),
(17, 'Bán nhà 3 tầng mới xây 1 tỷ 100 tr bao tên sổ đỏ cách đê Yên Nghĩa 50m - Nằm trong đê', '- Nhà xây 3 tầng, diện tích đất 33m2, có 3 phòng ngủ, 1 phòng khách, 1 phòng bếp, 2 vệ sinh và sân phơi.\r\n- Nhà thiết kế móng chịu lực 5 tầng, móng riêng, tường riêng, cột riêng - nhà thiết kế có bể nước ngầm và téc nước dự trữ.\r\n\r\n* Nội thất điện nước đầy đủ chỉ về ở.\r\n1. Cầu thang gỗ Lim.\r\n2. Thiết bị vệ sinh Inax, trần thạch cao.\r\n3. Cửa Chính có 2 lớp cửa hiện đại và an toàn, Cửa nhôm kính Việt Pháp và cửa inox an toàn phía ngoài.\r\n4. Cửa thông phòng gỗ Chò, tủ bếp gỗ tự nhiên, trần thạch cao.\r\n5. Sơn cao cấp Jotun, bồn nước Sơn Hà. Máy bơm nước.\r\n6. Dây điện Trần Phú, ống nhựa Tiền Phong.\r\n7. Đá ốp cầu thang hoa cương tự nhiên.\r\n\r\n- Sổ đỏ chính chủ, bao sang tên sổ đỏ.\r\n- Nhà xây như hình ảnh đính kèm.', '2021-04-13 01:40:32', 1, '1-468666517805800.jpg', 200, 'hòa khánh, ĐN', 0),
(18, 'CHO THUÊ MẶT BẰNG CỬA HÀNG TẠI ĐỨC GIANG, LONG BIÊN', 'Cho thuê shophouse mặt tiền đường Đức Giang Long Biên.\r\nVị trí cực đẹp với vỉa hè rộng để 2 xe ô tô thoải mái, có thêm chỗ để xe máy phía sau.\r\nKhu dân cư sầm uất, xe đi lại đông. Kế bên là chung cư 25 tầng đang hoàn thiện và 1 tòa chung cư đang chuẩn bị khởi công.\r\nMặt tiền 5 mét rộng, dài phù hợp với nhiều ngành nghề kinh doanh.', '2021-04-13 01:41:24', 2, '2-468719177044200.jpg', 80, 'Đinh Gia Trinh, Đà Nẵng', 0),
(19, 'Chính chủ cho thuê Shophouse 5 tầng tại Long Biên, mặt tiền đẹp, kinh doanh sầm uất.', 'Tôi cần cho thuê căn shophouse 5 tầng tại trung tâm hành chính mới Long Biên, xung quanh cư dân đã hiện hữu sẵn, kinh doanh sầm uất.\r\n- Diện tích sử dụng: 280m2.\r\n- Mặt tiền: 5m.\r\n- Hoàn thiện: Hoàn thiện cơ bản (nếu khách có nhu cầu hoặc thuê thô).', '2021-04-13 01:43:13', 2, '3-468769719270900.jpg', 150, 'Dự án Bình Minh Garden, Đường Đức Giang, Phường Đức Giang, Long Biên, Hà Nội', 0),
(20, 'Chính chủ cho thuê mặt bằng kinh doanh ngay phố Đức Giang, Long Biên', 'Cho thuê mặt bằng làm văn phòng hoặc nail, mi, spa... (không ở lại qua đêm). Diện tích 20m2, giá 3 triệu/tháng tại số 16 Đức Giang - Long Biên, khu vực đông dân cư, kinh doanh sầm uất.', '2021-04-13 01:43:07', 2, '2-468822209273900.jpg', 70, 'Số 16, Đường Đức Giang, Phường Đức Giang, Long Biên, Hà Nội', 0),
(21, 'Cho thuê mặt bằng kinh doanh, shophouse 5 tầng trung tâm Long Biên, dân cư đông đúc', 'Chính chủ cần cho thuê căn shophouse 5 tầng view trực diện công viên 6.610m2 đẹp nhất dự án Bình Minh Garden - Đức Giang - Long Biên.\r\n- Phù hợp với các loại hình kinh doanh: Văn phòng, quán cafe, trung tâm tiếng anh, shop thời trang,...\r\n- Diện tích đất: 76m2.\r\n- Diện tích sử dụng: 280m2.\r\n- Hoàn thiện: Có thể thuê thô hoặc thuê hoàn thiện cơ bản.', '2021-04-13 01:43:57', 2, '5-468872252587700.jpg', 94, 'Dự án Bình Minh Garden, Đường Đức Giang, Phường Đức Giang, Long Biên, Hà Nội', 0),
(22, 'CHO THUÊ MẶT BẰNG CỬA HÀNG TẠI ĐỨC GIANG, LONG BIÊN', 'Cho thuê shophouse mặt tiền đường Đức Giang Long Biên.\r\nVị trí cực đẹp với vỉa hè rộng để 2 xe ô tô thoải mái, có thêm chỗ để xe máy phía sau.\r\nKhu dân cư sầm uất, xe đi lại đông. Kế bên là chung cư 25 tầng đang hoàn thiện và 1 tòa chung cư đang chuẩn bị khởi công.\r\nMặt tiền 5 mét rộng, dài phù hợp với nhiều ngành nghề kinh doanh.\r\nChính chủ cho thuê lâu dài, miễn trung gian.', '2021-04-13 01:44:46', 2, '4-468920961789400.jpg', 70, 'Dự án Bình Minh Garden, Đường Đức Giang, Phường Đức Giang, Long Biên, Hà Nội', 0),
(23, 'Cần mua kho xưởng DT đất từ 2000m2, cao từ 8m, ko đất nông nghiệp, thời hạn ít nhất 30 năm', 'Cần mua kho xưởng DT đất từ 2000m2, cao từ 8m, không đất nông nghiệp, thời hạn ít nhất 30 năm.\r\n\r\nGần khu dân cư, xe tải 10T vào được và có thể đỗ được từ 5 xe con trở lên.\r\n\r\nƯu tiên các khu vực sau:\r\n1. Bắc Từ Liêm trừ KCN Nam Thăng Long đi về phía Bắc và phía Tây.\r\n2. Hoài Đức các khu An Khánh, La Phù, Vân Canh.\r\n3. Nam Từ Liêm.\r\n4. Long Biên trừ ven sông.\r\n5. Thanh Trì theo xung quanh QL1.', '2021-04-13 01:45:43', 20, '2-468977591336200.jpg', 200, 'Thanh Trì, Nam Từ Liêm, Long Biên, Hoài Đức, Bắc Từ Liêm - Hà Nội', 0),
(24, 'Cần mua nhà xưởng khu vực Gia Lâm - Hà Nội', 'Cần mua 30.000m2 nhà xưởng khu vực Gia Lâm.\r\nAi có bán hoặc thông tin xin liên hệ: Tuấn Anh 0989995918.', '2021-04-13 01:46:39', 20, '1-469034225391600.jpg', 230, 'Gia Lâm - Hà Nội', 0),
(25, 'Cần mua kho xưởng DT đất từ 2000m2, cao từ 8m, ko đất nông nghiệp, thời hạn ít nhất 30 năm', 'Cần mua kho xưởng DT đất từ 2000m2, cao từ 8m, không đất nông nghiệp, thời hạn ít nhất 30 năm.\r\n\r\nGần khu dân cư, xe tải 10T vào được và có thể đỗ được từ 5 xe con trở lên.\r\n\r\nƯu tiên các khu vực sau:\r\n1. Bắc Từ Liêm trừ KCN Nam Thăng Long đi về phía Bắc và phía Tây.\r\n2. Hoài Đức các khu An Khánh, La Phù, Vân Canh.\r\n3. Nam Từ Liêm.\r\n4. Long Biên trừ ven sông.\r\n5. Thanh Trì theo xung quanh QL1.\r\n', '2021-04-13 01:49:45', 20, '3-469219582717800.jpg', 220, 'Thanh Trì, Nam Từ Liêm, Long Biên, Hoài Đức, Bắc Từ Liêm - Hà Nội', 0),
(26, 'Tìm mặt bằng cửa hàng cà phê/kem', 'Tìm mặt bằng 1 tầng kinh doanh cửa hàng cà phê/kem, diện tích ~40m2, giá từ 15 triệu đổ xuống.', '2021-04-13 01:48:16', 19, '3-469130544930200.jpg', 150, 'Dự án Bình Minh Garden, Đường Đức Giang, Phường Đức Giang, Long Biên, Hà Nội', 0),
(27, 'Bán nhà 3 tầng mới xây 1 tỷ 100 tr bao tên sổ đỏ cách đê Yên Nghĩa 50m - Nằm trong đê', 'Khu đô thị Century City tọa lạc ngay cửa ngõ sân bay Quốc tế Long Thành. Sở hữu mặt tiền đắc địa đường ĐT 769 & Cầu Mên, xã Bình Sơn, huyện Long Thành, tỉnh Đồng Nai. Tập đoàn Kim Oanh bùng nổ chương trình bán hàng với nhiều chính sách ƯU ĐÃI lớn nhất dành cho quý khách hàng từ trước tới nay. Như:\r\n- Mua với giá F0 từ chủ đầu tư.\r\n- Ngân hàng hỗ trợ vay lên tới 70%.\r\n- Tặng ngay 1-2 cây vàng SJC/1 sản phẩm.\r\n- Chủ đầu tư hỗ trợ 6 tháng lãi suất đầu khi vay ngân hàng.\r\n- Chiết khấu lên tới 14% khi mua hàng.', '2021-04-13 01:48:46', 19, '4-469160781206300.jpg', 200, 'hòa khánh', 0),
(28, 'Bán nhà 3 tầng mới xây 1 tỷ 100 tr bao tên sổ đỏ cách đê Yên Nghĩa 50m - Nằm trong đê', 'Khu đô thị Century City tọa lạc ngay cửa ngõ sân bay Quốc tế Long Thành. Sở hữu mặt tiền đắc địa đường ĐT 769 & Cầu Mên, xã Bình Sơn, huyện Long Thành, tỉnh Đồng Nai. Tập đoàn Kim Oanh bùng nổ chương trình bán hàng với nhiều chính sách ƯU ĐÃI lớn nhất dành cho quý khách hàng từ trước tới nay. Như:\r\n- Mua với giá F0 từ chủ đầu tư.\r\n- Ngân hàng hỗ trợ vay lên tới 70%.\r\n- Tặng ngay 1-2 cây vàng SJC/1 sản phẩm.\r\n- Chủ đầu tư hỗ trợ 6 tháng lãi suất đầu khi vay ngân hàng.\r\n- Chiết khấu lên tới 14% khi mua hàng.', '2021-04-13 01:49:02', 19, '1-469176697772800.jpg', 230, 'Dự án Bình Minh Garden, Đường Đức Giang, Phường Đức Giang, Long Biên, Hà Nội', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_27_184804_create_categories_table', 1),
(4, '2017_07_27_184922_create_lands_table', 1),
(5, '2017_07_27_184938_create_vnecontact_table', 1),
(6, '2017_07_27_205208_update_lands_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER'),
(3, 'ROLE_EDITOR');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `fullname`, `password`, `role_id`, `enabled`) VALUES
(1, 'admin', 'Nguyễn Văn C', '$2a$10$zKFfwiSSgNOfiBPXIUSXn.IAEl/JGqGVS/fQU/96/Z1JErio26jYy', 1, 1),
(2, 'mod', 'VinaEnter Edu', '$2a$10$zKFfwiSSgNOfiBPXIUSXn.IAEl/JGqGVS/fQU/96/Z1JErio26jYy', 2, 1),
(10, 'yenv', 'tưởng võ 1', '$2a$10$zKFfwiSSgNOfiBPXIUSXn.IAEl/JGqGVS/fQU/96/Z1JErio26jYy', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vnecontact`
--

CREATE TABLE `vnecontact` (
  `ct_id` int(10) UNSIGNED NOT NULL,
  `ct_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ct_content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vnecontact`
--

INSERT INTO `vnecontact` (`ct_id`, `ct_fullname`, `ct_email`, `ct_subject`, `ct_content`) VALUES
(1, 'Nguyễn Thị Hạnh', 'hanh@gmail.com', 'Phòng A1', 'Để bảo vệ giàn khoan, Trung Quốc đã điều thêm 17 tàu các loại so với hôm trước,\n		        sẵn sàng đâm va vào tàu Việt Nam.'),
(2, 'Phan Quốc Bảo', 'quocbao@gmail.com', 'Phòng A2', 'World Cup 2014 chưa đi hết lượt đầu vòng bảng nhưng các trọng tài đẳng cấp FIFA đã có tới bốn trận bị chỉ trích dữ dội.'),
(5, 'Bảo', 'bao@gmail.com', 'Nhà cho thuê', 'Test nhà cho thuê');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vnecontact`
--
ALTER TABLE `vnecontact`
  ADD PRIMARY KEY (`ct_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `lands`
--
ALTER TABLE `lands`
  MODIFY `lid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vnecontact`
--
ALTER TABLE `vnecontact`
  MODIFY `ct_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
