-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 20, 2024 lúc 01:18 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm_php3_gd1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `id` int NOT NULL,
  `Ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`id`, `Ten`, `MoTa`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Loại tin 1', 'Mô tả loại tin 1', 'loai-tin-1', '2024-07-19 18:22:41', '2024-07-19 18:22:41'),
(2, 'Loại tin 2', 'Mô tả loại tin 2', 'loai-tin-2', '2024-07-19 18:22:41', '2024-07-19 18:22:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_17_054531_create_categories_table', 1),
(6, '2024_07_20_003437_tao_table_tin', 1),
(7, '2024_07_20_004011_tao_table_tin', 1),
(8, '2024_07_20_011147_tao_table_the_loai', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTL` bigint UNSIGNED NOT NULL,
  `TenTL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThuTu` int NOT NULL,
  `AnHien` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTL`, `TenTL`, `ThuTu`, `AnHien`, `created_at`, `updated_at`) VALUES
(1, 'Thời Sự', 1, 1, '2024-07-19 18:21:58', '2024-07-19 18:21:58'),
(2, 'Góc Nhìn', 2, 1, '2024-07-19 18:21:58', '2024-07-19 18:21:58'),
(4, 'Thế Giới', 4, 1, NULL, NULL),
(5, 'Thể Thao', 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `idTin` int NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8mb4_unicode_ci,
  `Content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlHinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idLT` int NOT NULL,
  `NoiBat` tinyint NOT NULL DEFAULT '0',
  `AnHien` tinyint NOT NULL DEFAULT '1',
  `Ngay` date NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin`
--

INSERT INTO `tin` (`idTin`, `TieuDe`, `TomTat`, `Content`, `urlHinh`, `idLT`, `NoiBat`, `AnHien`, `Ngay`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Đếm ngược đèn đỏ, bỏ hay dùng?', 'Michael Nguyễn Minh là chuyên gia kinh tế tài chính, tốt nghiệp Học viện Quản lý châu Á, Học viện Ngân hàng Tài chính Singapore; Giám đốc công ty đầu tư hải ngoại Singapore OSI, thành viên Liên đoàn Doanh nghiệp Singapore (Singapore Business Federation).', '<div class=\"box-art-tg width_common mt20\">\r\n<div class=\"list-news-subfolder list-art-bggray list-news-contain\">\r\n<article class=\"item-news item-news-common item-1 off-thumb\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/dem-nguoc-den-do-bo-hay-dung-4772010.html\" title=\"Đếm ngược đèn đỏ, bỏ hay dùng?\">Đếm ngược đèn đỏ, bỏ hay dùng?</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/dem-nguoc-den-do-bo-hay-dung-4772010.html\" title=\"Đếm ngược đèn đỏ, bỏ hay dùng?\">“Đi đê ê ê…”, người đàn ông chạy xe đằng sau tôi vừa bấm còi vừa giục, tiếng “đê” với chữ “ê” kéo dài bực bội trong thời tiết nắng gắt giữa hè của Hà Nội.</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004932\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/dem-nguoc-den-do-bo-hay-dung-4772010.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4772010-1\">227</span>\r\n</a>\r\n</p>\r\n</article>\r\n<article class=\"item-news item-news-common item-2 off-thumb\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/bay-no-the-tin-dung-4722731.html\" title=\"\'Bẫy nợ\' thẻ tín dụng\">\'Bẫy nợ\' thẻ tín dụng</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/bay-no-the-tin-dung-4722731.html\" title=\"\'Bẫy nợ\' thẻ tín dụng\">Cách đây vài chục năm, người Singapore từng cụ thể hóa tiêu chí về hạnh phúc và thành đạt, gói gọn trong \"5C\" mà sau này lan truyền sang cả các nước láng giềng Đông Nam Á: Cash (tiền mặt), Credit card (thẻ tín dụng), Car (xe hơi), Condominium (chung cư cao cấp), Country Club (câu lạc bộ tư nhân).</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004932\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/bay-no-the-tin-dung-4722731.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4722731-1\">165</span>\r\n</a>\r\n</p>\r\n</article>\r\n<article class=\"item-news item-news-common item-3 off-thumb\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/ban-het-tai-san-4604230.html\" title=\"Bán hết tài sản\">Bán hết tài sản</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/ban-het-tai-san-4604230.html\" title=\"Bán hết tài sản\">Tôi vừa tham dự phiên họp Ban đầu tư một tập đoàn lớn chuyên về bất động sản của Singapore. 12 năm trước, họ đầu tư vào một khu đất phía Tây Hà Nội và dự án đến nay vẫn tăng trưởng tốt.</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004932\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/ban-het-tai-san-4604230.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4604230-1\">53</span>\r\n</a>\r\n</p>\r\n</article>\r\n<article class=\"item-news item-news-common item-4 off-thumb\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/xem-tien-nhu-rac-4518782.html\" title=\"Xem tiền như rác\">Xem tiền như rác</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/xem-tien-nhu-rac-4518782.html\" title=\"Xem tiền như rác\">Mẹ tôi, vốn sinh trưởng từ phố Hàng Bạc, Hà Nội, nơi người ta tiếp xúc thường xuyên với vàng bạc, dạy con cách giữ tiền xu và bạc lẻ một cách cẩn trọng từ thuở bé.</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004933\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/xem-tien-nhu-rac-4518782.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4518782-1\">143</span>\r\n</a>\r\n</p>\r\n</article>\r\n<article class=\"item-news item-news-common item-5 off-thumb\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/hieu-qua-cua-metro-4482236.html\" title=\"Hiệu quả của Metro\">Hiệu quả của Metro</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/hieu-qua-cua-metro-4482236.html\" title=\"Hiệu quả của Metro\">Nghi ngại về hiệu quả, thậm chí tính đúng đắn của quyết định xây tuyến đường sắt đô thị đã dấy lên bởi các con số: Metro Hà Nội đạt doanh thu 5 tỷ đồng năm 2021, lỗ gộp 54 tỷ, lỗ lũy kế 160 tỷ.</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004932\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/hieu-qua-cua-metro-4482236.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4482236-1\">109</span>\r\n</a>\r\n</p>\r\n</article>\r\n<article class=\"item-news item-news-common item-6 off-thumb\" style=\"display:none\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/giu-chan-nguoi-tai-4471311.html\" title=\"Giữ chân người tài\">Giữ chân người tài</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/giu-chan-nguoi-tai-4471311.html\" title=\"Giữ chân người tài\">Mỗi năm, trường đào tạo quản lý uy tín hàng đầu thế giới INSEAD đều có Báo cáo đánh giá mức độ cạnh tranh về nhân tài trên toàn cầu (Global talent competitiveness index) của 134 quốc gia.</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004930\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/giu-chan-nguoi-tai-4471311.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4471311-1\">89</span>\r\n</a>\r\n</p>\r\n</article>\r\n<article class=\"item-news item-news-common item-7 off-thumb\" style=\"display:none\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/tien-vui-vao-dat-4451512.html\" title=\"Tiền vùi vào đất\">Tiền vùi vào đất</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/tien-vui-vao-dat-4451512.html\" title=\"Tiền vùi vào đất\">Tôi nhận được cuộc gọi từ số máy lạ ở Việt Nam, hỏi mua căn nhà cũ của tôi nằm xa trung tâm Hà Nội, nhưng gần vài dự án lớn đang được quy hoạch.</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004932\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/tien-vui-vao-dat-4451512.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4451512-1\">164</span>\r\n</a>\r\n</p>\r\n</article>\r\n<article class=\"item-news item-news-common item-8 off-thumb\" style=\"display:none\">\r\n<h3 class=\"title-news\"><a href=\"https://vnexpress.net/bang-cap-doanh-nhan-4424183.html\" title=\"Bằng cấp doanh nhân\">Bằng cấp doanh nhân</a></h3>\r\n<p class=\"description\">\r\n<a href=\"https://vnexpress.net/bang-cap-doanh-nhan-4424183.html\" title=\"Bằng cấp doanh nhân\">Tôi bỏ dở một dự án ở Việt Nam chỉ vì không thể xác nhận lãnh sự cho tấm bằng tốt nghiệp.</a>\r\n</p>\r\n<p class=\"meta-news\">\r\n<a href=\"javascript:;\" class=\"cat\" data-cate-id=\"1004932\"></a>\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/bang-cap-doanh-nhan-4424183.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n<span class=\"font_icon widget-comment-4424183-1\">110</span>\r\n</a>\r\n</p>\r\n</article>\r\n</div>\r\n<p class=\"more-btn width_common mt15 btn_loadmore more1\" data-id=\"1578\" data-page=\"1\" data-max-page=\"1\" data-limit-p1=\"15\" data-limit=\"100\" data-total=\"8\"><a href=\"javascript:;\">Xem thêm</a></p>\r\n</div>', 'difaultimg.jpg', 1, 1, 1, '2024-07-20', 'tin-tuc-1', '2024-07-19 18:22:26', '2024-07-19 18:22:26'),
(3, 'Hình vẽ tiết lộ nội tâm của bạn', 'Cùng một hình ảnh nhưng mỗi người nhìn ra một góc khác nhau và điều này thể hiện chính cách tư duy và tính cách của bạn.', '<div class=\"containner\">\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">\r\nNhà tâm lý học và tác giả đạt giải Nobel là&nbsp;Roger W. Sperry thấy rằng não có 2 bán cầu - trái và phải - thực hiện chức năng khác nhau và cách chúng ta tư duy tuỳ thuộc vào việc bán cầu nào hoạt động áp đảo hơn.&nbsp;</p><p class=\"Normal\">\r\nHãy xem nhanh bức hình dưới đây từ<em> Bright Side</em>, bạn nhìn ra con vật gì đầu tiên? Hãy kéo xuống để xem đáp án và khám phá thêm về chính mình.</p>\r\n<figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\">\r\n            <div class=\"action_thumb flexbox\" style=\"transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1); z-index: 9; display: none;\">\r\n                \r\n                <a href=\"javascript:;\" class=\"share_photo\" data-type=\"tw\" data-reference-id=\"undefined\"><svg class=\"ic ic-twitte\"><use xlink:href=\"#Twitter\"></use></svg></a>\r\n                <a href=\"javascript:;\" class=\"vne_zoom\" style=\"transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1); display: none;\"><svg class=\"ic ic-zoom\"><use xlink:href=\"#Zoom\"></use></svg></a>\r\n            </div>\r\n<meta itemprop=\"url\" content=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=0&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=Zs01-0kfWCSdDOYQX15Xqg\">\r\n<meta itemprop=\"width\" content=\"500\">\r\n<meta itemprop=\"height\" content=\"500\">\r\n<meta itemprop=\"href\" content=\"\">\r\n<div class=\"fig-picture\" style=\"padding-bottom: 74.626865671642%;position: relative;\"><picture>\r\n<!--[if IE 9]><video style=\"display: none;\"><![endif]-->\r\n<source data-srcset=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=LMTMPp7ktyC2fvBv7BMUsw 1x, https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AXTHMECrZwy5ixudx2z0uA 1.5x, https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=mBaOSmu9gxHN_1NICt2kPw 2x\" srcset=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=LMTMPp7ktyC2fvBv7BMUsw 1x, https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AXTHMECrZwy5ixudx2z0uA 1.5x, https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=mBaOSmu9gxHN_1NICt2kPw 2x\">\r\n<!--[if IE 9]></video><![endif]-->\r\n<img itemprop=\"contentUrl\" style=\"position: absolute;width:500px;left:85px;\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Hình vẽ tiết lộ sức mạnh nội tâm của bạn\" class=\"lazy lazied\" src=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=LMTMPp7ktyC2fvBv7BMUsw\" data-src=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho-1544858866-8017-1544861671.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=LMTMPp7ktyC2fvBv7BMUsw\" data-ll-status=\"loaded\">\r\n</picture></div>\r\n<figcaption itemprop=\"description\">\r\n</figcaption>\r\n</figure><p class=\"subtitle\">\r\nNếu bạn thấy phần đầu con hổ</p>\r\n<figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\">\r\n            <div class=\"action_thumb flexbox\" style=\"transform-origin: 0px 0px;opacity: 1;transform: scale(1, 1);display: none;z-index:9;\">\r\n                \r\n                <a href=\"javascript:;\" class=\"share_photo\" data-type=\"tw\" data-reference-id=\"undefined\"><svg class=\"ic ic-twitte\"><use xlink:href=\"#Twitter\"></use></svg></a>\r\n                <a href=\"javascript:;\" class=\"vne_zoom\" style=\"transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1);\"><svg class=\"ic ic-zoom\"><use xlink:href=\"#Zoom\"></use></svg></a>\r\n            </div>\r\n<meta itemprop=\"url\" content=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=0&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=cGsyrQ94HHFpWOCOfYqDOg\">\r\n<meta itemprop=\"width\" content=\"500\">\r\n<meta itemprop=\"height\" content=\"500\">\r\n<meta itemprop=\"href\" content=\"\">\r\n<div class=\"fig-picture\" style=\"padding-bottom: 74.626865671642%;position: relative;\"><picture>\r\n<!--[if IE 9]><video style=\"display: none;\"><![endif]-->\r\n<source data-srcset=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MB5xpiRU8XGQj6eRXWvt5g 1x, https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=j6yju6oNCapwOYmwwUxLGA 1.5x, https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=YHOjp4D3K1Hz30R7XMvVXQ 2x\" srcset=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MB5xpiRU8XGQj6eRXWvt5g 1x, https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=j6yju6oNCapwOYmwwUxLGA 1.5x, https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=YHOjp4D3K1Hz30R7XMvVXQ 2x\">\r\n<!--[if IE 9]></video><![endif]-->\r\n<img itemprop=\"contentUrl\" style=\"position: absolute;width:500px;left:85px;\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Hình vẽ tiết lộ sức mạnh nội tâm của bạn - 1\" class=\"lazy lazied\" src=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MB5xpiRU8XGQj6eRXWvt5g\" data-src=\"https://i1-giadinh.vnecdn.net/2018/12/15/ho2-1544858999-8788-1544861673.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=MB5xpiRU8XGQj6eRXWvt5g\" data-ll-status=\"loaded\">\r\n</picture></div>\r\n<figcaption itemprop=\"description\">\r\n</figcaption>\r\n</figure><p class=\"Normal\">\r\nBán cầu não trái của bạn hoạt động tích cực hơn bên phải. Bạn là người có đầu óc phân tích với định hướng rõ ràng và có tổ chức. Khi đối mặt với một vấn đề, bạn thường lý giải theo logic, tính toán kỹ càng và khách quan.&nbsp;</p><p class=\"Normal\">\r\nTuy nhiên, đôi khi, vì biết các quyết định của mình đều đã được suy nghĩ kỹ càng, bạn thường khá cứng nhắc. Vì thế, bạn ít khi lắng nghe và cân nhắc ý kiến của người khác. Bạn nên nhớ rằng khiêm nhường một chút có thể tạo khác biệt lớn.</p><p class=\"Normal\">\r\nBạn rất rành mạch, có mục tiêu cụ thể và phương thức rõ ràng để đạt được. Là người lý trí, cảm xúc không phải là thứ có thể cản lối trên con đường tiến tới đích của bạn.&nbsp;Thế giới của bạn rất thực, và ở đó không có chỗ cho những câu chuyện kỳ diệu, huyễn hoặc.</p><p class=\"subtitle\">\r\nNếu bạn thấy con khỉ đang đu cây</p>\r\nNão phải của bạn hoạt động tích cực hơn. Bạn là người sáng tạo với đầy các ý tưởng cải tiến. Khi đối mặt với một vấn đề, bạn hay dựa vào trực giác hơn là tư duy phản biện.&nbsp;</p><p class=\"Normal\">\r\nBạn hiểu rõ ràng mỗi bước đi trên đường đời là một bài học và ngay cả các thất bại cũng có thể là đà để đạt tới các mục tiêu. Với bạn, hành trình quan trọng hơn đích đến. Vì là người mơ mộng, bạn thường dễ lạc lối trong chính những cõi mơ của mình. Có lẽ thỉnh thoảng bạn nên xem lại thực tế và chú ý hơn tới thế giới xung quanh.&nbsp;</p><p class=\"Normal\">\r\nBạn hay làm mọi thứ một cách ngẫu hứng và quan tâm quá đến nhiều điều. Bạn dành nhiều thời gian để suy nghĩ vẩn vơ và hành động dựa trên cảm xúc.&nbsp;</p><p class=\"Normal\">\r\nBạn rất giỏi trong các môn cần sự sáng tạo, nghệ thuật, âm nhạc... Bạn có nhiều giấc mơ hơn là các mục tiêu cụ thể trong cuộc đời và đặt nỗ lực để theo đuổi những giấc mơ ấy.</p><p class=\"Normal\" style=\"text-align:right;\">\r\n<strong>Bảo Ngọc</strong></p><ul class=\"list-news gaBoxLinkDisplay\" data-campaign=\"Box-Related\" data-event-category=\"Article Link Display\" data-event-action=\"Box-Related\" data-event-label=\"Item-0\"><li data-id=\"3827061\"><a data-medium=\"Item-1\" href=\"https://vnexpress.net/cach-lay-kem-danh-rang-tiet-lo-ban-chat-cua-mot-nguoi-3827061.html\" title=\"Cách lấy kem đánh răng tiết lộ bản chất của một người\" data-itm-source=\"#vn_source=Detail-DoiSong_ToAm-3854714&amp;vn_campaign=Box-Related&amp;vn_medium=Item-1&amp;vn_term=Desktop\" data-event-category=\"Article Link Click\" data-event-action=\"Box-Related\" data-event-label=\"1\" data-itm-added=\"1\">Cách lấy kem đánh răng tiết lộ bản chất của một người</a><span class=\"meta-news\">\r\n<a class=\"count_cmt\" href=\"https://vnexpress.net/cach-lay-kem-danh-rang-tiet-lo-ban-chat-cua-mot-nguoi-3827061.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\" data-event-category=\"Article Link Click\" data-event-action=\"Box-Related\" data-event-label=\"1\" data-itm-source=\"#vn_source=Detail-DoiSong_ToAm-3854714&amp;vn_campaign=Box-Related&amp;vn_medium=Item-1&amp;vn_term=Desktop\" data-itm-added=\"1\">\r\n<svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n\r\n</a>\r\n</span></li></ul>\r\n\r\n</article>\r\n</div>', 'post1.png\r\n', 2, 1, 1, '2024-07-01', '', NULL, NULL),
(4, 'Cuba tuyên bố quốc tang tưởng niệm Tổng bí thư Nguyễn Phú Trọng', '\r\nCuba tuyên bố quốc tang tưởng niệm Tổng bí thư Nguyễn Phú Trọng\r\nChủ tịch Diaz Canel-Bermudez tuyên bố Cuba sẽ tổ chức quốc tang trong ngày 22/7 để tưởng nhớ Tổng bí thư Nguyễn Phú Trọng.', '<article class=\"fck_detail \">\r\n<p class=\"Normal\">Nhật báo Granma, cơ quan ngôn luận của Đảng Cộng sản Cuba, hôm nay đưa tin Chủ tịch Miguel Díaz Canel-Bermudez quyết định nước này sẽ để tang chính thức tưởng niệm Tổng bí thư Nguyễn Phú Trọng từ 6h ngày 20/7 (17h giờ Hà Nội) tới 24h ngày 21/7, trong khi nghi thức quốc tang sẽ diễn ra trong cả ngày 22/7.</p><p class=\"Normal\">Trong thời gian để tang và tổ chức quốc tang, các công trình công cộng và cơ sở quân sự trên cả nước Cuba sẽ treo cờ rủ, ngừng các hoạt động vui chơi và giải trí công cộng.</p><p class=\"Normal\">Quốc hội Cuba trong phiên họp ngày 19/7 cũng dành một phút mặc niệm để tưởng nhớ Tổng bí thư Nguyễn Phú Trọng.</p>\r\n<figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\">\r\n            <div class=\"action_thumb flexbox\" style=\"transform-origin: 0px 0px;opacity: 1;transform: scale(1, 1);display: none;z-index:9;\">\r\n                \r\n                <a href=\"javascript:;\" class=\"share_photo\" data-type=\"tw\" data-reference-id=\"6\"><svg class=\"ic ic-twitte\"><use xlink:href=\"#Twitter\"></use></svg></a>\r\n                <a href=\"javascript:;\" class=\"vne_zoom\" style=\"transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1);\"><svg class=\"ic ic-zoom\"><use xlink:href=\"#Zoom\"></use></svg></a>\r\n            </div>\r\n<meta itemprop=\"url\" content=\"https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=Yw8PcU5S5A0ZnHk4wxVa4Q\">\r\n<meta itemprop=\"width\" content=\"2048\">\r\n<meta itemprop=\"height\" content=\"1229\">\r\n<meta itemprop=\"href\" content=\"\">\r\n<div class=\"fig-picture\" style=\"padding-bottom: 59.982862039417%;position: relative;\"><picture>\r\n<!--[if IE 9]><video style=\"display: none;\"><![endif]-->\r\n<source data-srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=foNmgqRutKLvOWXFHrbvsg 1x, https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=y1lkNspT08Ke54_Sx4fZNw 1.5x, https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=-pmHrKoJRetevdCLSIcTrw 2x\" srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=foNmgqRutKLvOWXFHrbvsg 1x, https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=y1lkNspT08Ke54_Sx4fZNw 1.5x, https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=-pmHrKoJRetevdCLSIcTrw 2x\">\r\n<!--[if IE 9]></video><![endif]-->\r\n<img itemprop=\"contentUrl\" style=\"position: absolute;width:100%;left:0;\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Quốc hội Cuba dành phút mặc niệm tưởng nhớ Tổng bí thư Nguyễn Phú Trọng hôm 19/7. Ảnh: Đại sứ quán Cuba tại Việt Nam\" class=\"lazy lazied\" src=\"https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=foNmgqRutKLvOWXFHrbvsg\" data-src=\"https://i1-vnexpress.vnecdn.net/2024/07/20/cuba-vn-1-3548-1721473883.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=foNmgqRutKLvOWXFHrbvsg\" data-ll-status=\"loaded\">\r\n</picture></div>\r\n<figcaption itemprop=\"description\">\r\n<p class=\"Image\">Quốc hội Cuba dành phút mặc niệm tưởng nhớ Tổng bí thư Nguyễn Phú Trọng hôm 19/7. Ảnh: <em>Đại sứ quán Cuba tại Việt Nam</em></p>\r\n</figcaption>\r\n</figure><p class=\"Normal\">Đại tướng Raul Castro Ruz và Bí thư thứ nhất Ban Chấp hành Trung ương Đảng Cộng sản Cuba, Chủ tịch nước Cuba Miguel Díaz Canel-Bermudez hôm 19/7 gửi thư, bày tỏ chia buồn sâu sắc nhất tới gia đình Tổng bí thư Nguyễn Phú Trọng và nhân dân Việt Nam.</p><p class=\"Normal\">\"Sự ra đi của đồng chí Nguyễn Phú Trọng là mất mát không thể bù đắp đối với Cuba. Cuba sẽ luôn tưởng nhớ tới đồng chí Nguyễn Phú Trọng như người anh em vĩ đại, người thúc đẩy không biết mệt mỏi mối quan hệ hữu nghị đặc biệt giữa hai Đảng, hai Quốc hội, hai chính phủ và nhân dân hai nước chúng ta\", bức thư có đoạn.</p><p class=\"Normal\">Các lãnh đạo Cuba gọi Tổng bí thư là \"người bạn thân yêu\", đề cập chuyến thăm quan trọng của ông đến Cuba vào tháng 3/2018, đặc biệt là những khoảnh khắc đáng nhớ trong chuyến đi tới thành phố Santiago de Cuba để tỏ lòng kính trọng với cố chủ tịch Fidel Castro Ruz.</p><p class=\"Normal\">\"Chúng tôi xin được nhắc lại với đồng chí Tô Lâm sự ủng hộ và tình đoàn kết của chúng tôi, cùng với ý chí kiên định tiếp tục tăng cường mối quan hệ anh em không thể phá vỡ đã kết nối hai nước Cuba và Việt Nam. Chúng tôi xin được gửi tới đồng chí cái ôm của tình hữu nghị và lời chào trân trọng nhất\", các lãnh đạo Cuba cho hay.</p><p class=\"Normal\">Chủ tịch Trung Quốc Tập Cận Bình chiều 20/7 cùng đoàn lãnh đạo cấp cao Trung Quốc đến viếng Tổng bí thư Nguyễn Phú Trọng tại đại sứ quán Việt Nam ở Bắc Kinh.</p>\r\n<figure data-size=\"true\" itemprop=\"associatedMedia image\" itemscope=\"\" itemtype=\"http://schema.org/ImageObject\" class=\"tplCaption action_thumb_added\">\r\n            <div class=\"action_thumb flexbox\" style=\"transform-origin: 0px 0px;opacity: 1;transform: scale(1, 1);display: none;z-index:9;\">\r\n                \r\n                <a href=\"javascript:;\" class=\"share_photo\" data-type=\"tw\" data-reference-id=\"6\"><svg class=\"ic ic-twitte\"><use xlink:href=\"#Twitter\"></use></svg></a>\r\n                <a href=\"javascript:;\" class=\"vne_zoom\" style=\"transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1);\"><svg class=\"ic ic-zoom\"><use xlink:href=\"#Zoom\"></use></svg></a>\r\n            </div>\r\n<meta itemprop=\"url\" content=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=7npNIsRvWp-_Xsd3TzdRVg\">\r\n<meta itemprop=\"width\" content=\"2400\">\r\n<meta itemprop=\"height\" content=\"1597\">\r\n<meta itemprop=\"href\" content=\"\">\r\n<div class=\"fig-picture\" style=\"padding-bottom: 66.539923954373%;position: relative;\"><picture>\r\n<!--[if IE 9]><video style=\"display: none;\"><![endif]-->\r\n<source data-srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=mpylZhN82IdQHom-ro_POg 1x, https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TuKIF6qRcAdYR6TTC1Cb7Q 1.5x, https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=J5BZicb7RbOv3GGp6aqqwg 2x\" srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=mpylZhN82IdQHom-ro_POg 1x, https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TuKIF6qRcAdYR6TTC1Cb7Q 1.5x, https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=J5BZicb7RbOv3GGp6aqqwg 2x\">\r\n<!--[if IE 9]></video><![endif]-->\r\n<img itemprop=\"contentUrl\" style=\"position: absolute;width:100%;left:0;\" loading=\"lazy\" intrinsicsize=\"680x0\" alt=\"Chủ tịch Trung Quốc Tập Cận Bình ghi trong sổ tang tưởng niệm Tổng bí thư Nguyễn Phú Trọng tại đại sứ quán Việt Nam ở Bắc Kinh chiều 20/7. Ảnh: TTXVN\" class=\"lazy lazied\" src=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=mpylZhN82IdQHom-ro_POg\" data-src=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ong-tap-can-binh-vieng-tong-bi-3363-5991-1721476932.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=mpylZhN82IdQHom-ro_POg\" data-ll-status=\"loaded\">\r\n</picture></div>\r\n<figcaption itemprop=\"description\">\r\n<p class=\"Image\">Chủ tịch Trung Quốc Tập Cận Bình ghi trong sổ tang tưởng niệm Tổng bí thư Nguyễn Phú Trọng tại đại sứ quán Việt Nam ở Bắc Kinh chiều 20/7. Ảnh: <em>TTXVN</em></p>\r\n</figcaption>\r\n</figure><p class=\"Normal\">\"Vô cùng thương tiếc đồng chí Nguyễn Phú Trọng, lãnh tụ kiệt xuất của nhân dân Việt Nam, người bạn vĩ đại của nhân dân Trung Quốc\", ông Tập ghi trong sổ tang. Chủ tịch Trung Quốc cũng đã thăm hỏi, chia buồn cùng Đại sứ Việt Nam tại Trung Quốc Phạm Sao Mai.</p><p class=\"Normal\">Tháng 10/2022, Chủ tịch Tập Cận Bình đã trao tặng Huân chương Hữu nghị cho Tổng bí thư Nguyễn Phú Trọng, khẳng định Tổng bí thư Nguyễn Phú Trọng là \"người bạn tốt, chân thành\" của Trung Quốc, \"người định hướng và thúc đẩy quan hệ đối tác hợp tác chiến lược toàn diện giữa Trung Quốc và Việt Nam trong thời đại mới\"</p>\r\n                    <div class=\"width_common box-tinlienquanv2 \">\r\n                        \r\n                        <article class=\"item-news\">\r\n                            <div class=\"thumb-art\">\r\n                                <a href=\"https://vnexpress.net/tong-bi-thu-nguyen-phu-trong-tu-tran-4771643.html\" data-itm-source=\"#vn_source=Detail-TheGioi-4772450&amp;vn_campaign=Box-TinXemThem&amp;vn_medium=Item-1&amp;vn_term=Desktop&amp;vn_thumb=1\" class=\"thumb thumb-5x3\" title=\"Tổng bí thư Nguyễn Phú Trọng từ trần\" data-itm-added=\"1\">\r\n                                \r\n        <picture>\r\n            <!--[if IE 9]><video style=\"display: none;\"><![endif]-->\r\n            <source data-srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/19/450362375-847235870165395-4121-3729-8763-1721389603.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zeQcVFUs8Bo4JwqqfIAFSA 1x, https://i1-vnexpress.vnecdn.net/2024/07/19/450362375-847235870165395-4121-3729-8763-1721389603.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=tq-HrvEMJw2gpKWIf9uMVw 2x\" srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/19/450362375-847235870165395-4121-3729-8763-1721389603.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zeQcVFUs8Bo4JwqqfIAFSA 1x, https://i1-vnexpress.vnecdn.net/2024/07/19/450362375-847235870165395-4121-3729-8763-1721389603.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=tq-HrvEMJw2gpKWIf9uMVw 2x\">\r\n            <!--[if IE 9]></video><![endif]-->\r\n            <img loading=\"lazy\" intrinsicsize=\"180x108\" alt=\"Tổng bí thư Nguyễn Phú Trọng từ trần\" class=\"lazy lazied\" src=\"https://i1-vnexpress.vnecdn.net/2024/07/19/450362375-847235870165395-4121-3729-8763-1721389603.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zeQcVFUs8Bo4JwqqfIAFSA\" data-src=\"https://i1-vnexpress.vnecdn.net/2024/07/19/450362375-847235870165395-4121-3729-8763-1721389603.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zeQcVFUs8Bo4JwqqfIAFSA\" data-ll-status=\"loaded\">\r\n        </picture>\r\n                                \r\n                                </a>\r\n                            </div>\r\n                            <h4 class=\"title-news\"><a href=\"https://vnexpress.net/tong-bi-thu-nguyen-phu-trong-tu-tran-4771643.html\" data-itm-source=\"#vn_source=Detail-TheGioi-4772450&amp;vn_campaign=Box-TinXemThem&amp;vn_medium=Item-1&amp;vn_term=Desktop&amp;vn_thumb=1\" title=\"Tổng bí thư Nguyễn Phú Trọng từ trần\" data-itm-added=\"1\">Tổng bí thư Nguyễn Phú Trọng từ trần</a></h4>\r\n                            <p class=\"description\">\r\n                                <a data-itm-source=\"#vn_source=Detail-TheGioi-4772450&amp;vn_campaign=Box-TinXemThem&amp;vn_medium=Item-1&amp;vn_term=Desktop&amp;vn_thumb=1\" href=\"https://vnexpress.net/tong-bi-thu-nguyen-phu-trong-tu-tran-4771643.html\" title=\"Tổng bí thư Nguyễn Phú Trọng từ trần\" data-itm-added=\"1\">Tổng bí thư Ban Chấp hành Trung ương Đảng Nguyễn Phú Trọng từ trần lúc 13h38 ngày 19/7/2024 do tuổi cao bệnh nặng, hưởng thọ 80 tuổi.</a>\r\n                                <span class=\"meta-news\">\r\n                                    \r\n        <a class=\"count_cmt\" href=\"https://vnexpress.net/tong-bi-thu-nguyen-phu-trong-tu-tran-4771643.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n	        <svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n            <span class=\"font_icon widget-comment-4771643-1\">2564</span>\r\n        </a>\r\n        \r\n                                </span>\r\n                            </p>\r\n                        </article>\r\n                        \r\n                        <article class=\"item-news\">\r\n                            <div class=\"thumb-art\">\r\n                                <a href=\"https://vnexpress.net/lanh-dao-cac-nuoc-chia-buon-tong-bi-thu-nguyen-phu-trong-tu-tran-4772238.html\" data-itm-source=\"#vn_source=Detail-TheGioi-4772450&amp;vn_campaign=Box-TinXemThem&amp;vn_medium=Item-2&amp;vn_term=Desktop&amp;vn_thumb=1\" class=\"thumb thumb-5x3\" title=\"Lãnh đạo các nước chia buồn Tổng bí thư Nguyễn Phú Trọng từ trần\" data-itm-added=\"1\">\r\n                                \r\n        <picture>\r\n            <!--[if IE 9]><video style=\"display: none;\"><![endif]-->\r\n            <source data-srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ttx-tbtnguyenphutrong-jpg-1721-5145-8089-1721413427.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=uL3PXhU9Wl8psJsocC7Nkg 1x, https://i1-vnexpress.vnecdn.net/2024/07/20/ttx-tbtnguyenphutrong-jpg-1721-5145-8089-1721413427.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=J_Ap_BigGMeC3HmUINosVw 2x\" srcset=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ttx-tbtnguyenphutrong-jpg-1721-5145-8089-1721413427.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=uL3PXhU9Wl8psJsocC7Nkg 1x, https://i1-vnexpress.vnecdn.net/2024/07/20/ttx-tbtnguyenphutrong-jpg-1721-5145-8089-1721413427.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=J_Ap_BigGMeC3HmUINosVw 2x\">\r\n            <!--[if IE 9]></video><![endif]-->\r\n            <img loading=\"lazy\" intrinsicsize=\"180x108\" alt=\"Lãnh đạo các nước chia buồn Tổng bí thư Nguyễn Phú Trọng từ trần\" class=\"lazy lazied\" src=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ttx-tbtnguyenphutrong-jpg-1721-5145-8089-1721413427.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=uL3PXhU9Wl8psJsocC7Nkg\" data-src=\"https://i1-vnexpress.vnecdn.net/2024/07/20/ttx-tbtnguyenphutrong-jpg-1721-5145-8089-1721413427.jpg?w=180&amp;h=108&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=uL3PXhU9Wl8psJsocC7Nkg\" data-ll-status=\"loaded\">\r\n        </picture>\r\n                                \r\n                                </a>\r\n                            </div>\r\n                            <h4 class=\"title-news\"><a href=\"https://vnexpress.net/lanh-dao-cac-nuoc-chia-buon-tong-bi-thu-nguyen-phu-trong-tu-tran-4772238.html\" data-itm-source=\"#vn_source=Detail-TheGioi-4772450&amp;vn_campaign=Box-TinXemThem&amp;vn_medium=Item-2&amp;vn_term=Desktop&amp;vn_thumb=1\" title=\"Lãnh đạo các nước chia buồn Tổng bí thư Nguyễn Phú Trọng từ trần\" data-itm-added=\"1\">Lãnh đạo các nước chia buồn Tổng bí thư Nguyễn Phú Trọng từ trần</a></h4>\r\n                            <p class=\"description\">\r\n                                <a data-itm-source=\"#vn_source=Detail-TheGioi-4772450&amp;vn_campaign=Box-TinXemThem&amp;vn_medium=Item-2&amp;vn_term=Desktop&amp;vn_thumb=1\" href=\"https://vnexpress.net/lanh-dao-cac-nuoc-chia-buon-tong-bi-thu-nguyen-phu-trong-tu-tran-4772238.html\" title=\"Lãnh đạo các nước chia buồn Tổng bí thư Nguyễn Phú Trọng từ trần\" data-itm-added=\"1\">Lãnh đạo nhiều nước gửi điện, thư chia buồn đến lãnh đạo và nhân dân Việt Nam sau khi Tổng bí thư Nguyễn Phú Trọng từ trần.</a>\r\n                                <span class=\"meta-news\">\r\n                                    \r\n        <a class=\"count_cmt\" href=\"https://vnexpress.net/lanh-dao-cac-nuoc-chia-buon-tong-bi-thu-nguyen-phu-trong-tu-tran-4772238.html#box_comment_vne\" style=\"white-space: nowrap; display: inline-block;\">\r\n	        <svg class=\"ic ic-comment\"><use xlink:href=\"#Comment-Reg\"></use></svg>\r\n            <span class=\"font_icon widget-comment-4772238-1\">75</span>\r\n        </a>\r\n        \r\n                                </span>\r\n                            </p>\r\n                        </article>\r\n                        \r\n                    </div><p class=\"Normal\" style=\"text-align:right;\"><strong>Vũ Anh </strong>(Theo <em>TTXVN</em>)</p>\r\n<!-- Hope -->\r\n<!-- End Hope -->\r\n</article>', 'bithu.jpg', 1, 0, 1, '2024-07-09', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loaitin_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTL`);

--
-- Chỉ mục cho bảng `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`idTin`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTL` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tin`
--
ALTER TABLE `tin`
  MODIFY `idTin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
