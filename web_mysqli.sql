-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 01, 2022 lúc 02:57 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(2, 'admincp', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_baiviet`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(12, 'Làm việc trong ngành thương mại điện tử: được và mất gì?', '<p>Nhiều người gắn b&oacute; với thương mại điện tử suốt thập kỷ bất chấp sự thay đổi kh&ocirc;ng ngừng, đ&ograve;i hỏi th&iacute;ch nghi nhanh v&igrave; những gi&aacute; trị ng&agrave;nh n&agrave;y mang lại.</p>\r\n\r\n<p>Thương mại điện tử đ&ograve;i h&ograve;i nh&acirc;n sự ng&agrave;nh n&agrave;y ngo&agrave;i khả năng chuy&ecirc;n m&ocirc;n, &oacute;c s&aacute;ng tạo c&ograve;n cần sự ki&ecirc;n tr&igrave; v&agrave; th&iacute;ch ứng nhanh với thời cuộc. Kh&aacute;c với những ng&agrave;nh nghề c&oacute; t&iacute;nh ổn định với tỷ lệ nh&acirc;n sự th&acirc;m ni&ecirc;n cao, thương mại điện tử từng khiến nhiều người e d&egrave; v&igrave; tỷ lệ đ&agrave;o thải v&agrave; kh&ocirc;ng ngừng biến chuyển.</p>\r\n\r\n<p>Tuy nhi&ecirc;n vẫn kh&ocirc;ng thiếu những người bất chấp những yếu tố tr&ecirc;n, chọn vững đam m&ecirc; v&agrave; gắn b&oacute; với thương mại điện tử tới 10 năm. Kh&ocirc;ng chỉ l&acirc;u bền m&agrave; họ c&ograve;n nỗ lực phấn đấu, cống hiến để ng&agrave;nh n&agrave;y ng&agrave;y một ph&aacute;t triển.</p>\r\n', '<p><strong>10 năm thanh xu&acirc;n d&agrave;nh trọn cho kh&aacute;ch h&agrave;ng trực tuyến</strong></p>\r\n\r\n<p>Một trong những &quot;thủy thủ&quot; d&agrave;nh cả thập kỷ thanh xu&acirc;n c&ugrave;ng Lazada Việt Nam &quot;vượt s&oacute;ng&quot; l&agrave; chị Phạm Thị Quỳnh Trang - Gi&aacute;m đốc Thương mại Lazada Việt Nam (COO). Gia nhập Lazada từ thời kh&aacute;i niệm thương mại điện tử c&ograve;n kh&aacute; lạ lẫm với người d&ugrave;ng Việt, chị kh&ocirc;ng chỉ chứng kiến qu&aacute; tr&igrave;nh ph&aacute;t triển của Lazada m&agrave; c&ograve;n l&agrave; một nh&acirc;n tố quan trọng, c&ugrave;ng trải qua thăng trầm v&agrave; đ&oacute;ng g&oacute;p v&agrave;o việc x&acirc;y dựng nền tảng 10 năm tuổi n&agrave;y.</p>\r\n\r\n<p>Trong những ng&agrave;y đầu đồng h&agrave;nh c&ugrave;ng Lazada từ năm 2012, chị Trang cho biết lượng đơn h&agrave;ng mỗi ng&agrave;y chỉ ở khoảng v&agrave;i chục. Mỗi khi c&oacute; đơn, chị phải tự v&agrave;o si&ecirc;u thị mua h&agrave;ng rồi giao tới cho kh&aacute;ch.</p>\r\n\r\n<p>&quot;Ở thời điểm đ&oacute;, d&ugrave; c&ograve;n nhiều hạn chế, kh&oacute; khăn nhưng ai cũng vững tin v&agrave;o tương lai ph&aacute;t triển của ng&agrave;nh n&agrave;y. Nhờ nỗ lực ng&agrave;y ấy m&agrave; giờ đ&acirc;y ch&uacute;ng t&ocirc;i c&oacute; thể tận hưởng &lsquo;quả ngọt&rsquo; khi t&ecirc;n tuổi Lazada ng&agrave;y một lớn mạnh&quot;,<em>&nbsp;</em>chị Trang kể lại.</p>\r\n\r\n<p><img alt=\"Phạm Thị Quỳnh Trang đã đồng hành cùng Lazada từ những ngày đầu tiên, khi nền tảng này mới có mặt trên thị trường. Ảnh: Lazada Việt Nam\" src=\"https://i1-giadinh.vnecdn.net/2022/03/30/Picfdsfdture1-4549-1648627744.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=mzK1SxR0_sAEvnNo-ktTLw\" /></p>\r\n\r\n<p>Phạm Thị Quỳnh Trang đ&atilde; đồng h&agrave;nh c&ugrave;ng Lazada từ những ng&agrave;y đầu ti&ecirc;n, khi nền tảng n&agrave;y mới c&oacute; mặt tr&ecirc;n thị trường. Ảnh<em>: Lazada Việt Nam</em></p>\r\n\r\n<p>Trước khi l&agrave; Gi&aacute;m đốc Thương mại, Quỳnh Trang từng l&agrave;m ở bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng, nơi được mọi người v&iacute; l&agrave; nghề &quot;l&agrave;m d&acirc;u trăm họ&quot; khi phải lu&ocirc;n trong trạng th&aacute;i niềm nở, nhiệt t&igrave;nh tiếp nhận phản hồi, thắc mắc từ kh&aacute;ch h&agrave;ng. Nhưng cũng nhờ vị tr&iacute; n&agrave;y, chị trau dồi th&ecirc;m nhiều kinh nghiệm v&agrave; kiến thức qu&yacute; gi&aacute;.</p>\r\n\r\n<p>Chị Trang cho rằng ti&ecirc;u ch&iacute; đầu ti&ecirc;n để l&agrave;m việc v&agrave; gắn b&oacute; l&acirc;u d&agrave;i với thương mại điện tử l&agrave; kh&ocirc;ng ngại học hỏi. &quot;Mỗi kh&aacute;ch h&agrave;ng, đơn h&agrave;ng, đồng nghiệp, đối t&aacute;c đều c&oacute; thể gi&uacute;p bạn c&oacute; th&ecirc;m nhiều kiến thức, kỹ năng hữu &iacute;ch trong ng&agrave;nh n&agrave;y. Nếu kh&ocirc;ng c&oacute; những ng&agrave;y l&agrave;m c&ocirc;ng việc chăm s&oacute;c kh&aacute;ch h&agrave;ng, chắc chắn kh&ocirc;ng m&igrave;nh của h&ocirc;m nay&quot;, Quỳnh Trang khẳng định.</p>\r\n', 7, 1, '1650851871_t1.png'),
(13, 'Thương mại điện tử giúp hàng Việt khẳng định vị thế trên sân nhà', '<p>Xu thế chuyển đổi số c&ugrave;ng loạt c&ocirc;ng cụ tr&ecirc;n thương mại điện tử gi&uacute;p thương hiệu nội địa chinh phục người ti&ecirc;u d&ugrave;ng Việt tại thị trường nội địa.</p>\r\n\r\n<p>Trước đ&acirc;y, nhiều người ti&ecirc;u d&ugrave;ng Việt c&oacute; xu hướng chuộng sản phẩm thương hiệu quốc tế, cho rằng &quot;h&agrave;ng ngoại&quot; chất lượng hơn nội địa. Tuy nhi&ecirc;n, những năm gần đ&acirc;y, c&aacute;c thương hiệu nội địa dần lấy lại vị thế, nhận sự tin d&ugrave;ng của người Việt.</p>\r\n', '<p><strong>Động lực gi&uacute;p thương hiệu nội địa chinh phục người d&ugrave;ng</strong></p>\r\n\r\n<p>Chất lượng sản phẩm, nguồn gốc xuất xứ, hoạt động quảng b&aacute; chạm thị hiếu người ti&ecirc;u d&ugrave;ng v&agrave; sự nhanh ch&oacute;ng, tiện lợi trong trải nghiệm mua sắm... l&agrave; những yếu tố g&oacute;p phần đưa h&agrave;ng Việt trở lại với người d&ugrave;ng nội địa.</p>\r\n\r\n<p>Những năm gần đ&acirc;y, thương hiệu Việt đ&atilde; dần giải quyết được những b&agrave;i to&aacute;n về chất lượng sản phẩm v&agrave; đa dạng h&oacute;a mẫu m&atilde; sản phẩm nhờ chịu thay đổi, học hỏi ở doanh nghiệp nước bạn. Th&ecirc;m v&agrave;o đ&oacute;, việc ứng dụng c&ocirc;ng nghệ hiện đại v&agrave; c&ocirc;ng cụ hỗ trợ tr&ecirc;n s&agrave;n thương mại điện tử cũng gi&uacute;p doanh nghiệp phần n&agrave;o th&aacute;o gỡ những trở ngại về mặt ph&acirc;n phối, vận h&agrave;nh, từ đ&oacute; đến gần hơn với người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>L&agrave; một trong những thương hiệu đồ nội thất ti&ecirc;n phong khai th&aacute;c d&ograve;ng sản phẩm lắp r&aacute;p, Beyours g&acirc;y ấn tượng với c&aacute;c thiết kế trẻ trung, bắt kịp xu hướng, sử dụng những nguy&ecirc;n liệu đặc trưng như gỗ th&ocirc;ng, cao su hay sợi lục b&igrave;nh. Kinh doanh giữa thời đại c&ocirc;ng nghệ 4.0, thương hiệu sớm chủ động chuyển đổi số để bắt kịp thời đại.</p>\r\n\r\n<p>&quot;Beyours chủ trương tiếp cận số đ&ocirc;ng th&ocirc;ng qua m&ocirc;i trường trực tuyến, tạo ra sản phẩm ph&ugrave; hợp cho từng k&ecirc;nh. K&ecirc;nh online tập trung b&aacute;n sản phẩm nhỏ gọn, dễ lắp r&aacute;p v&agrave; vận chuyển. Từ k&ecirc;nh n&agrave;y, Beyours dẫn dắt người d&ugrave;ng đến cửa h&agrave;ng offline trải nghiệm sản phẩm c&oacute; k&iacute;ch thước lớn v&agrave; phức tạp hơn&quot;, anh Vũ Trung Anh Rim, nh&agrave; s&aacute;ng lập ki&ecirc;m Gi&aacute;m đốc thương hiệu Beyours.</p>\r\n\r\n<p><img alt=\"Beyours hút cảm tình người dùng nhờ nguyên liệu đặc trưng như gỗ thông, cao su hay sợi lục bình. Ảnh: Nhân vật cung cấp\" src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/29/Picdffture1-6739-1648537858.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Z_hMcPtTxbqNPspINrMH6w\" /></p>\r\n\r\n<p>Beyours h&uacute;t cảm t&igrave;nh người d&ugrave;ng nhờ nguy&ecirc;n liệu đặc trưng như gỗ th&ocirc;ng, cao su hay sợi lục b&igrave;nh. Ảnh:&nbsp;<em>Nh&acirc;n vật cung cấp</em></p>\r\n\r\n<p>Tương tự Beyours, sớm nhận thấy cơ hội rộng mở từ k&ecirc;nh b&aacute;n h&agrave;ng online, đội ngũ th&agrave;nh lập thương hiệu thời trang nam Coolmate quyết kh&ocirc;ng bỏ qua c&aacute;nh cửa thương mại điện tử. Chị Nguyễn Ho&agrave;i Xu&acirc;n Lan, Gi&aacute;m đốc Tiếp thị Coolmate cho biết từ l&acirc;u đ&atilde; nhận thấy tiềm năng lớn của việc tận dụng thương mại điện tử v&agrave;o tiếp cận v&agrave; tạo dựng mối li&ecirc;n kết giữa thương hiệu với kh&aacute;ch h&agrave;ng tiềm năng.</p>\r\n', 7, 1, '1650852313_t2.png'),
(14, 'Thiết bị công nghệ giảm đến 50% kèm miễn phí vận chuyển', '<p>Chuột wireless Logitech, tai nghe Rapo, gi&aacute; đỡ m&aacute;y t&iacute;nh&hellip; đồng giảm s&acirc;u, gi&aacute; từ 215.000 đồng tr&ecirc;n Tiki k&egrave;m freeship, giao nhanh 2 giờ, giảm ph&iacute; vận chuyển đến 40% duy nhất ng&agrave;y 27/3.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Giá đỡ máy tính hứa hẹn là trợ thủ giúp giảm đau cổ và vai gáy của dân công sở trong suốt thời gian làm việc tại nhà. Sản phẩm làm bằng hợp kim nhôm, thiết kế giúp tản nhiệt hiệu quả, hợp với các dòng Macbook, laptop, iPad trên thị trường. Giá bố trí đệm cao su tại các vị trí tiếp xúc giúp chống trơn trượt, tránh làm trầy xước thiết bị. Ngoài ra, sản phẩm có thể gấp gọn, tiện lợi mang theo khi công tác. Hiện sản phẩm đang có giá ưu đãi chỉ từ 419.000 đồng trên Tiki.\" src=\"https://i1-sohoa.vnecdn.net/2022/03/27/1-8471-1648350387.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=gcpUucM_2CWTN8jTzZntkQ\" /></p>\r\n\r\n<p><a href=\"https://ti.ki/VnE-Mega2703-GiaDo\">Gi&aacute; đỡ m&aacute;y t&iacute;nh</a>&nbsp;hứa hẹn l&agrave; trợ thủ gi&uacute;p giảm đau cổ v&agrave; vai g&aacute;y của d&acirc;n c&ocirc;ng sở trong suốt thời gian l&agrave;m việc trước m&aacute;y t&iacute;nh. Sản phẩm l&agrave;m bằng hợp kim nh&ocirc;m, thiết kế gi&uacute;p tản nhiệt hiệu quả, hợp với c&aacute;c d&ograve;ng Macbook, laptop, iPad tr&ecirc;n thị trường. Gi&aacute; bố tr&iacute; đệm cao su tại c&aacute;c vị tr&iacute; tiếp x&uacute;c gi&uacute;p chống trơn trượt, tr&aacute;nh l&agrave;m trầy xước thiết bị. Ngo&agrave;i ra, sản phẩm c&oacute; thể gấp gọn, tiện lợi mang theo khi c&ocirc;ng t&aacute;c. Hiện sản phẩm đang c&oacute; gi&aacute; ưu đ&atilde;i chỉ từ 419.000 đồng tr&ecirc;n Tiki.</p>\r\n', '<p><img alt=\"Quạt hút gió tản nhiệt Cool Cold hiện bán trên Tiki chỉ với 129.000 đồng. Thay vì chuyển hướng nhiệt độ sang các bề mặt xung quanh, sản phẩm kết nối trực tiếp vào cổng thoát khí để hút khí, giúp máy tản nhiệt nhanh, hiệu quả hơn.\" src=\"https://i1-sohoa.vnecdn.net/2022/03/27/2-3745-1648350387.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=V7B2kuZfuHx9Jl4vfnFBlA\" /></p>\r\n\r\n<p><a href=\"https://ti.ki/VnE-Mega2703-QuatTanNhiet\">Quạt h&uacute;t gi&oacute; tản nhiệt Cool Cold</a>&nbsp;hiện b&aacute;n tr&ecirc;n Tiki chỉ với 129.000 đồng. Thay v&igrave; chuyển hướng nhiệt độ sang c&aacute;c bề mặt xung quanh, sản phẩm kết nối trực tiếp v&agrave;o cổng tho&aacute;t kh&iacute; để h&uacute;t kh&iacute;, gi&uacute;p m&aacute;y tản nhiệt nhanh, hiệu quả hơn.</p>\r\n\r\n<p><img alt=\"Chuột không dây Logitech M221 đang giảm giá còn khoảng 238.000 đồng trên Tiki, duy nhất 27/3. Sản phẩm ghi điểm với người dùng nhờ công nghệ chuột quang, khoảng cách kết nối lên tới 10 m. Pin chuột đủ hoạt động liên tục 18 tháng, tương thích với nhiều hệ điều hành như Windows, MacOS...\" src=\"https://i1-sohoa.vnecdn.net/2022/03/27/3-1765-1648350387.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mbmx99wZX_To_v5OtQMJQA\" /></p>\r\n\r\n<p><a href=\"https://ti.ki/VnE-Mega2703-Chuot\">Chuột kh&ocirc;ng d&acirc;y Logitech M221</a>&nbsp;đang giảm gi&aacute; c&ograve;n khoảng 238.000 đồng tr&ecirc;n Tiki, duy nhất 27/3. Sản phẩm ghi điểm với người d&ugrave;ng nhờ c&ocirc;ng nghệ chuột quang, khoảng c&aacute;ch kết nối l&ecirc;n tới 10 m. Pin chuột đủ hoạt động li&ecirc;n tục 18 th&aacute;ng, tương th&iacute;ch với nhiều hệ điều h&agrave;nh như Windows, MacOS...</p>\r\n', 8, 1, '1650853643_t3.jpg'),
(15, 'Thương mại điện tử giúp định giá thương hiệu', '<p>Hội thảo &quot;Thương mại điện tử mở đường cho doanh nghiệp trong b&igrave;nh thường mới&quot; diễn ra từ 14h ng&agrave;y 22/3, trực tuyến tr&ecirc;n VnExpress với sự tham gia của đại diện Amazon, Tiki, cơ quan quản l&yacute; v&agrave; h&agrave;ng trăm doanh nghiệp sản xuất, kinh doanh tr&ecirc;n k&ecirc;nh online. Đ&acirc;y l&agrave; cơ hội kết nối doanh nghiệp với c&aacute;c s&agrave;n cũng như c&aacute;c chuy&ecirc;n gia trong ng&agrave;nh, đẩy mạnh thương mại điện tử trong bối cảnh b&igrave;nh thường mới.</p>\r\n', '<p><img alt=\"Screen-Shot-2022-03-22-at-15-3-9208-9302\" src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/22/Screen-Shot-2022-03-22-at-15-3-9208-9302-1647941300.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IdF-TRqJN2MA-HsM9SiOYw\" /></p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia tham gia thảo luận tại chương tr&igrave;nh.</p>\r\n\r\n<p>Theo đ&aacute;nh gi&aacute; của &ocirc;ng Nguyễn Đức Trung - Ph&oacute; Cục trưởng Cục Ph&aacute;t triển doanh nghiệp, Bộ Kế hoạch v&agrave; Đầu tư, Covid-19 ảnh hưởng nghi&ecirc;m trọng đến nền kinh tế, song thương mại điện tử Việt Nam vẫn tăng trưởng v&agrave; hấp dẫn nhất khu vực Đ&ocirc;ng Nam &Aacute;. Năm 2020 tốc độ tăng trưởng của thương mại điện tử Việt Nam l&agrave; 18%, trở th&agrave;nh nước duy nhất trong khu vực c&oacute; mức tăng trưởng hai con số. Để tận dụng cơ hội n&agrave;y Bộ Kế hoạch v&agrave; Đầu tư đ&atilde; tham mưu với c&aacute;c bộ ban ng&agrave;nh ban h&agrave;nh c&aacute;c giải ph&aacute;p trong đ&oacute; c&oacute; hỗ trợ chuyển đổi số.</p>\r\n\r\n<p>Đ&aacute;nh gi&aacute; của đại diện USAID, Việt Nam dự kiến l&agrave; thị trường ph&aacute;t triển thương mại điện tử nhanh nhất năm 2026 với doanh số 56 tỷ USD.</p>\r\n', 8, 1, '1650853864_t4.png'),
(16, 'Covid-19 mở lối đi mới cho thương mại điện tử', '<p>Dịch bệnh đem đến &quot;l&agrave;n s&oacute;ng mới&quot; cho thương mại điện tử Việt Nam với mức tăng trưởng hai con số, kỳ vọng l&agrave; &quot;&aacute; qu&acirc;n&quot; của Đ&ocirc;ng Nam &Aacute; trong tương lai.</p>\r\n\r\n<p>Th&aacute;ng 6 năm ngo&aacute;i, hơn 3 tấn vải thiều Bắc Giang được s&agrave;n Vỏ S&ograve; xuất khẩu v&agrave; th&ocirc;ng quan thuận lợi tại Đức. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n Việt Nam c&oacute; n&ocirc;ng sản xuất khẩu sang thị trường ch&acirc;u &Acirc;u theo m&ocirc; h&igrave;nh thương mại điện tử xuy&ecirc;n bi&ecirc;n giới qua s&agrave;n của doanh nghiệp trong nước. Trước đ&oacute;, Sở C&ocirc;ng Thương tỉnh Đắk Lắk cũng chủ động hợp t&aacute;c với Amazon để đưa c&aacute;c n&ocirc;ng sản của tỉnh l&ecirc;n s&agrave;n trực tuyến lớn nhất thế giới.</p>\r\n', '<p>Dịch bệnh k&eacute;o d&agrave;i khiến nhiều tỉnh bị thu hẹp thị trường n&ocirc;ng sản nhưng mặt kh&aacute;c tạo ra k&ecirc;nh ti&ecirc;u thụ mới cho n&ocirc;ng d&acirc;n. Cam Cao Phong (H&ograve;a B&igrave;nh), Na Chi Lăng (Lạng Sơn)... đều được mở lối để l&ecirc;n c&aacute;c s&agrave;n thương mại điện tử trong nước.</p>\r\n\r\n<p><img alt=\"thị trường thương mại điện tử Việt Nam đang đứng thứ tư tại Đông Nam Á.\" src=\"https://i1-kinhdoanh.vnecdn.net/2022/03/15/234754551-557361988784141-3147-2211-6972-1647342762.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=0DSljtTXWSBF8xHG6Lcvlg\" /></p>\r\n\r\n<p>Thi trường thương mại điện tử Việt Nam đang đứng thứ tư tại Đ&ocirc;ng Nam &Aacute;. Ảnh:&nbsp;<em>Viễn Th&ocirc;ng</em></p>\r\n\r\n<p>Theo số liệu của Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng, 6 th&aacute;ng đầu năm 2021 c&oacute; gần 8.000 hộ n&ocirc;ng d&acirc;n, 15.600 n&ocirc;ng sản l&ecirc;n c&aacute;c s&agrave;n thương mại điện tử, tăng lần lượt 191% v&agrave; 268% so với c&ugrave;ng kỳ năm ngo&aacute;i. C&ugrave;ng với sự ph&aacute;t triển của thương mại điện tử, việc đưa c&aacute;c sản phẩm n&ocirc;ng nghiệp l&ecirc;n s&agrave;n đ&atilde; giải b&agrave;i to&aacute;n t&igrave;m kiếm k&ecirc;nh ph&acirc;n phối bền vững cho c&aacute;c c&aacute;c địa phương, đặc biệt trong bối cảnh dịch bệnh. Chuyển đổi số trong lĩnh vực sản xuất v&agrave; kinh doanh n&ocirc;ng sản cũng sẽ trở th&agrave;nh xu hướng được Ch&iacute;nh phủ đẩy mạnh trong thời gian tới.</p>\r\n\r\n<p>Thống k&ecirc; của Bộ C&ocirc;ng Thương cho hay doanh thu thương mại điện tử b&aacute;n lẻ của Việt Nam năm 2021 ước đạt 13,7 tỷ USD, tăng 16% so với năm 2020 v&agrave; chiếm 6,5% tổng doanh thu b&aacute;n lẻ v&agrave; dịch vụ ti&ecirc;u d&ugrave;ng của cả nước. Với quy m&ocirc; n&agrave;y, thị trường thương mại điện tử Việt Nam đang đứng thứ tư tại Đ&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<p><em>Google, Temasek&nbsp;</em>v&agrave;&nbsp;<em>Bain &amp; Co</em>&nbsp;dự b&aacute;o rằng, đến năm 2025, thương mại điện tử của Việt Nam sẽ giữ ng&ocirc;i vị &quot;&aacute; vương&quot; tại Đ&ocirc;ng Nam &Aacute;, với quy m&ocirc; thị trường đạt 39 tỷ USD.</p>\r\n', 7, 1, '1650854079_t5.jpg'),
(17, 'TOP 3 điện thoại Samsung dưới 4 triệu đáng mua cho học sinh, sinh viên', '<h2>Hiện tại, những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;gi&aacute; rẻ ph&ugrave; hợp với học sinh, sinh vi&ecirc;n cũng đ&atilde; ng&agrave;y c&agrave;ng đa dạng với đầy đủ c&aacute;c chức năng, đặc biệt l&agrave; những m&aacute;y đến từ thương hiệu được nhiều bạn y&ecirc;u th&iacute;ch như&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\">Samsung</a>&nbsp;chẳng hạn. C&ugrave;ng&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc\" target=\"_blank\">24h C&ocirc;ng nghệ</a>&nbsp;tham khảo ngay TOP 3&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/dien-thoai-samsung-duoi-4-trieu-dang-mua-1426795\" target=\"_blank\">điện thoại Samsung dưới 4 triệu cho học sinh sinh vi&ecirc;n</a>&nbsp;trong b&agrave;i viết n&agrave;y nha.</h2>\r\n', '<h3><strong>Mua điện thoại cho học sinh, sinh vi&ecirc;n - Lưu &yacute; điều g&igrave; để c&oacute; lựa chọn tốt?</strong></h3>\r\n\r\n<p>M&igrave;nh nghĩ rằng điện thoại cho học sinh sinh vi&ecirc;n hiện nay ng&agrave;y c&agrave;ng đa dạng về mẫu m&atilde;, kể cả ph&acirc;n kh&uacute;c gi&aacute; rẻ dưới 4 triệu đồng cũng c&oacute; rất nhiều lựa chọn đ&aacute;ng để bạn c&acirc;n nhắc. Với m&igrave;nh, một chiếc điện thoại ưng &yacute; sẽ phụ thuộc kh&aacute; nhiều v&agrave;o phần thiết kế.</p>\r\n\r\n<p><img alt=\"Thiết kế là một trong những tiêu chí quan trọng khi lựa chọn điện thoại cho học sinh sinh viên. \" src=\"https://cdn.tgdd.vn/Files/2022/04/18/1426795/dien-thoai-samsung-duoi-3-trieu-cho-hoc-sinh-sinh-vien-01_1280x720-800-resize.jpg\" /></p>\r\n\r\n<p>Thiết kế l&agrave; một trong những ti&ecirc;u ch&iacute; quan trọng khi lựa chọn điện thoại cho học sinh sinh vi&ecirc;n.&nbsp;</p>\r\n\r\n<p>C&oacute; hai điều m&igrave;nh muốn lưu &yacute; về thiết kế của một chiếc điện thoại đ&oacute; ch&iacute;nh l&agrave; sự bắt mắt, hợp thời trang v&agrave; trải nghiệm cầm nắm. Học sinh sinh vi&ecirc;n sẽ t&igrave;m kiếm những thiết kế c&oacute; phần trẻ trung, hiện đại một ch&uacute;t để c&oacute; thể tự tin hơn khi cầm tr&ecirc;n tay chiếc điện thoại của m&igrave;nh.&nbsp;</p>\r\n\r\n<p>Cảm gi&aacute;c chắc chắn, nhẹ nh&agrave;ng khi cầm tr&ecirc;n tay để c&oacute; thể sử dụng trong một thời gian d&agrave;i cũng sẽ kh&aacute; quan trọng, khi c&aacute;c bạn học sinh sinh vi&ecirc;n d&agrave;nh phần lớn thời gian của m&igrave;nh để đi học v&agrave; đi l&agrave;m b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n\r\n<p><img alt=\"Hãy chọn mua chiếc điện thoại có thời lượng pin đủ dài để học tập và làm việc được thoải mái. \" src=\"https://cdn.tgdd.vn/Files/2022/04/18/1426795/dien-thoai-samsung-duoi-3-trieu-cho-hoc-sinh-sinh-vien-02_1280x720-800-resize.jpg\" /></p>\r\n\r\n<p>H&atilde;y chọn mua chiếc điện thoại c&oacute; thời lượng pin đủ d&agrave;i để học tập v&agrave; l&agrave;m việc được thoải m&aacute;i.&nbsp;</p>\r\n\r\n<p>Một yếu tố nữa m&agrave; m&igrave;nh kh&aacute; quan t&acirc;m khi chọn mua điện thoại ch&iacute;nh l&agrave; thời lượng pin. Một chiếc điện thoại gi&aacute; tốt sẽ ph&ugrave; hợp với c&aacute;c bạn học sinh sinh vi&ecirc;n hơn khi c&oacute; vi&ecirc;n pin đủ lớn, thời lượng sử dụng đủ cho cả ng&agrave;y d&agrave;i học tập v&agrave; l&agrave;m việc.</p>\r\n\r\n<p>C&oacute; kh&aacute; nhiều việc m&agrave; ch&uacute;ng ta sẽ phải l&agrave;m tr&ecirc;n một chiếc điện thoại như check mail, tin nhắn, học online,... một c&aacute;ch li&ecirc;n tục, v&igrave; vậy vi&ecirc;n pin tr&acirc;u một ch&uacute;t sẽ kh&aacute; l&agrave; quan trọng đ&oacute; nha.</p>\r\n', 10, 1, '1650854288_t6.jpg'),
(18, 'Samsung ra mắt loạt phụ kiện đẹp mắt nhằm hưởng ứng ngày Trái Đất', '<h2>Gần đ&acirc;y,&nbsp;<a href=\"https://www.thegioididong.com/samsung\" target=\"_blank\">Samsung</a>&nbsp;rất quan t&acirc;m đến việc ph&aacute;t triển c&aacute;c chương tr&igrave;nh mang t&iacute;nh bền vững. C&ocirc;ng ty đ&atilde; triển khai chương tr&igrave;nh gi&uacute;p kh&aacute;ch h&agrave;ng tự sửa chữa thiết bị v&agrave; cung cấp c&aacute;c bộ phận t&aacute;i chế để cắt giảm chi ph&iacute; sửa chữa cho kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>V&agrave; để hưởng ứng Ng&agrave;y Tr&aacute;i đất, theo&nbsp;<a href=\"https://news.samsung.com/us/samsung-partners-sean-wotherspoon-plant-based-designer-exclusive-sustainably-galaxy-s21-watch4-series-accessories-earth-day/\" target=\"_blank\">th&ocirc;ng c&aacute;o b&aacute;o ch&iacute;</a>&nbsp;mới nhất, c&ocirc;ng ty đ&atilde; hợp t&aacute;c với nh&agrave; thiết kế Sean Wotherspoon nhằm đưa ra một loạt c&aacute;c ốp lưng v&agrave; d&acirc;y đeo đồng hồ đẹp mắt được l&agrave;m từ vật liệu t&aacute;i chế.</p>\r\n', '<p><img alt=\"Samsung ra mắt loạt phụ kiện đẹp mắt nhằm hưởng ứng ngày Trái Đất\" src=\"https://cdn.tgdd.vn/Files/2022/04/22/1427810/h2-eco_1280x720-800-resize.png\" /></p>\r\n\r\n<p>Ốp lưng v&agrave; d&acirc;y đồng hồ được l&agrave;m từ vật liệu t&aacute;i chế v&agrave; kh&ocirc;ng g&acirc;y hại cho m&ocirc;i trường</p>\r\n\r\n<p>Theo đ&oacute;, Samsung đ&atilde; ra mắt c&aacute;c ốp lưng l&agrave;m từ nhựa TPU th&acirc;n thiện với m&ocirc;i trường cho&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\">điện thoại Galaxy</a>&nbsp;v&agrave; d&acirc;y đeo&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-samsung\" target=\"_blank\">Galaxy Watch</a>&nbsp;với chất liệu đặc biệt, được cam kết kh&ocirc;ng nhựa h&oacute;a, kh&ocirc;ng độc hại, cũng như c&oacute; thể ho&agrave;n to&agrave;n được t&aacute;i chế.</p>\r\n\r\n<p>Đ&acirc;y được xem l&agrave; một &yacute; tưởng kh&aacute; hay bởi đa số c&aacute;c phụ kiện được l&agrave;m bằng nhựa n&agrave;y sẽ kh&ocirc;ng thể tự ph&acirc;n hủy v&agrave; thậm ch&iacute; l&agrave; t&aacute;i chế.</p>\r\n\r\n<p>Được biết bộ sưu tập phụ kiện Samsung Galaxy x Sean Wotherspoon sẽ đi k&egrave;m với c&aacute;c mặt đồng hồ tương ứng c&oacute; thể được tải xuống miễn ph&iacute; từ Google Play.</p>\r\n\r\n<p>C&aacute;c m&agrave;u sắc c&oacute; sẵn dự kiến bao gồm hồng, v&agrave;ng, xanh l&aacute; c&acirc;y, được trang tr&iacute; bằng c&aacute;c biểu tượng h&ograve;a b&igrave;nh, hoa, mặt trời cũng như l&agrave; h&agrave;nh tinh tr&aacute;i đất. Ngo&agrave;i ra, tr&ecirc;n mỗi phụ kiện cũng sẽ đ&iacute;nh k&egrave;m khẩu hiệu &quot;Love the Earth&quot; (tạm dịch: H&atilde;y y&ecirc;u Tr&aacute;i Đất).&nbsp;</p>\r\n\r\n<p><img alt=\"Samsung ra mắt loạt phụ kiện đẹp mắt nhằm hưởng ứng ngày Trái Đất\" src=\"https://cdn.tgdd.vn/Files/2022/04/22/1427810/samsung-sustainable_1280x994-800-resize.png\" /></p>\r\n\r\n<p>D&acirc;y đồng hồ Ng&agrave;y Tr&aacute;i Đất cho Galaxy Watch 4</p>\r\n\r\n<p>Bộ sưu tập vỏ v&agrave; d&acirc;y đeo đồng hồ bền vững của Samsung c&oacute; thể sẽ được b&aacute;n từ 10 giờ ng&agrave;y 23/04 tr&ecirc;n trang web ch&iacute;nh thức v&agrave; c&oacute; gi&aacute; 49.99 USD (khoảng 1.1 triệu đồng). Một số phi&ecirc;n bản giới hạn cũng sẽ được b&aacute;n từ 13 giờ ng&agrave;y mai qua ứng dụng NTWRK.</p>\r\n\r\n<p>Bạn nghĩ sao về c&aacute;c phụ kiện mới ra mắt từ Samsung?</p>\r\n\r\n<p>Ngo&agrave;i ra, bạn cũng c&oacute; thể tham khảo c&aacute;c sản phẩm từ Samsung đang được b&aacute;n ch&iacute;nh h&atilde;ng, gi&aacute; tốt đi k&egrave;m nhiều ưu đ&atilde;i tại&nbsp;<a href=\"https://www.thegioididong.com/\" target=\"_blank\">Thế Giới Di Động</a>&nbsp;nh&eacute;. Click ngay n&uacute;t cam b&ecirc;n dưới để biết th&ecirc;m chi tiết!</p>\r\n', 10, 1, '1650854563_t7.png'),
(19, 'iPhone SE 2022 ra mắt với giá 429 USD', '<p>iPhone SE mới giữ nguy&ecirc;n thiết kế từ thế hệ cũ, n&acirc;ng cấp chip A15 Bionic, kết nối 5G v&agrave; gi&aacute; cao hơn 30 USD.</p>\r\n\r\n<p>iPhone SE 2022, ra mắt trong sự kiện trực tuyến của Apple rạng s&aacute;ng nay, kế thừa thiết kế từ năm 2017, từng được sử dụng tr&ecirc;n iPhone 8 v&agrave; SE 2020.&nbsp;</p>\r\n', '<p>Sản phẩm c&oacute; m&agrave;n h&igrave;nh 4,7 inch độ ph&acirc;n giải Retina HD, khung nh&ocirc;m, với viền m&agrave;n h&igrave;nh d&agrave;y chứa cảm biến v&acirc;n tay Touch ID c&ugrave;ng khả năng chống bụi v&agrave; nước chuẩn IP67. Apple cho biết đ&atilde; n&acirc;ng cấp vật liệu ở cả hai mặt m&aacute;y bằng k&iacute;nh cường lực đời mới, loại đang được sử dụng tr&ecirc;n&nbsp;<a href=\"https://vnexpress.net/chu-de/iphone-13-3176\">iPhone 13</a>.</p>\r\n\r\n<p>Về cấu h&igrave;nh, m&aacute;y được trang bị chip A15 Bionic tương tự c&aacute;c sản phẩm cao cấp của Apple, đi k&egrave;m kết nối&nbsp;<a href=\"https://vnexpress.net/chu-de/5g-1613\">5G</a>. H&atilde;ng cho biết d&ograve;ng chip mới mang đến khả năng xử l&yacute; nhanh gấp 1,8 lần, trong khi khả năng xử l&yacute; đồ họa nhanh gấp 2,2 lần so với iPhone 8.</p>\r\n\r\n<p>Nhờ cấu h&igrave;nh mạnh, iPhone SE 2022 t&iacute;ch hợp c&ocirc;ng nghệ SmartHDR v&agrave; Deep Fusion, gi&uacute;p chụp ảnh đ&ecirc;m v&agrave; ảnh ngược s&aacute;ng tốt hơn. M&aacute;y vẫn sử dụng camera đơn độ ph&acirc;n giải 12 megapixel, nhưng c&oacute; thể chụp ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng.</p>\r\n\r\n<p><img alt=\"iPhone SE 2022 có ngoại hình tương tự iPhone 8 và iPhone SE 2020.\" src=\"https://i1-sohoa.vnecdn.net/2022/03/09/lcimg-beede483-355b-48bb-b07a-7337-4931-1646765770.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=3CGyrkUST4-P5im1x17lVA\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>iPhone SE 2022 c&oacute; ngoại h&igrave;nh tương tự iPhone 8 v&agrave; iPhone SE 2020.</p>\r\n\r\n<p>Tr&aacute;i với c&aacute;c dự đo&aacute;n về mức gi&aacute; rẻ hơn, iPhone SE 2022 c&oacute; gi&aacute; khởi điểm 429 USD cho bản 64 GB, cao hơn 30 USD so với thế hệ trước. Phi&ecirc;n bản bộ nhớ 128 GB v&agrave; 256 GB c&oacute; gi&aacute; lần lượt l&agrave; 479 USD v&agrave; 579 USD. Người d&ugrave;ng c&oacute; ba lựa chọn m&agrave;u sắc l&agrave; đen, đỏ v&agrave; trắng. M&aacute;y dự kiến được b&aacute;n ra từ ng&agrave;y 18/3.</p>\r\n\r\n<p>Ở mức gi&aacute; n&agrave;y, iPhone SE 2022 thấp hơn 70 USD so với iPhone 11 v&agrave; 170 USD so với iPhone 12 mini c&ugrave;ng dung lượng bộ nhớ. Đ&acirc;y cũng l&agrave; mẫu điện thoại rẻ nhất của Apple c&oacute; kết nối 5G.</p>\r\n\r\n<p>Tại sự kiện, b&ecirc;n cạnh iPhone SE mới, Apple cũng tung ra th&ecirc;m&nbsp;<a href=\"https://vnexpress.net/iphone-13-mau-xanh-moi-lo-dien-4435973.html\">phi&ecirc;n bản m&agrave;u xanh l&aacute;</a>&nbsp;cho iPhone 13.</p>\r\n', 10, 1, '1650855237_t8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(50) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_data` varchar(100) NOT NULL,
  `cart_payment` varchar(50) NOT NULL,
  `cart_shopping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_data`, `cart_payment`, `cart_shopping`) VALUES
(91, 31, '6486', 0, '2022-04-27 21:16:34', 'Chuyển khoản', 16),
(92, 31, '7506', 0, '2022-04-28 14:14:17', 'Tiền mặt', 16),
(93, 31, '8380', 0, '2022-04-28 14:14:21', 'Tiền mặt', 16),
(94, 31, '4190', 0, '2022-04-28 15:31:35', 'Tiền mặt', 16),
(95, 31, '2864', 0, '2022-04-28 15:34:54', 'Tiền mặt', 16),
(96, 31, '5644', 0, '2022-04-28 15:37:43', 'Tiền mặt', 16),
(97, 31, '5179', 0, '2022-04-28 15:46:44', 'Tiền mặt', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(50) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(95, '6486', 74, 1),
(96, '7506', 56, 1),
(97, '4190', 55, 1),
(98, '4190', 75, 1),
(99, '2864', 68, 1),
(100, '5644', 56, 1),
(101, '5179', 75, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `diachi` varchar(30) NOT NULL,
  `dienthoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `matkhau`, `diachi`, `dienthoai`) VALUES
(31, 'Lê Minh Đức', 'leminhduc23062002@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Thành phố Long Xuyên, Tỉnh An ', '0938601233'),
(33, 'long thien', 'longthien@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'con tum', '0366961879'),
(34, 'long thien3', 'thienminh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'kg', '0363489192');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Điện thoại', 1),
(2, 'PC ', 2),
(3, 'phụ kiện', 3),
(7, 'Điện thoại', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_danhmucbaiviet` int(11) NOT NULL,
  `tendanhmucbaiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_danhmucbaiviet`, `tendanhmucbaiviet`, `thutu`) VALUES
(7, 'Tin tức thương mại điện tử 24h qua', 1),
(8, 'Tin tức hot trong ngày ', 2),
(10, 'Tin tức về sản phẩm', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `thongtinlienhe`) VALUES
(1, '<p><strong>1.Facebook: </strong><em>admincp</em></p>\r\n\r\n<p><strong>2.Email:</strong><em> admincp2022@gmail.com</em></p>\r\n\r\n<p><strong>3.Sđt:</strong> <em>0749063945</em></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `masp` varchar(50) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(38, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', '001', '30990000', 10, '1650701356_1.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Dynamic AMOLED 2X6.8&quot;Quad HD+ (2K+)</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 108 MP &amp; Phụ 12 MP, 10 M', '<h3>Sở hữu một diện mạo đầy nổi bật</h3>\r\n\r\n<p>Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những d&ograve;ng Note trước đ&acirc;y của h&atilde;ng đem đến cho bạn c&oacute; cảm gi&aacute;c vừa mới lạ vừa ho&agrave;i niệm. Trọng lượng của m&aacute;y khoảng 228 g cho cảm gi&aacute;c cầm nắm đầm tay, khi cầm m&aacute;y trần th&igrave; hơi c&oacute; cảm gi&aacute;c dễ trượt.</p>\r\n', 1, 1),
(39, ' Realme C35 64GB ', '002', '3990000', 10, '1650701494_4.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>IPS LCD6.6&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 50 MP &amp; Phụ 2 MP, 0.3 MP</p>\r\n	</li>\r\n	<', '<h3>Thiết kế thời thượng, m&agrave;u sắc thời trang</h3>\r\n\r\n<p>Realme C35 sở hữu 2 m&agrave;u sắc trẻ trung: Đen tuyền v&agrave; xanh huyền ảo với một thiết kế v&ocirc; c&ugrave;ng độc đ&aacute;o, khung bezel bo g&oacute;c l&agrave;m bằng vật liệu 2D ph&aacute;t s&aacute;ng linh động, mang đến hiệu ứng m&agrave;u ấn tượng khi thay đổi g&oacute;c nh&igrave;n.</p>\r\n', 1, 1),
(40, 'iPhone 11 64GB ', '003', '14990000', 10, '1650701690_2.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>IPS LCD6.1&quot;Liquid Retina</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n</ul>\r\n', '<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n\r\n<h3>Apple đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ 3 si&ecirc;u phẩm iPhone 11, trong đ&oacute; phi&ecirc;n bản&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-11\" target=\"_blank\">iPhone 11 64GB</a>&nbsp;c&oacute; mức gi&aacute; rẻ nhất nhưng vẫn được n&acirc;ng cấp mạnh mẽ như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xr-128gb\" target=\"_blank\">iPhone Xr</a>&nbsp;ra mắt&nbsp;trước đ&oacute;.</h3>\r\n', 1, 1),
(47, ' iPhone 13 Pro Max 128GB ', '009', '33990000', 10, '1650702449_9.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP</p>\r\n	</li>\r\n</ul>\r\n', '<h3>Thi&ecirc;́t k&ecirc;́ đẳng cấp h&agrave;ng đầu</h3>\r\n\r\n<p>iPhone mới kế thừa thiết kế đặc trưng từ&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-12-pro-max\" target=\"_blank\">iPhone 12 Pro Max</a>&nbsp;khi sở hữu khung viền vu&ocirc;ng vức, mặt lưng k&iacute;nh c&ugrave;ng m&agrave;n h&igrave;nh tai thỏ tr&agrave;n viền nằm ở ph&iacute;a trước.</p>\r\n', 1, 1),
(53, 'Samsung Galaxy A03 3GB ', '004', '2990000', 10, '1650704394_6.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>PLS LCD6.5&quot;HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 48 MP &amp; Phụ 2 MP</p>\r\n	</li>\r\n</ul>\r\n', '<h3>Thiết kế v&acirc;n đan ch&eacute;o</h3>\r\n\r\n<p>Galaxy A03 c&oacute; thiết kế nhựa nguy&ecirc;n khối, mặt lưng nh&aacute;m, c&oacute; c&aacute;c đường v&acirc;n đan ch&eacute;o nhau một c&aacute;ch nhẹ nh&agrave;ng mang lại độ nh&aacute;m nhất định khi cầm nắm, cảm gi&aacute;c đầm tay v&agrave; c&oacute; thể hạn chế b&aacute;m mồ h&ocirc;i, dấu v&acirc;n tay.</p>\r\n', 1, 1),
(54, 'Samsung Galaxy A52s 5G 128GB', '005', '8990000', 10, '1650704483_11.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Super AMOLED6.5&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 5 MP, 5 MP</p>\r\n', '<h3>Thiết kế đặc trưng Galaxy A</h3>\r\n\r\n<p>Samsung Galaxy A52s tiếp tục sử dụng ng&ocirc;n ngữ thiết kế nguy&ecirc;n khối theo phong c&aacute;ch trẻ trung với c&aacute;c tuỳ chọn m&agrave;u sắc như: Đen, trắng, t&iacute;m v&agrave; xanh mint.</p>\r\n', 1, 1),
(55, 'Vivo Y15s', '006', '3490000', 33, '1650704549_12.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>IPS LCD6.51&quot;HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11 (Go Edition)</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>Ch&iacute;nh 13 MP &amp; Phụ 2 MP</p>\r\n	</li>\r\n<', '<h3>Ngoại h&igrave;nh sang trọng, ấn tượng</h3>\r\n\r\n<p>Vivo Y15s sở hữu nhiều điểm tương đồng với những &quot;người anh em&quot;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/vivo-y15\" target=\"_blank\">Vivo Y15</a>&nbsp;của m&igrave;nh khi to&agrave;n bộ th&acirc;n m&aacute;y l&agrave;m bằng Polymer cao cấp, thiết kế cong cạnh 3D v&agrave; ki&ecirc;̉u dáng mỏng nhẹ chỉ 8.28 mm đem lại cảm gi&aacute;c cầm m&aacute;y trong tay kh&aacute; thoải m&aacute;i.</p>\r\n\r\n<p>Mặt lưng ho&agrave;n thiện với họa tiết kẻ sọc mờ với hai t&ugrave;y chọn m&agrave;u sắc Xanh Biển S&acirc;u v&agrave; Trắng c&oacute; khả năng chuyển s&aacute;ng xanh v&ocirc; c&ugrave;ng đẹp mắt.</p>\r\n', 1, 1),
(56, 'Samsung Galaxy Z Fold3 5G 256GB', '007', '33990000', 15, '1650704610_13.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Dynamic AMOLED 2XCh&iacute;nh 7.6&quot; &amp; Phụ 6.2&quot;Full HD+</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Android 11</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP', '<h3>Thiết kế n&acirc;ng tầm smartphone m&agrave;n h&igrave;nh gập</h3>\r\n\r\n<p>C&oacute; thể thấy mẫu smartphone Galaxy Z Fold3 lần n&agrave;y vẫn giữ nguy&ecirc;n ngoại h&igrave;nh c&ugrave;ng cơ chế m&agrave;n h&igrave;nh gập mở dạng quyển s&aacute;ch như của tiền nhiệm, hồ biến chiếc smartphone th&agrave;nh một chiếc m&aacute;y t&iacute;nh bảng mini một c&aacute;ch dễ d&agrave;ng v&agrave; ngược lại.</p>\r\n', 1, 1),
(57, ' iPhone 13 Pro Max 128GB Xanh lá ', '008', '33490000', 8, '1650704686_14.jpg', '<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>OLED6.7&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>iOS 15</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>3 camera 12 MP</p>\r\n	</li>\r\n</ul>\r\n', '<h3>Cấu h&igrave;nh khủng c&acirc;n mọi t&aacute;c vụ</h3>\r\n\r\n<p>Sở hữu con chip Apple A15 Bionic c&oacute; si&ecirc;u sức mạnh, RAM 6 GB v&agrave; bộ nhớ trong 128 GB c&oacute; thể xử l&yacute; cực kỳ nhanh, mượt m&agrave; d&ugrave; c&aacute;c t&aacute;c vụ m&agrave; bạn thực hiện c&oacute; nặng đến mấy cho bạn một cảm gi&aacute;c sử dụng cực kỳ thoải m&aacute;i. Đi k&egrave;m với đ&oacute; phi&ecirc;n bản hệ điều h&agrave;nh iOS 15 cũng sẽ được sử dụng tr&ecirc;n chiếc iPhone 13 Pro Max n&agrave;y, gi&uacute;p bạn c&oacute; được nhiều t&iacute;nh năng hiện đại.</p>\r\n', 1, 1),
(58, 'Pin sạc dự phòng 10000mAh Type C PD QC3.0 Hydrus PB299S', '001', '300000', 5, '1650704838_p1.jpg', '<ul>\r\n	<li>\r\n	<p>Hiệu suất sạc:</p>\r\n\r\n	<p>60%</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng pin:</p>\r\n\r\n	<p>10.000 mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời gian sạc đầy pin:</p>\r\n\r\n	<p>10 - 11 giờ (d&ugrave;ng Adapter 1A)5 - 6 giờ (d&ugrave;ng Adapter 2', '<p>Kh&ocirc;ng chỉ trang bị cổng sạc v&agrave;o ra th&ocirc;ng thường, Pin sạc dự ph&ograve;ng 10.000 mAh Type C PD QC3.0 20W Hydrus PB299S c&ograve;n được t&iacute;ch hợp c&ocirc;ng nghệ sạc nhanh&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cong-nghe-power-delivery-la-gi-1212331\" target=\"_blank\">Power Delivery</a>&nbsp;được ưa chuộng phổ biến hiện nay. Power Delivery gi&uacute;p điều chỉnh lượng điện &aacute;p đầu v&agrave;o tương ứng với cấu h&igrave;nh sạc của từng thiết bị, đảm bảo t&iacute;nh&nbsp;<strong>an to&agrave;n&nbsp;v&agrave;&nbsp;tuổi thọ sử dụng l&acirc;u d&agrave;i</strong>.&nbsp;</p>\r\n', 1, 3),
(59, 'Pin sạc dự phòng Polymer 10.000 mAh Hydrus PA CK01 ', '002', '150000', 100, '1650704948_q1.jpg', '<ul>\r\n	<li>\r\n	<p>Hiệu suất sạc:</p>\r\n\r\n	<p>64%</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng pin:</p>\r\n\r\n	<p>10.000 mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời gian sạc đầy pin:</p>\r\n\r\n	<p>10 - 11 giờ (d&ugrave;ng Adapter 1A)5 - 6 giờ (d&ugrave;ng Adapter 2', '<p>Hydrus PA CK01 c&oacute; khả năng tương th&iacute;ch cao với nhiều d&ograve;ng thiết bị di động, dung lượng pin v&agrave; hiệu suất sạc cao cho ph&eacute;p sản phẩm&nbsp;sạc được nhiều lần cho 1 thiết bị hoặc sạc đa dạng thiết bị, nhờ đ&oacute; bạn c&oacute; thể y&ecirc;n t&acirc;m trải nghiệm c&aacute;c thiết bị th&ocirc;ng minh, nhất l&agrave; khi đi đến những v&ugrave;ng kh&ocirc;ng c&oacute; nguồn điện.&nbsp;</p>\r\n', 1, 3),
(60, 'Tai nghe chụp tai Gaming MozardX G1 Đen ', '003', '500000', 39, '1650705037_q2.png', '<ul>\r\n	<li>\r\n	<p>Jack cắm:</p>\r\n\r\n	<p>USB</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ &acirc;m thanh:</p>\r\n\r\n	<p>&Acirc;m thanh v&ograve;m 7.1</p>\r\n	</li>\r\n	<li>\r\n	<p>Tương th&iacute;ch:</p>\r\n\r\n	<p>Windows</p>\r\n	</li>\r\n</ul>\r\n', '<p>Sở hữu gam m&agrave;u đen cam bắt mắt, kiểu chụp tai c&ugrave;ng hệ thống treo nhẹ cho cảm gi&aacute;c dễ chịu suốt thời gian sử dụng. Tai nghe c&ograve;n trang bị lớp đệm da &ecirc;m &aacute;i gi&uacute;p tr&aacute;nh t&igrave;nh trạng đau đầu khi đeo l&acirc;u, bạn cũng c&oacute; thể điều chỉnh phần gọng d&agrave;i ngắn t&ugrave;y theo form đầu.</p>\r\n', 1, 3),
(61, 'Bàn Phím Cơ Có Dây Gaming Corsair K63 Compact Mechanical Đen ', '004', '2000000', 10, '1650705133_q3.jpg', '<ul>\r\n	<li>\r\n	<p>Tương th&iacute;ch:</p>\r\n\r\n	<p>Windows</p>\r\n	</li>\r\n	<li>\r\n	<p>C&aacute;ch kết nối:</p>\r\n\r\n	<p>D&acirc;y cắm USB</p>\r\n	</li>\r\n	<li>\r\n	<p>Đ&egrave;n LED:</p>\r\n\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', '<p>Bề mặt của&nbsp;<a href=\"https://www.thegioididong.com/ban-phim\" target=\"_blank\">b&agrave;n ph&iacute;m</a>&nbsp;c&oacute; m&agrave;u đen cuốn h&uacute;t c&ugrave;ng với đ&egrave;n nền đỏ cho thiết kế c&aacute; t&iacute;nh, thời thượng, t&ocirc; điểm cho ph&ograve;ng game của bạn th&ecirc;m s&agrave;nh điệu. Trọng lượng chỉ 500 gram, k&iacute;ch cỡ gọn g&agrave;ng cất giữ hoặc mang theo khi đi du lịch đơn giản.</p>\r\n', 1, 3),
(62, 'Chuột Gaming HyperX Pulsefire Core RGB Đen', '005', '600000', 30, '1650705224_q4.jpg', '<ul>\r\n	<li>\r\n	<p>Tương th&iacute;ch</p>\r\n\r\n	<p>Windows</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ ph&acirc;n giải mặc định</p>\r\n\r\n	<p>6200 DPI</p>\r\n	</li>\r\n	<li>\r\n	<p>C&aacute;ch kết nối</p>\r\n\r\n	<p>D&acirc;y cắm USB</p>\r\n	</li>\r\n</ul>\r\n', '<p>Gờ chuột được l&agrave;m nh&aacute;m tạo độ b&aacute;m tay,&nbsp;<strong>cầm chắc chắn, chống trượt</strong>, đế trượt tiết diện lớn di&nbsp;<a href=\"https://www.thegioididong.com/chuot-may-tinh-gaming\" target=\"_blank\">chuột gaming</a>&nbsp;&ecirc;m &aacute;i. C&oacute;<strong>&nbsp;m&agrave;u đen sang trọng, h&igrave;nh dạng c&acirc;n xứng</strong>&nbsp;ph&ugrave; hợp cho người thuận tay tr&aacute;i v&agrave; phải.</p>\r\n', 1, 3),
(63, 'Asus LCD 27 inch FullHD/1ms/75Hz (VY279HE) ', '001', '6000000', 5, '1650705379_a1.jpg', '<ul>\r\n	<li>\r\n	<p>Loại m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Phẳng</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>27 inchFull HD (1920 x 1080)75 Hz</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>ASUS Eye CareLED B', '<h3><a href=\"https://www.thegioididong.com/man-hinh-may-tinh/asus-lcd-27-inch-fullhd\" target=\"_blank\">Asus LCD 27 inch (VY279HE)</a>&nbsp;l&agrave; phi&ecirc;n bản&nbsp;<a href=\"https://www.thegioididong.com/man-hinh-may-tinh\" target=\"_blank\">m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh&nbsp;</a>sở hữu c&aacute;c th&ocirc;ng số c&ocirc;ng nghệ m&agrave;n h&igrave;nh l&yacute; tưởng mang đến những khung ảnh sắc n&eacute;t đắm ch&igrave;m bạn v&agrave;o thế giới ảo sinh động như thật.</h3>\r\n', 1, 2),
(64, 'ASUS LCD TUF Gaming 27 inch Full HD (VG27VQ)', '002', '7990000', 33, '1650705469_q5.jpg', '<ul>\r\n	<li>\r\n	<p>Loại m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Cong</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>27 inchFull HD (1920 x 1080)165 Hz</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>VA with LED backligh', '<h3><a href=\"https://www.thegioididong.com/man-hinh-may-tinh/asus-tuf-gaming-27-full-hd-165hz-vg27vq\" target=\"_blank\">M&agrave;n h&igrave;nh m&aacute;y t&iacute;nh ASUS TUF Gaming VG27VQ</a>&nbsp;sở hữu m&agrave;n h&igrave;nh cong 27 inch được thiết kế ri&ecirc;ng cho c&aacute;c game thủ chuy&ecirc;n nghiệp v&agrave; những người y&ecirc;u th&iacute;ch sự đắm ch&igrave;m trong c&aacute;c thước phim, thiết kế. Đ&acirc;y l&agrave; điểm nổi bật nhất của chiếc m&agrave;n h&igrave;nh VG27VQ.</h3>\r\n', 1, 2),
(67, 'iMac 24 inch 2021 4.5K M1/256GB/8GB/7-core GPU ', '004', '34990000', 10, '1650705694_q7.jpg', '<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ CPU:</p>\r\n\r\n	<p>Apple M1 8-core</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Ổ cứng:</p>\r\n\r\n	<p>256 GB SSD</p>\r\n	</li>\r\n</ul>\r\n', '<h3>M&aacute;y t&iacute;nh để b&agrave;n&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-de-ban/imac-24-inch-45k-retina-m1-mgtf3saa\" target=\"_blank\">iMac 24 inch 2021 4.5K Retina M1 (MGTF3SA/A)</a>&nbsp;của Apple ra mắt đầu qu&yacute; 2 năm 2021 g&acirc;y x&ocirc;n xao bởi diện mạo lột x&aacute;c mới mẻ, c&aacute; t&iacute;nh, đồng thời thừa hưởng sức mạnh từ chip xử l&yacute; M1 v&agrave; m&agrave;n h&igrave;nh 4.5K Retina, đ&aacute;p ứng mọi nhu cầu từ văn ph&ograve;ng đến xử l&yacute; h&igrave;nh ảnh, video chuy&ecirc;n nghiệp.</h3>\r\n', 1, 2),
(68, 'Asus AIO V241EAT i5 1135G7 (BA025W)', '005', '20990000', 20, '1650705763_q8.jpg', '<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ CPU:</p>\r\n\r\n	<p>i51135G72.40 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GBDDR43200 MHz2 khe</p>\r\n	</li>\r\n	<li>\r\n	<p>Ổ cứng:</p>\r\n\r\n	<p>512 GB SSD&nbsp;Chuẩn PCIe/NVMe</p>\r\n	</li>\r\n</ul>\r\n', '<h3>Sự kết hợp ho&agrave;n hảo giữa c&aacute;c linh kiện cấu th&agrave;nh chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-de-ban/asus-aio-v241eat-i5-ba025w\" target=\"_blank\">m&aacute;y t&iacute;nh Asus AIO V241EAT (BA025W)</a>&nbsp;nguy&ecirc;n bộ nhỏ gọn, tiết kiệm diện t&iacute;ch bảo đảm xử l&yacute; tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng hằng ng&agrave;y cho người d&ugrave;ng.&nbsp;</h3>\r\n', 1, 2),
(70, 'Asus S500SC i3 10105/4GB/256GB/Bàn phím & Chuột/Win11 (310105039W) ', '007', '10900000', 10, '1650706025_q11.jpg', '<ul>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ CPU:</p>\r\n\r\n	<p>i3101053.70 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>4 GBDDR42666 MHz2 khe</p>\r\n	</li>\r\n	<li>\r\n	<p>Ổ cứng:</p>\r\n\r\n	<p>256 GB SSD (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1', '<h3><a href=\"https://www.thegioididong.com/may-tinh-de-ban/asus-s500sc-i3-310105039w\" target=\"_blank\">Asus S500SC i3 10105 (310105039W)</a>&nbsp;sẵn s&agrave;ng hỗ trợ bạn trong c&ocirc;ng việc hay giải tr&iacute;, đồng h&agrave;nh c&ugrave;ng bạn ho&agrave;n th&agrave;nh mọi vấn đề nhanh gọn v&agrave; hiệu quả.</h3>\r\n', 1, 2),
(72, 'Tai nghe Bluetooth True Wireless Rezo F15 ', '007', '800000', 100, '1650706222_q13.jpeg', '<ul>\r\n	<li>\r\n	<p>Thời gian tai nghe:</p>\r\n\r\n	<p>D&ugrave;ng 4 giờ - Sạc 1.5 giờ</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời gian hộp sạc:</p>\r\n\r\n	<p>D&ugrave;ng 20 giờ - Sạc 1.5 giờ</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc:</p>\r\n\r\n	<p>Type-C</p>\r\n	</li>\r', '<p>Thiết kế housing tinh xảo, đồng m&agrave;u với hộp sạc trong 2 phi&ecirc;n bản l&agrave;&nbsp;<strong>m&agrave;u hồng ngọt ng&agrave;o</strong>&nbsp;<strong>v&agrave;</strong>&nbsp;<strong>m&agrave;u trắng trang nh&atilde;</strong>, ph&ugrave; hợp với sở th&iacute;ch của cả ph&aacute;i mạnh v&agrave; ph&aacute;i đẹp. Housing được chế t&aacute;c với tay cầm d&agrave;i cho bạn dễ cầm v&agrave; đeo v&agrave;o tai, hạn chế trượt tay, rơi rớt khi thao t&aacute;c.&nbsp;</p>\r\n\r\n<p>Vẻ ngo&agrave;i hộp sạc tinh tế, cạnh h&ocirc;ng được l&agrave;m l&otilde;m v&agrave;o trong ph&aacute; c&aacute;ch v&agrave; đẹp mắt, bản lề đ&oacute;ng mở dễ d&agrave;ng, đảm bảo việc nhấc v&agrave; đặt&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-rezo-khong-day\" target=\"_blank\">tai nghe Rezo</a>&nbsp;ra/v&agrave;o rất đơn giản.&nbsp;</p>\r\n', 1, 3),
(73, 'Tai nghe Bluetooth AirPods 3 Apple MME73', '006', '5490000', 10, '1650706291_q12.jpeg', '<ul>\r\n	<li>\r\n	<p>Pin:</p>\r\n\r\n	<p>D&ugrave;ng 6 giờ - Sạc 2 giờ</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc:</p>\r\n\r\n	<p>LightningSạc kh&ocirc;ng d&acirc;y</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ &acirc;m thanh:</p>\r\n\r\n	<p>Adaptive EQCustom high-excursio', '<p><strong>Airpods 3</strong> c&oacute; thiết kế tương tự như&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3\" target=\"_blank\">AirPods Pro</a>&nbsp;nhưng kh&ocirc;ng c&ograve;n phần&nbsp;eartips,&nbsp;đường viền v&agrave; th&acirc;n ngắn hơn cho &acirc;m thanh truyền tải đến tai tối ưu. Bề mặt&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe-apple-bluetooth\" target=\"_blank\">tai nghe&nbsp;Bluetooth Apple</a>&nbsp;phủ sắc trắng thời thượng,&nbsp;được l&agrave;m từ c&aacute;c vật liệu t&aacute;i chế với độ bền cao, bảo vệ m&ocirc;i trường sống của con người.&nbsp;</p>\r\n\r\n<p>Housing c&oacute; độ b&aacute;m tốt, đeo vừa vặn, hộp sạc c&oacute; k&iacute;ch cỡ nhỏ gọn, đ&oacute;ng mở nhẹ nh&agrave;ng, thiết kế chuy&ecirc;n dụng để đựng housing&nbsp;Airpods 3, đảm bảo an to&agrave;n khi di chuyển, hạn chế thất lạc v&agrave; sạc pin thuận tiện.&nbsp;</p>\r\n', 1, 3),
(74, 'Tai nghe Bluetooth Mozard R559X Đen', '008', '299000', 33, '1650707011_q14.jpeg', '<ul>\r\n	<li>\r\n	<p>Pin:</p>\r\n\r\n	<p>D&ugrave;ng 5.5 giờ - Sạc 2 giờ</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc:</p>\r\n\r\n	<p>Micro USB</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ &acirc;m thanh:</p>\r\n\r\n	<p>C&ocirc;ng nghệ lọc tiếng ồn</p>\r\n	</li>\r\n</ul>\r', '<h3><a href=\"https://www.thegioididong.com/tai-nghe/bluetooth-mozard-r559x-den\" target=\"_blank\">Tai nghe Bluetooth Mozard R559X đen</a>&nbsp;thiết kế nhỏ nhắn, sang trọng với phần m&oacute;c tai đ&agrave;n hồi tốt, thoải m&aacute;i khi đeo</h3>\r\n\r\n<p>Bạn ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng tai nghe khi di chuyển m&agrave; kh&ocirc;ng lo vướng v&iacute;u, bị rớt, tự do thưởng thức kh&ocirc;ng gian &acirc;m nhạc ri&ecirc;ng.</p>\r\n', 1, 3),
(75, 'Tai nghe Bluetooth Mozard K8', '009', '315000', 99, '1650707083_q15.jpeg', '<ul>\r\n	<li>\r\n	<p>Pin:</p>\r\n\r\n	<p>D&ugrave;ng 15 giờ - Sạc 2 giờ</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng sạc:</p>\r\n\r\n	<p>Micro USB</p>\r\n	</li>\r\n	<li>\r\n	<p>Tương th&iacute;ch:</p>\r\n\r\n	<p>AndroidiOS (iPhone)Windows</p>\r\n	</li>\r\n</ul>\r\n', '<h3>Thiết kế đầy c&aacute; t&iacute;nh, 2 phi&ecirc;n bản m&agrave;u xanh - hồng cực kỳ bắt mắt</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tai-nghe\" target=\"_blank\">Tai nghe</a>&nbsp;được l&agrave;m tinh xảo, bộ khung cứng c&aacute;p, c&oacute; hệ thống treo đến chụp tai phủ b&ecirc;n ngo&agrave;i bởi lớp chất liệu mềm mại, đeo v&agrave;o đầu nhẹ nh&agrave;ng, kh&ocirc;ng l&agrave;m mỏi, đau đầu - cổ - tai.</p>\r\n', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shopping`
--

CREATE TABLE `tbl_shopping` (
  `id_shopping` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `dienthoai` varchar(50) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `ghichu` varchar(250) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shopping`
--

INSERT INTO `tbl_shopping` (`id_shopping`, `ten`, `dienthoai`, `diachi`, `ghichu`, `id_dangky`) VALUES
(16, 'Lê Minh Đức', '0865022354', 'Đường lý thái tổ, thành phố long xuyên,tỉnh An Giang', '!!!!!!!!', 31);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_danhmucbaiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shopping`
--
ALTER TABLE `tbl_shopping`
  ADD PRIMARY KEY (`id_shopping`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_danhmucbaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `tbl_shopping`
--
ALTER TABLE `tbl_shopping`
  MODIFY `id_shopping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
