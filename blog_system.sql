-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2025 at 12:35 PM
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
-- Database: `blog_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Technology', 'technology', '2025-10-25 16:12:40', '2025-10-25 16:12:40'),
(2, 'Programming', 'programming', '2025-10-25 16:13:21', '2025-10-25 16:13:21'),
(3, 'AI', 'ai', '2025-10-25 16:13:39', '2025-10-25 16:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `reded_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `reded_at`, `created_at`, `updated_at`) VALUES
(1, 'Dolan Henson', 'sekomeges@mailinator.com', '+1 (696) 471-7005', 'Ipsa deleniti volup', '2025-10-28 08:45:37', '2025-10-28 08:40:16', '2025-10-28 08:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '2025_10_22_100401_create_settings_table', 1),
(3, '2025_10_22_100635_create_categories_table', 1),
(4, '2025_10_22_100814_create_posts_table', 1),
(5, '2025_10_22_101511_create_tags_table', 1),
(6, '2025_10_22_101614_create_post_tag_table', 1),
(7, '2025_10_22_101751_create_pages_table', 1),
(8, '2025_10_22_101915_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `content` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `content` text NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `sub_title`, `content`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'WordPress: Beyond Blogging — A Full Web Platform', 'From personal blogs to powerful digital ecosystems', '&lt;p data-start=&quot;4721&quot; data-end=&quot;4979&quot;&gt;What started as a blogging tool has evolved into a full-fledged &lt;strong data-start=&quot;4785&quot; data-end=&quot;4820&quot;&gt;content management system (CMS)&lt;/strong&gt; powering over 40% of the entire web. &lt;strong data-start=&quot;4858&quot; data-end=&quot;4871&quot;&gt;WordPress&lt;/strong&gt; combines ease of use, flexibility, and a massive ecosystem to make website creation accessible to everyone.&lt;/p&gt;\r\n&lt;h4 data-start=&quot;4981&quot; data-end=&quot;5035&quot;&gt;&lt;strong data-start=&quot;4986&quot; data-end=&quot;5033&quot;&gt;1. Easy for Beginners, Powerful for Experts&lt;/strong&gt;&lt;/h4&gt;\r\n&lt;p data-start=&quot;5036&quot; data-end=&quot;5172&quot;&gt;WordPress offers an intuitive dashboard for beginners while allowing developers to dive deep with custom themes, plugins, and REST APIs.&lt;/p&gt;\r\n&lt;h4 data-start=&quot;5174&quot; data-end=&quot;5215&quot;&gt;&lt;strong data-start=&quot;5179&quot; data-end=&quot;5213&quot;&gt;2. An Endless Plugin Ecosystem&lt;/strong&gt;&lt;/h4&gt;\r\n&lt;p data-start=&quot;5216&quot; data-end=&quot;5369&quot;&gt;With over 60,000 plugins, WordPress can transform into virtually anything &amp;mdash; from an online store (WooCommerce) to a learning platform or membership site.&lt;/p&gt;\r\n&lt;h4 data-start=&quot;5371&quot; data-end=&quot;5412&quot;&gt;&lt;strong data-start=&quot;5376&quot; data-end=&quot;5410&quot;&gt;3. SEO and Content at Its Core&lt;/strong&gt;&lt;/h4&gt;\r\n&lt;p data-start=&quot;5413&quot; data-end=&quot;5542&quot;&gt;Designed with SEO best practices in mind, WordPress helps creators focus on content without worrying about the technical details.&lt;/p&gt;\r\n&lt;h4 data-start=&quot;5544&quot; data-end=&quot;5590&quot;&gt;&lt;strong data-start=&quot;5549&quot; data-end=&quot;5588&quot;&gt;4. Open Source and Community Driven&lt;/strong&gt;&lt;/h4&gt;\r\n&lt;p data-start=&quot;5591&quot; data-end=&quot;5727&quot;&gt;WordPress thrives because of its global community of contributors. Regular updates and improvements ensure it remains modern and secure.&lt;/p&gt;\r\n&lt;hr data-start=&quot;5729&quot; data-end=&quot;5732&quot;&gt;\r\n&lt;h3 data-start=&quot;5734&quot; data-end=&quot;5755&quot;&gt;&lt;strong data-start=&quot;5738&quot; data-end=&quot;5753&quot;&gt;Conclusion:&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p data-start=&quot;5756&quot; data-end=&quot;5903&quot;&gt;WordPress isn&amp;rsquo;t just a CMS &amp;mdash; it&amp;rsquo;s a &lt;strong data-start=&quot;5792&quot; data-end=&quot;5811&quot;&gt;global movement&lt;/strong&gt; that empowers individuals and businesses alike to publish, sell, and grow online with ease.&lt;/p&gt;', 'uploads/JYcmlE5tOR7rrp30OVW7rYf7rCJRoWxX9nWD4U8o.png', 'wordpress-beyond-blogging-a-full-web-platform', '2025-10-26 07:17:27', '2025-10-27 18:05:36'),
(2, 1, 1, 'CodeIgniter: The Lightweight PHP Framework That Still Shines', 'Simplicity, performance, and speed in one elegant package', '<p data-start=\"3484\" data-end=\"3652\">Before Laravel took the spotlight, <strong data-start=\"3519\" data-end=\"3534\">CodeIgniter</strong> was the trusted workhorse of PHP development &mdash; and it&rsquo;s still loved today for its simplicity and blazing performance.</p>\r\n<h4 data-start=\"3654\" data-end=\"3684\"><strong data-start=\"3659\" data-end=\"3682\">1. Lightweight Core</strong></h4>\r\n<p data-start=\"3685\" data-end=\"3845\">CodeIgniter&rsquo;s footprint is small, making it one of the fastest PHP frameworks available. It&rsquo;s perfect for developers who want control without sacrificing speed.</p>\r\n<h4 data-start=\"3847\" data-end=\"3874\"><strong data-start=\"3852\" data-end=\"3872\">2. Easy to Learn</strong></h4>\r\n<p data-start=\"3875\" data-end=\"4018\">With straightforward documentation and minimal configuration, beginners can start coding almost immediately &mdash; no steep learning curve required.</p>\r\n<h4 data-start=\"4020\" data-end=\"4052\"><strong data-start=\"4025\" data-end=\"4050\">3. Strong Performance</strong></h4>\r\n<p data-start=\"4053\" data-end=\"4202\">CodeIgniter is known for its <strong data-start=\"4082\" data-end=\"4102\">low memory usage</strong> and <strong data-start=\"4107\" data-end=\"4126\">quick execution</strong>, making it ideal for shared hosting or applications with limited resources.</p>\r\n<h4 data-start=\"4204\" data-end=\"4237\"><strong data-start=\"4209\" data-end=\"4235\">4. Continued Evolution</strong></h4>\r\n<p data-start=\"4238\" data-end=\"4364\">Even after many years, CodeIgniter continues to evolve, providing modern features while staying true to its lightweight roots.</p>\r\n<hr data-start=\"4366\" data-end=\"4369\">\r\n<h3 data-start=\"4371\" data-end=\"4392\"><strong data-start=\"4375\" data-end=\"4390\">Conclusion:</strong></h3>\r\n<p data-start=\"4393\" data-end=\"4556\">If you value speed, stability, and simplicity, CodeIgniter remains one of the most efficient PHP frameworks available &mdash; a timeless tool in the developer&rsquo;s toolkit.</p>', 'uploads/30VaBpkJ4Impm8upZlHxSK7dDqlDfiianXfsMKYN.png', 'codeigniter-the-lightweight-php-framework-that-still-shines', '2025-10-26 10:14:41', '2025-10-27 09:20:00'),
(3, 1, 2, 'The Minimalist Backbone of Modern JavaScript APIs', 'Fast, unopinionated, and built for the web', '<p data-start=\"2077\" data-end=\"2285\">When it comes to backend development in JavaScript, <strong data-start=\"2129\" data-end=\"2143\">Express.js</strong> is the go-to framework. Built on top of Node.js, it provides a simple yet powerful foundation for creating APIs and server-side applications.</p>\r\n<h4 data-start=\"2287\" data-end=\"2325\"><strong data-start=\"2292\" data-end=\"2323\">1. Lightweight and Flexible</strong></h4>\r\n<p data-start=\"2326\" data-end=\"2534\">Express is minimal by design. It doesn&rsquo;t force you into a strict structure &mdash; giving developers the freedom to build applications their way, while still offering essential features like routing and middleware.</p>\r\n<h4 data-start=\"2536\" data-end=\"2566\"><strong data-start=\"2541\" data-end=\"2564\">2. Perfect for APIs</strong></h4>\r\n<p data-start=\"2567\" data-end=\"2727\">Whether you&rsquo;re creating a REST API or connecting a frontend built with React, Vue, or Angular, Express makes handling requests and responses fast and intuitive.</p>\r\n<h4 data-start=\"2729\" data-end=\"2760\"><strong data-start=\"2734\" data-end=\"2758\">3. Massive Ecosystem</strong></h4>\r\n<p data-start=\"2761\" data-end=\"2906\">With thousands of npm packages available, extending Express is effortless. Need authentication, sessions, or logging? There&rsquo;s a package for that.</p>\r\n<h4 data-start=\"2908\" data-end=\"2945\"><strong data-start=\"2913\" data-end=\"2943\">4. Ideal for Microservices</strong></h4>\r\n<p data-start=\"2946\" data-end=\"3094\">Its small footprint and flexibility make Express a perfect choice for <strong data-start=\"3016\" data-end=\"3046\">microservice architectures</strong>, powering scalable and modern web applications.</p>\r\n<hr data-start=\"3096\" data-end=\"3099\">\r\n<h3 data-start=\"3101\" data-end=\"3122\"><strong data-start=\"3105\" data-end=\"3120\">Conclusion:</strong></h3>\r\n<p data-start=\"3123\" data-end=\"3300\">Express.js embodies the spirit of modern JavaScript &mdash; fast, flexible, and developer-friendly. It&rsquo;s the foundation upon which countless web applications and APIs are built today.</p>', 'uploads/CtTj0Yk8xqHyNEokJI4ZPiyZGpGyoJeAqlYgaSIu.png', 'the-minimalist-backbone-of-modern-javascript-apis', '2025-10-26 10:15:08', '2025-10-27 09:19:09'),
(4, 1, 3, 'Django: The Powerhouse of Python Web Development', 'Where security, scalability, and speed come together', '<p data-start=\"498\" data-end=\"796\">When it comes to building powerful and secure web applications with Python, <strong data-start=\"574\" data-end=\"584\">Django</strong> stands tall as the framework of choice. Created in 2005, Django was designed with one goal in mind &mdash; to help developers build applications <strong data-start=\"724\" data-end=\"735\">quickly</strong> and <strong data-start=\"740\" data-end=\"751\">cleanly</strong>, without sacrificing quality or performance.</p>\r\n<h4 data-start=\"798\" data-end=\"841\"><strong data-start=\"803\" data-end=\"839\">1. Batteries Included Philosophy</strong></h4>\r\n<p data-start=\"842\" data-end=\"1054\">Django is famous for its &ldquo;<strong data-start=\"868\" data-end=\"890\">batteries included</strong>&rdquo; approach. It comes packed with everything a developer needs &mdash; authentication, admin panels, ORM, form handling, and even security features &mdash; right out of the box.</p>\r\n<h4 data-start=\"1056\" data-end=\"1084\"><strong data-start=\"1061\" data-end=\"1082\">2. Security First</strong></h4>\r\n<p data-start=\"1085\" data-end=\"1255\">Security is at the heart of Django. It automatically protects against SQL injection, cross-site scripting, and CSRF attacks, giving developers peace of mind from day one.</p>\r\n<h4 data-start=\"1257\" data-end=\"1298\"><strong data-start=\"1262\" data-end=\"1296\">3. Scalability and Performance</strong></h4>\r\n<p data-start=\"1299\" data-end=\"1486\">From startups to giants like Instagram, Django has proven its ability to scale. Its modular structure and efficient ORM make it ideal for both small projects and enterprise-grade systems.</p>\r\n<h4 data-start=\"1488\" data-end=\"1533\"><strong data-start=\"1493\" data-end=\"1531\">4. Active and Supportive Community</strong></h4>\r\n<p data-start=\"1534\" data-end=\"1687\">Django&rsquo;s community is global, diverse, and incredibly active. With detailed documentation and countless tutorials, learning Django has never been easier.</p>\r\n<hr data-start=\"1689\" data-end=\"1692\">\r\n<h3 data-start=\"1694\" data-end=\"1715\"><strong data-start=\"1698\" data-end=\"1713\">Conclusion:</strong></h3>\r\n<p data-start=\"1716\" data-end=\"1908\">Django represents the perfect balance between power and simplicity. For developers seeking a robust, secure, and future-proof web framework, Django is the Python framework that truly delivers.</p>', 'uploads/AislpTNJ5IRdFO8JzgO6QhPbWlsFSkiVZRI7rfvI.png', 'django-the-powerhouse-of-python-web-development', '2025-10-26 10:15:33', '2025-10-27 09:18:09'),
(5, 1, 2, 'Laravel: The Framework That Redefined Web Development', 'A journey into modern PHP development', '<p data-start=\"270\" data-end=\"643\">In the fast-paced world of web development, <strong data-start=\"314\" data-end=\"325\">Laravel</strong> has emerged as one of the most elegant and developer-friendly frameworks ever built with PHP. Since its release in 2011 by <strong data-start=\"449\" data-end=\"466\">Taylor Otwell</strong>, Laravel has transformed the way developers approach backend development &mdash; bringing structure, efficiency, and beauty to a language that was once criticized for its complexity.</p>\r\n<h3 data-start=\"645\" data-end=\"683\"><strong data-start=\"649\" data-end=\"681\">1. Elegance Meets Simplicity</strong></h3>\r\n<p data-start=\"684\" data-end=\"1022\">Laravel&rsquo;s philosophy centers around clean, readable, and expressive code. It provides a powerful syntax that feels natural, allowing developers to focus on logic rather than boilerplate. Features like routing, middleware, and dependency injection are built with clarity in mind, making development not just faster but also more enjoyable.</p>\r\n<h3 data-start=\"1024\" data-end=\"1057\"><strong data-start=\"1028\" data-end=\"1055\">2. A Complete Ecosystem</strong></h3>\r\n<p data-start=\"1058\" data-end=\"1430\">One of Laravel&rsquo;s greatest strengths lies in its rich ecosystem. Tools like <strong data-start=\"1133\" data-end=\"1149\">Eloquent ORM</strong> for database interaction, <strong data-start=\"1176\" data-end=\"1185\">Blade</strong> for templating, <strong data-start=\"1202\" data-end=\"1217\">Artisan CLI</strong> for automation, and <strong data-start=\"1238\" data-end=\"1255\">Laravel Forge</strong> for deployment make it a complete solution for almost any web project. This ecosystem reduces the need for third-party packages and provides a consistent, unified experience.</p>\r\n<h3 data-start=\"1432\" data-end=\"1466\"><strong data-start=\"1436\" data-end=\"1464\">3. Community and Support</strong></h3>\r\n<p data-start=\"1467\" data-end=\"1794\">Laravel&rsquo;s community is one of the largest and most active in the PHP world. Countless tutorials, open-source packages, and discussion forums make learning and problem-solving a breeze. The official documentation is thorough and beginner-friendly, ensuring that both new and experienced developers can grow within the framework.</p>\r\n<h3 data-start=\"1796\" data-end=\"1841\"><strong data-start=\"1800\" data-end=\"1839\">4. Modern Features for Modern Needs</strong></h3>\r\n<p data-start=\"1842\" data-end=\"2105\">From API development to real-time applications and queue systems, Laravel is built to handle the challenges of today&rsquo;s web. Features like <strong data-start=\"1980\" data-end=\"1990\">queues</strong>, <strong data-start=\"1992\" data-end=\"2002\">events</strong>, and <strong data-start=\"2008\" data-end=\"2024\">broadcasting</strong> make it easy to build scalable and interactive applications with minimal effort.</p>\r\n<h3 data-start=\"2107\" data-end=\"2144\"><strong data-start=\"2111\" data-end=\"2142\">5. The Beauty of Convention</strong></h3>\r\n<p data-start=\"2145\" data-end=\"2407\">Laravel embraces the &ldquo;<strong data-start=\"2167\" data-end=\"2200\">convention over configuration</strong>&rdquo; principle &mdash; meaning developers spend less time setting up and more time creating. Its structured architecture encourages best practices, ensuring that teams can collaborate effectively on complex projects.</p>\r\n<hr data-start=\"2409\" data-end=\"2412\">\r\n<h2 data-start=\"2414\" data-end=\"2433\"><strong data-start=\"2417\" data-end=\"2431\">Conclusion</strong></h2>\r\n<p data-start=\"2434\" data-end=\"2740\">Laravel is more than just a PHP framework; it&rsquo;s a <strong data-start=\"2484\" data-end=\"2510\">development philosophy</strong> that values elegance, efficiency, and joy in coding. Whether you&rsquo;re building a small business website or a large-scale enterprise application, Laravel provides the tools, community, and inspiration to make your project a success.</p>', 'uploads/wmyEjKnFFxgSkJCPjv87FGndaoXPMg38y61ZqDic.png', 'laravel-the-framework-that-redefined-web-development', '2025-10-26 10:16:02', '2025-10-27 09:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 5, NULL, NULL),
(7, 3, 2, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 3, 6, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 5, 1, NULL, NULL),
(14, 5, 3, NULL, NULL),
(16, 5, 2, NULL, NULL),
(17, 5, 5, NULL, NULL),
(18, 4, 8, NULL, NULL),
(19, 3, 1, NULL, NULL),
(20, 2, 2, NULL, NULL),
(21, 2, 3, NULL, NULL),
(22, 1, 1, NULL, NULL),
(23, 1, 3, NULL, NULL),
(24, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cmczMVe44o7G3ghshv4KFuScTt67O8yx7ghLCqrd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNXhlMFJuUkg3QkRKTjRNTmtWd0t2c042UGE0akV5M0pKZTNxSDMwcyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4tcGFuZWwvY29udGFjdHMtbWVzc2FnZXMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1761648337),
('hgy1wtgxf3nCYxCtZT5NKugLxJeZj3hgzABfsGiP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieTZFbmVobnNSNVlGRGp5cXFMZ2g0VHhwTG5IRHJPNVRpbzdXYUJjQSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluLXBhbmVsL3NldHRpbmdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1761569564),
('rUonwAtpkZM8raq1AfAgmq13UZMCglDfIuZylJFv', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRG5hU0dtQ1JSeHZOUEYySEFqbVo2VU9hTjJMY0NSa09BcTdZMDduVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Bvc3QvZGphbmdvLXRoZS1wb3dlcmhvdXNlLW9mLXB5dGhvbi13ZWItZGV2ZWxvcG1lbnQiO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjQ0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4tcGFuZWwvY2F0ZWdvcmllcyI7fX0=', 1761596608),
('Vaq8AausoPaYBwNRABIAIP4d6gi1neBpzpU8grKY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUUo0TFo3YmtvWThnR254QWt3TUR6dlBrRERhV1lqSHRtVzROMWJ0dCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluLXBhbmVsL3NldHRpbmdzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi1wYW5lbC9zZXR0aW5ncyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761595415),
('VwYQIOOq5wYx9UyhARL79lMpyztCdRIcYRTA7C1A', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiS045b1YyN1hqRFRZZHVlRW12U0p5bGx0ME1qa3BuaTJRWnhraDY0cyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1763984133);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Clean Blog', '2025-10-26 07:24:05', '2025-10-26 07:24:05'),
(2, 'facebook', 'Et optio Nam omnis', '2025-10-26 07:24:05', '2025-10-26 07:24:05'),
(3, 'twitter', 'Et laborum aliquam u', '2025-10-26 07:24:05', '2025-10-26 07:24:05'),
(4, 'github', 'Ad ea beatae esse a', '2025-10-26 07:24:05', '2025-10-26 07:24:05'),
(5, 'linkedin', 'Ullam assumenda temp', '2025-10-26 07:24:05', '2025-10-26 07:24:05'),
(6, 'copyright', 'All Copyright Reserved To Abdulrhman Elbatta', '2025-10-26 07:24:05', '2025-10-27 10:08:50'),
(7, 'site_logo', 'uploads/cp8YsXJ5HpKRozsha5qqqKcqba5bBqndm2mQMCtc.png', '2025-10-26 07:24:05', '2025-10-27 09:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Front End', 'front-end', '2025-10-25 16:15:07', '2025-10-25 16:15:07'),
(2, 'Back End', 'back-end', '2025-10-25 16:15:19', '2025-10-25 16:15:19'),
(3, 'Full Stack', 'full-stack', '2025-10-25 16:15:30', '2025-10-25 16:15:30'),
(5, 'PHP', 'php', '2025-10-25 16:16:27', '2025-10-25 16:16:27'),
(6, 'JS', 'js', '2025-10-25 16:16:56', '2025-10-25 16:16:56'),
(7, 'C#', 'c', '2025-10-25 16:17:08', '2025-10-25 16:17:08'),
(8, 'Python', 'python', '2025-10-27 09:17:10', '2025-10-27 09:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdulrahman Elbatta', 'test-admin', 'admin@example.com', '0592564668', 'uploads/kmt7c6JmdFo8A7tG4Ez8CtJVxkeDcNmmdFZjO1Uj.png', '2025-10-25 10:52:36', '$2y$12$WkBXN0SShd/k0vJ7I8dt4.P3zF0QLw1VCbdtwurcONkykyuo4E2Ku', '7AOigNHrQbr0oDRqyaVPRj1uUVGvr4ErUaFfTxSTOklkEn8p8vcuuqnOEOp0', '2025-10-25 10:52:36', '2025-11-24 09:24:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_avatar_unique` (`avatar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
