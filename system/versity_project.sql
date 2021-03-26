-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2017 at 08:54 অপরাহ্ণ
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `versity_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert_jobs_category`
--

CREATE TABLE `alert_jobs_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobscategory_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_jobs_category`
--

INSERT INTO `alert_jobs_category` (`id`, `jobscategory_id`, `users_id`) VALUES
(4, 2, 5),
(5, 4, 5),
(6, 2, 5),
(7, 4, 5),
(8, 2, 3),
(9, 3, 3),
(10, 24, 3),
(11, 1, 2),
(12, 4, 2),
(13, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `alert_jobs_hour`
--

CREATE TABLE `alert_jobs_hour` (
  `id` int(10) UNSIGNED NOT NULL,
  `hours` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_jobs_hour`
--

INSERT INTO `alert_jobs_hour` (`id`, `hours`, `users_id`, `created_at`, `updated_at`) VALUES
(2, 'Temporary', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert_jobs_level`
--

CREATE TABLE `alert_jobs_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `alert_level_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_jobs_level`
--

INSERT INTO `alert_jobs_level` (`id`, `users_id`, `alert_level_id`) VALUES
(1, 5, 1),
(2, 5, 5),
(3, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `alert_jobs_level_save`
--

CREATE TABLE `alert_jobs_level_save` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_alert_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_jobs_level_save`
--

INSERT INTO `alert_jobs_level_save` (`id`, `job_alert_name`, `users_id`, `created_at`, `updated_at`) VALUES
(21, 'Graduate', 5, '2017-02-24 11:30:09', '2017-02-24 11:30:09'),
(22, 'Internship', 5, '2017-02-24 11:30:09', '2017-02-24 11:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `alert_jobs_locations`
--

CREATE TABLE `alert_jobs_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_jobs_locations`
--

INSERT INTO `alert_jobs_locations` (`id`, `location_id`, `users_id`) VALUES
(4, 7, 3),
(5, 6, 2),
(6, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `alert_jobs_salary`
--

CREATE TABLE `alert_jobs_salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `salary_range` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_jobs_salary`
--

INSERT INTO `alert_jobs_salary` (`id`, `salary_range`, `users_id`, `created_at`, `updated_at`) VALUES
(3, 'range2', 5, '2017-02-24 11:30:09', '2017-02-24 11:30:09'),
(4, 'range4', 5, '2017-02-24 11:30:09', '2017-02-24 11:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` int(11) DEFAULT '0',
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `body`, `image`, `created_at`, `updated_at`, `slug`, `total_view`, `user_id`) VALUES
(3, 'android-development', 'One morning, when Gregor Samsa woke from troubled dreams', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What''s happened to me?" he thought. It wasn''t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops</p>', NULL, '2017-02-21 05:02:59', '2017-02-21 05:02:59', 'one-morning-when-gregor-samsa-woke-from-troubled-dreams', 0, 5),
(4, 'android-development', 'he found himself transformed in his bed into a horrible vermin. He lay on his', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on hisarmour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What''s happened to me?" he thought. It wasn''t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops</p>', NULL, '2017-02-21 05:10:09', '2017-03-14 18:11:25', 'he-found-himself-transformed-in-his-bed-into-a-horrible-vermin-he-lay-on-his', 2, 9),
(10, 'wordpress-developer', 'At solmen va esser necessi far uniform grammatica', '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>', NULL, '2017-02-24 16:38:20', '2017-03-14 18:27:11', 'at-solmen-va-esser-necessi-far-uniform-grammatica', 14, 3),
(11, 'wordpress-developer', 'Sometimes you may wish to stop running validation rules on an attribute after the first validation', '<p>Sometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationv</p>', NULL, '2017-03-10 15:30:37', '2017-03-11 04:13:51', 'sometimes-you-may-wish-to-stop-running-validation-rules-on-an-attribute-after-the-first-validation', 4, 3),
(16, 'web-development', 'development environment everything works as expected and the browser clients successfully', '<p>I have a Rails 5 app which uses Action Cable for websocket functionality.</p>\n<p> </p>\n<p>In my development environment everything works as expected and the browser clients successfully connect to the Action Cable channels.</p>\n<p> </p>\n<p>In my production environment Action Cable was working at some point, but then suddenly stopped functioning without any immediate apparent cause.</p>\n<p> </p>\n<p>If I change the RAILS_ENV to production while running the app on my development machine Action Cable works fine. Something seems different when running the app on the actual production machine although the basic environment is the same.</p>\n<p> </p>\n<p>The specific error I see in the Chrome console:</p>\n<p> </p>\n<p>mydomain.com/:1 WebSocket connection to ''wss://mydomain.com/cable'' failed: WebSocket is closed before the connection is established. I get a similar error in other browsers so it doesn''t appear to be browser related. I disabled any adblockers while testing just to be sure they do not interfere.</p>\n<p> </p>\n<p>Development.rb ENV related setup:</p>\n<p> </p>\n<span>config</span><span>.</span><span>action_cable</span><span>.</span><span>url </span><span>=</span> <span>"ws://localhost:#{port}/cable"</span>\n<p>Production.rb ENV related setup</p>\n<p>hostname = ENV.fetch(''HOSTNAME'') port = ENV.fetch(''PORT'') base_url = "#{hostname}:#{port}" config.action_cable.url = "wss://#{hostname}/cable" config.action_cable.allowed_request_origins = ["https://#{base_url}", "https://#{hostname}"] I''ve been using Knex successfully to connect to a backend database. But I want to be able to unit test my code. Is there a way to mock the database connection? I''ve tried using proxyquire but I can''t seem to get it to wor $runReportResult = $client-&gt;runReport($runReportParam); if(isset($runReportResult-&gt;return)){ $runReportData = $runReportResult-&gt;return; $isReportRunningParam["identifier"] = $runReportData; $isReportRunningParam["timeout"] = 10; $isReportRunningResult = $client-&gt;isReportRunning($isReportRunningParam); if(empty($isReportRunningResult-&gt;return)){ $getReportResultParam["identifier"] = $runReportData; $getReportResult = $client-&gt;getReportResult($getReportResultParam); if(isset($getReportResult-&gt;return-&gt;records)){ $getReportResultData = $getReportResult-&gt;return-&gt;records; // data processing stuff removed for clarity } else { echo "Error: " . $runReportData . " returned no data"; } } else { echo "Error: " . $runReportData . " exceeded the report runtime limit"; } } else { echo "Error: " . $runReportParam["reportName"] . " wasn''t found"; } thanks all</p>', NULL, '2017-03-15 09:24:48', '2017-03-15 09:28:19', 'development-environment-everything-works-as-expected-and-the-browser-clients-successfully', 3, 9),
(18, 'java-programming', 'there was no going back to the Blue House. After her father was buried next to her mother', '\n<p>there was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her mother</p>', NULL, '2017-03-15 09:35:34', '2017-03-20 14:54:48', 'there-was-no-going-back-to-the-blue-house-after-her-father-was-buried-next-to-her-mother', 3, 9),
(19, 'java-programming', 'This function is executed each time a user clicks on the "browse" buttons in various dialogs', '<p><img src="http://sujonhera.files.wordpress.com/2014/12/victory-day-of-bangladesh-hd-facebook-cover-photos-14.jpg" alt="" width="851" height="315" /></p>\n\n<p>there was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her mother</p>', NULL, '2017-03-15 09:38:08', '2017-03-21 08:03:50', 'this-function-is-executed-each-time-a-user-clicks-on-the-browse-buttons-in-various-dialogs', 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(5, 'Android Development', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(6, 'Java Programming', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(8, 'Wordpress Developer', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(12, 'laravel php framework', 4, '2017-03-21 04:38:47', '2017-03-21 04:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(1, 7, 2),
(2, 8, 1),
(3, 8, 6),
(4, 9, 3),
(5, 9, 6),
(6, 10, 2),
(7, 10, 3),
(8, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE `article_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tags`
--

INSERT INTO `article_tags` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Php', 3, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(2, 'Html5', 3, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(3, 'CSS3', 5, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(4, 'Php Laravel Framework', 3, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(5, '', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(6, 'Php Codeigniter Framework', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(7, 'Java', 5, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(8, '.Net', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(9, 'Ruby', 5, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(10, 'OOP', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(11, 'Python', 5, '2017-02-21 04:09:09', '2017-02-21 04:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'dalim', '2017-01-30 13:09:00', '2017-01-30 13:09:00'),
(4, 'Desktop Application', 'dalim', '2017-01-30 13:10:33', '2017-01-30 13:10:33'),
(6, 'Web Security', 'dalim', '2017-01-30 13:11:01', '2017-01-30 13:11:01'),
(12, 'theme development', 'dalim', '2017-01-30 13:19:55', '2017-01-30 13:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `approved`, `article_id`, `created_at`, `updated_at`, `category_id`) VALUES
(0, 'iftekhar masud', 'masud@gmail.com', 'going back to the Blue House. After her father was buried next to her mothergoing back to the Blue House. After her father was buried next to her mother', 1, 19, '2017-03-15 16:43:37', '2017-03-15 16:43:37', 'java-programming'),
(25, 'tanvir hasan', 'tanvir@gmail.com', 'Oh, God… one evening in 1988 (29 years ago), I stepped into the bathroom to fetch a hairbrush. The bath was running, so I tried the handle and the door wasn’t locked, and I just walked in.', 1, 6, '2017-01-31 11:27:29', '2017-01-31 11:27:29', 'java-programming'),
(28, 'tanjina akter', 'tanzina@yahoo.com', 'While Bootstrap will apply these styles in all browsers, Internet Explorer 11 and below don''t fully support the disabled attribute on a <fieldset>. Use custom JavaScript to disable the fieldset in these browsers.', 1, 10, '2017-01-31 16:43:33', '2017-01-31 16:43:33', 'wordpress-developer'),
(30, 'Tarek hasan', 'php@yahoo.com', 'A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.', 1, 10, '2017-02-01 07:51:53', '2017-02-01 07:51:53', 'wordpress-developer'),
(32, 'tanjina akter', 'tanjina@yahoo.com', 'Migrations are like version control for your database, allowing your team to easily modify and share the application''s database schema. Migrations are typically paired with Laravel''s schema builder to easily build your application''s database schema. If you have ever had to tell a teammate to manually add a column to their local database schema, you''ve faced the problem that database migrations solve.', 1, 10, '2017-03-10 15:12:17', '2017-03-10 15:12:17', 'wordpress-developer'),
(33, 'sahid khan', 'sahid@gmail.com', 'The Laravel Schema facade provides database agnostic support for creating and manipulating tables across all of Laravel''s supported database systems.', 1, 10, '2017-03-10 15:17:45', '2017-03-10 15:17:45', 'wordpress-developer'),
(37, 'tanjina akter', 'tanjina@yahoo.com', 'yess nyc work', 1, 11, '2017-03-10 17:15:54', '2017-03-10 17:15:54', 'wordpress-developer'),
(38, 'tanjina akter', 'tanjina@yahoo.com', 'He lay on his he found himself transformed in his bed into a horrible vermin. He lay on his he found himself transformed', 1, 5, '2017-03-10 17:21:59', '2017-03-10 17:21:59', 'java-programming'),
(39, 'tanjina akter', 'tanjina@yahoo.com', 'the work is done', 1, 11, '2017-03-11 04:14:11', '2017-03-11 04:14:11', 'wordpress-developer'),
(44, 'iftekhar masud', 'masud@gmail.com', 'yeeeeeeeeeeeeeeeeeeeeeeeeeeeeessssssssssssssss', 1, 19, '2017-03-15 16:46:59', '2017-03-15 16:46:59', 'java-programming'),
(46, 'dalim', 'nazmul@yahoo.com', 'After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere', 1, 19, '2017-03-20 14:54:24', '2017-03-20 14:54:24', 'java-programming'),
(47, 'dalim', 'nazmul@yahoo.com', 'going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father', 1, 18, '2017-03-20 14:55:06', '2017-03-20 14:55:06', 'java-programming'),
(48, 'dalim', 'nazmul@yahoo.com', 'josssssssssssss', 1, 19, '2017-03-21 06:31:11', '2017-03-21 06:31:11', 'java-programming');

-- --------------------------------------------------------

--
-- Table structure for table `edit_profiles`
--

CREATE TABLE `edit_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `profession_category` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edit_profiles`
--

INSERT INTO `edit_profiles` (`id`, `name`, `education`, `bio`, `users_id`, `profession_category`, `created_at`, `updated_at`) VALUES
(6, 'dalim', 'chittagong university', 'never tell a lie', 4, 12, '2017-03-13 14:03:02', '2017-03-13 14:03:02'),
(8, 'tanjina akter', 'Comilla women''s schools', 'early to bad early to rise', 3, 12, '2017-03-13 14:06:52', '2017-03-13 14:06:52'),
(11, 'iftekhar masud', 'BSC in CSE at Diu', 'the sun rise in the east', 9, 12, '2017-03-13 14:42:26', '2017-03-13 14:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `featured_interest_articles`
--

CREATE TABLE `featured_interest_articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `interest_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_interest_articles`
--

INSERT INTO `featured_interest_articles` (`id`, `interest_id`, `users_id`) VALUES
(1, 9, 3),
(2, 4, 3),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `featured_interest_jobs`
--

CREATE TABLE `featured_interest_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `interest_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_interest_question`
--

CREATE TABLE `featured_interest_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `interest_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_interest_question`
--

INSERT INTO `featured_interest_question` (`id`, `interest_id`, `users_id`) VALUES
(4, 11, 5),
(5, 8, 5),
(24, 12, 4),
(25, 11, 4),
(29, 4, 3),
(30, 3, 3),
(31, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 'Php Laravel Framework', 3, '2017-02-01 18:11:06', '2017-02-01 18:11:06'),
(2, 'Php Codeigniter Framework', 5, '2017-02-01 18:12:18', '2017-02-01 18:12:18'),
(3, 'Java Programmers', 3, '2017-02-01 18:12:18', '2017-02-01 18:12:18'),
(4, 'Diu Cse Boys', 7, '2017-02-03 07:56:35', '2017-02-03 07:56:35'),
(12, 'Zend php Framework', 3, '2017-02-11 12:57:06', '2017-02-11 12:57:06'),
(13, 'Basis Institute of IT', 3, '2017-02-11 13:10:16', '2017-02-11 13:10:16'),
(15, 'bangladesh it', 3, '2017-02-11 13:14:35', '2017-02-11 13:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE `groups_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups_users`
--

INSERT INTO `groups_users` (`id`, `group_id`, `users_id`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 13, 3, 'admin', NULL, NULL),
(3, 15, 3, 'admin', NULL, NULL),
(6, 4, 3, 'user', NULL, NULL),
(7, 2, 5, 'user', NULL, NULL),
(8, 15, 5, 'user', NULL, NULL),
(9, 3, 3, 'user', NULL, NULL),
(10, 1, 3, 'user', NULL, NULL),
(15, 2, 3, 'user', NULL, NULL),
(16, 12, 3, 'user', NULL, NULL),
(17, 2, 6, 'user', NULL, NULL),
(18, 13, 4, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_comments`
--

CREATE TABLE `group_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `posts_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_comments`
--

INSERT INTO `group_comments` (`id`, `name`, `email`, `comment`, `approved`, `group_id`, `posts_id`, `created_at`, `updated_at`) VALUES
(1, 'ashraf miah', 'ashraf@yahoo.com', 'I don''t think you''re trying to send HTTP headers as the third argument either. You need to put those things in the session, e.g. something like this', 1, 2, 13, '2017-02-20 04:54:14', '2017-02-20 04:54:14'),
(2, 'tanjina akter', 'tanjina@yahoo.com', 'nice Ashraf!\r\ni think yu can slved it.', 1, 2, 13, '2017-02-20 05:05:42', '2017-02-20 05:05:42'),
(3, 'tanjina akter', 'tanjina@yahoo.com', 'Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox, zebra, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck.', 1, 2, 10, '2017-02-20 05:06:40', '2017-02-20 05:06:40'),
(4, 'tanjina akter', 'tanjina@yahoo.com', 'avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself', 1, 1, 6, '2017-02-20 05:07:57', '2017-02-20 05:07:57'),
(5, 'tanjina akter', 'tanjina@yahoo.com', 'great works!', 1, 1, 6, '2017-02-20 05:08:21', '2017-02-20 05:08:21'),
(7, 'tanjina akter', 'tanjina@yahoo.com', 'this is nice work and best site ever i seen', 1, 13, 14, '2017-03-11 04:12:30', '2017-03-11 04:12:30'),
(8, 'tanjina akter', 'tanjina@yahoo.com', 'i know it', 1, 12, 15, '2017-03-12 04:36:14', '2017-03-12 04:36:14'),
(9, 'iftekhar masud', 'masud@gmail.com', 'nly if the window is this size when loaded. When I re-size the window the appended divs don''t get removed or added which is what I need.', 1, 4, 16, '2017-03-15 16:47:55', '2017-03-15 16:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `group_posts`
--

CREATE TABLE `group_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_posts`
--

INSERT INTO `group_posts` (`id`, `body`, `user_id`, `created_at`, `updated_at`, `group_id`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', 3, '2017-02-08 12:08:59', '2017-02-08 12:08:59', 3),
(4, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', 3, '2017-02-08 12:19:24', '2017-02-08 12:19:24', 3),
(5, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', 3, '2017-02-08 12:19:46', '2017-02-08 12:19:46', 3),
(6, '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee</p>', 3, '2017-02-08 12:54:50', '2017-02-08 12:54:50', 1),
(7, '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>', 3, '2017-02-08 12:55:11', '2017-02-08 12:55:11', 1),
(8, '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quLi Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, qu</p>', 3, '2017-02-08 12:56:32', '2017-02-08 12:56:32', 1),
(10, '<p>The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim. Sex-charged fop blew my junk TV quiz. How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! "Now fax quiz Jack!" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox, zebra, and my wolves quack! Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch "Jeopardy!", Alex Trebek''s fun TV quiz game. Woven silk pyjamas exchanged for blue quartz. Brawny gods just</p>', 5, '2017-02-08 12:57:54', '2017-02-08 12:57:54', 2),
(11, '<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>', 5, '2017-02-11 09:40:31', '2017-02-11 09:40:31', 2),
(12, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 5, '2017-02-13 13:03:59', '2017-02-13 13:03:59', 15),
(13, '<p>  <span>2</span> <a title="This answer is not useful">down vote</a> <span>accepted</span></p>\n \n\n<div>\n<p>The headers should be the third argument. The second is the HTTP status code. Hence, Laravel is complaining that the array you''re passing isn''t convertible into an HTTP status code.</p>\n<p>Add a valid status code (e.g. 200 for "OK") as the second argument, and you should be fine. :)</p>\n<p>Edit: On second thought, I don''t think you''re trying to send HTTP headers as the third argument either. You need to put those things in the session, e.g. something like this</p>\n</div>\n\n<p><span>2</span> <a title="This answer is not useful">down vote</a> <span>accepted</span></p>\n \n\n<div>\n<p>The headers should be the third argument. The second is the HTTP status code. Hence, Laravel is complaining that the array you''re passing isn''t convertible into an HTTP status code.</p>\n<p>Add a valid status code (e.g. 200 for "OK") as the second argument, and you should be fine. :)</p>\n<p>Edit: On second thought, I don''t think you''re trying to send HTTP headers as the third argument either. You need to put those things in the session, e.g. something like this</p>\n</div>\n\n', 5, '2017-02-20 04:53:52', '2017-02-20 04:53:52', 2),
(14, 'Welcome to the Dummy Text Generator!\n<p style="color:#666666;font-family:Verdana, Geneva, Helvetica, sans-serif;font-size:11px;">This handy tool helps you create dummy text for all your layout needs.</p>\n<p style="color:#666666;font-family:Verdana, Geneva, Helvetica, sans-serif;font-size:11px;">We are gradually adding new functionality and we welcome your suggestions and feedback.</p>\n<p style="color:#666666;font-family:Verdana, Geneva, Helvetica, sans-serif;font-size:11px;">Please feel free to send us any additional dummy texts.</p>\nWelcome to the Dummy Text Generator!\n<p style="color:#666666;font-family:Verdana, Geneva, Helvetica, sans-serif;font-size:11px;">This handy tool helps you create dummy text for all your layout needs.</p>\n<p style="color:#666666;font-family:Verdana, Geneva, Helvetica, sans-serif;font-size:11px;">We are gradually adding new functionality and we welcome your suggestions and feedback.</p>\n<p style="color:#666666;font-family:Verdana, Geneva, Helvetica, sans-serif;font-size:11px;">Please feel free to send us any additional dummy texts.</p>', 3, '2017-03-11 04:11:58', '2017-03-11 04:11:58', 13),
(16, '<p>I''ve appended some divs onto a nav with jQuery. These are set so they append if the window is bigger than 980px.</p>\n<p>I would like these appended divs to be removed if the window is less than 980px. The jQuery I''m using in the example works, but only if the window is this size when loaded. When I re-size the window the appended divs don''t get removed or added which is what I need.</p>\n<p>I have a codepen here: <a href="http://codepen.io/emilychews/pen/jBGGBB">http://codepen.io/emilychews/pen/jBGGBB</a></p>', 9, '2017-03-15 16:47:34', '2017-03-15 16:47:34', 4);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `binefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `activities` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dedline` date NOT NULL,
  `salary3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `users_id`, `name`, `company_title`, `location`, `email`, `jobs_type`, `salary1`, `salary2`, `qualification`, `skill`, `binefits`, `activities`, `description`, `created_at`, `updated_at`, `category_id`, `duration`, `slug`, `dedline`, `salary3`) VALUES
(1, 3, 'laravel php programmer', 'bangladesh it', 'Bagerhat', 'tanjina@yahoo.com', 'Full Time', '50000', NULL, '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don''t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don''t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don''t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don''t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don''t need remember to change the date format every time you need display from_date column.</span></p>', '2017-03-22 07:59:36', '2017-03-22 07:59:36', 1, 'per year', '', '2017-03-10', NULL),
(2, 3, 'The WordPress Developer is responsible for developing', 'softtech it', 'Chittagong', 'tanjina@yahoo.com', 'Full Time', '50000', NULL, '<p>The WordPress Developer is responsible for developing and supporting the NewsCred WordPress offering. He/she is required to work the night shift from 7:00 PM to 3:00 AM in order to collaborate with client services and product teams in New York.The WordPress Developer will be able to develop custom, often complex WordPress-based solutions along with general PHP framework-based solutions. Supports current client websites by providing technical support.The WordPress Developer is responsible for developing and supporting the NewsCred WordPress offering. He/she is required to work the night shift from 7:00 PM to 3:00 AM in order to collaborate with client services and product teams in New York.The WordPress Developer will be able to develop custom, often complex WordPress-based solutions along with general PHP framework-based solutions. Supports current client websites by providing technical support.</p>', '<p>The WordPress Developer is responsible for developing and supporting the NewsCred WordPress offering. He/she is required to work the night shift from 7:00 PM to 3:00 AM in order to collaborate with client services and product teams in New York.The WordPress Developer will be able to develop custom, often complex WordPress-based solutions along with general PHP framework-based solutions. Supports current client websites by providing technical support.The WordPress Developer is responsible for developing and supporting the NewsCred WordPress offering. He/she is required to work the night shift from 7:00 PM to 3:00 AM in order to collaborate with client services and product teams in New York.The WordPress Developer will be able to develop custom, often complex WordPress-based solutions along with general PHP framework-based solutions. Supports current client websites by providing technical support.</p>', '<p>The WordPress Developer is responsible for developing and supporting the NewsCred WordPress offering. He/she is required to work the night shift from 7:00 PM to 3:00 AM in order to collaborate with client services and product teams in New York.The WordPress Developer will be able to develop custom, often complex WordPress-based solutions along with general PHP framework-based solutions. Supports current client websites by providing technical support.</p>', '<p>The WordPress Developer is responsible for developing and supporting the NewsCred WordPress offering. He/she is required to work the night shift from 7:00 PM to 3:00 AM in order to collaborate with client services and product teams in New York.The WordPress Developer will be able to develop custom, often complex WordPress-based solutions along with general PHP framework-based solutions. Supports current client websites by providing technical support.</p>', '<p>The WordPress Developer is responsible for developing and supporting the NewsCred WordPress offering. He/she is required to work the night shift from 7:00 PM to 3:00 AM in order to collaborate with client services and product teams in New York.The WordPress Developer will be able to develop custom, often complex WordPress-based solutions along with general PHP framework-based solutions. Supports current client websites by providing technical support.</p>', '2017-03-22 08:02:03', '2017-03-22 08:02:03', 3, 'per year', '', '2017-03-21', NULL),
(3, 10, 'Check whether an array is empty', 'we devs it', 'Barisal', 'tanveerhasan1998@gmail.com', 'Full Time', '55000', NULL, '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it''s not empty I show a div.</p>\n<p>This is what I''ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it''s not empty I show a div.</p>\n<p>This is what I''ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it''s not empty I show a div.</p>\n<p>This is what I''ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it''s not empty I show a div.</p>\n<p>This is what I''ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it''s not empty I show a div.</p>\n<p>This is what I''ve tried but it gives me a syntax error</p>', '2017-03-22 13:48:26', '2017-03-22 13:48:26', 10, 'per year', '', '2017-03-25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_applies`
--

CREATE TABLE `job_applies` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobs_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applies`
--

INSERT INTO `job_applies` (`id`, `jobs_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 10, '2017-03-22 13:06:57', '2017-03-22 13:06:57'),
(2, 1, 10, '2017-03-22 13:33:33', '2017-03-22 13:33:33'),
(3, 3, 10, '2017-03-22 13:52:23', '2017-03-22 13:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounting', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(2, 'Admin & Clerical', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(3, 'Automotive', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(4, 'Banking', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(5, 'Biotech', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(6, 'Broadcast - Journalism', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(7, 'Business Development', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(8, 'Construction', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(9, 'Consultant', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(10, 'Customer Service', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(11, 'Design', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(12, 'Education - Teaching', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(13, 'Engineering', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(16, 'Marketing', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(18, 'Legal Admin', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(20, 'Information Technology', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(21, 'Human Resources', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(25, 'Data Entry', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(26, 'Database Administrator', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `job_levels`
--

CREATE TABLE `job_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_levels`
--

INSERT INTO `job_levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Entry level', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(2, 'Experienced', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(3, 'Management', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(4, 'Senior executive', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(5, 'Internship', '2017-02-23 07:40:22', '2017-02-23 07:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', NULL, NULL),
(2, 'Comilla', NULL, NULL),
(3, 'chandpur', NULL, NULL),
(4, 'Sylhet', NULL, NULL),
(5, 'Rajshahi', NULL, NULL),
(6, 'Bagerhat', NULL, NULL),
(7, 'Bandarban', NULL, NULL),
(8, 'Barguna', NULL, NULL),
(9, 'Rajshahi', NULL, NULL),
(10, 'Barisal', NULL, NULL),
(11, 'Bhola', NULL, NULL),
(12, 'Bogra', NULL, NULL),
(13, 'Rajshahi', NULL, NULL),
(14, 'Brahmanbaria', NULL, NULL),
(15, 'Chittagong', NULL, NULL),
(16, 'Chuadanga', NULL, NULL),
(17, 'Rajshahi', NULL, NULL),
(18, 'Cox''s Bazar', NULL, NULL),
(19, 'Dinajpur', NULL, NULL),
(20, 'Faridpur', NULL, NULL),
(21, 'Rajshahi', NULL, NULL),
(22, 'Feni', NULL, NULL),
(23, 'Gaibandha', NULL, NULL),
(24, 'Gazipur', NULL, NULL),
(25, 'Gopalganj', NULL, NULL),
(26, 'Habiganj', NULL, NULL),
(27, 'Jaipurhat', NULL, NULL),
(28, 'Jamalpur', NULL, NULL),
(29, 'Jessore', NULL, NULL),
(30, 'Jhalakati', NULL, NULL),
(31, 'Jhenaidah', NULL, NULL),
(32, 'Khagrachari', NULL, NULL),
(33, 'Khulna', NULL, NULL),
(34, 'Kishoreganj', NULL, NULL),
(35, 'Kurigram', NULL, NULL),
(36, 'Kushtia', NULL, NULL),
(37, 'Lakshmipur', NULL, NULL),
(38, 'Lalmonirhat', NULL, NULL),
(39, 'Madaripur', NULL, NULL),
(40, 'Magura', NULL, NULL),
(41, 'Manikganj', NULL, NULL),
(42, 'Meherpur', NULL, NULL),
(43, 'Moulvibazar', NULL, NULL),
(44, 'Munshiganj', NULL, NULL),
(45, 'Mymensingh', NULL, NULL),
(46, 'Naogaon', NULL, NULL),
(47, 'Narail', NULL, NULL),
(48, 'Narayanganj', NULL, NULL),
(49, 'Narsingdi', NULL, NULL),
(50, 'Natore', NULL, NULL),
(51, 'Nawabganj', NULL, NULL),
(52, 'Netrakona', NULL, NULL),
(53, 'Nilphamari', NULL, NULL),
(54, 'Noakhali', NULL, NULL),
(55, 'Pabna', NULL, NULL),
(56, 'Panchagarh', NULL, NULL),
(57, 'Parbattya Chattagram', NULL, NULL),
(58, 'Patuakhali', NULL, NULL),
(59, 'Pirojpur', NULL, NULL),
(60, 'Rajbari', NULL, NULL),
(61, 'Rangpur', NULL, NULL),
(62, 'Satkhira', NULL, NULL),
(63, 'Shariatpur', NULL, NULL),
(64, 'Sherpur', NULL, NULL),
(65, 'Sirajganj', NULL, NULL),
(66, 'Sunamganj', NULL, NULL),
(67, 'Tangail', NULL, NULL),
(68, 'Thakurgaon', NULL, NULL);

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
(3, '2017_01_26_195516_create_categories_table', 1),
(4, '2017_01_26_195540_create_tags_table', 1),
(5, '2017_01_29_144138_entrust_setup_tables', 1),
(6, '2017_01_30_201925_create_articles_table', 2),
(7, '2017_01_30_203114_create_post_tag_table', 2),
(8, '2017_01_30_234802_add_createdBy_column', 3),
(9, '2017_01_31_004736_add_slug_article_table', 4),
(10, '2017_01_31_124626_Add_total_view_column', 5),
(11, '2017_01_31_150433_create_comments_table', 6),
(12, '2017_01_31_150447_create_replays_table', 6),
(13, '2017_02_01_131112_create_question_table', 7),
(14, '2017_02_01_131216_create_question_tag_table', 7),
(15, '2017_02_01_133444_add_slug_question_table', 8),
(16, '2017_02_01_134159_add_view_createdby_question_table', 9),
(17, '2017_02_01_164158_create_question_comments_table', 10),
(18, '2017_02_01_175127_create_question_replies_table', 11),
(19, '2017_02_01_235839_create_groups_table', 12),
(20, '2017_02_02_131113_create_jobs_table', 13),
(21, '2017_02_03_092019_create_location_table', 13),
(22, '2017_02_03_144133_Create_jobs__table', 14),
(23, '2017_02_03_154238_create_job__categories_table', 15),
(24, '2017_02_03_184712_Add_slug_jobs_table', 16),
(25, '2017_02_03_185225_Add_dedline_jobs_table', 17),
(26, '2017_02_03_194730_Add_salary3_jobs_table', 18),
(29, '2017_02_08_074118_create_group_posts_table', 19),
(30, '2017_02_08_173819_add_group_id_group_post_table', 19),
(31, '2017_02_11_184345_create_all_users_join_table', 20),
(32, '2017_02_20_094151_create_group_comments_table', 21),
(33, '2017_02_21_095121_create_article_categories_table', 22),
(34, '2017_02_21_100256_create_article_tags_table', 23),
(36, '2017_02_21_112538_create_articles_post_tags_table', 24),
(43, '2017_02_21_140009_Add_Preference_Question', 25),
(44, '2017_02_21_140034_Add_Preference_Articles', 25),
(45, '2017_02_21_140047_Add_Preference_Jobs', 25),
(46, '2017_02_22_183925_create_alert_job_category', 26),
(47, '2017_02_23_133121_create_job_levels_table', 27),
(48, '2017_02_23_141027_Add_alert_job_level_id', 28),
(50, '2017_02_23_203605_Add_alert_job_level_id_save', 29),
(51, '2017_02_24_144151_Add_timestump_in_alert_salary', 30),
(53, '2017_02_24_172648_Add_timestump_in_alert_hours', 31),
(54, '2017_03_10_204808_add_users_id_to_articles_table', 32),
(56, '2017_03_11_103310_create_save_jobs_table', 33),
(57, '2017_03_13_180821_create_edit_profiles_table', 34),
(58, '2017_03_13_185347_create_user_skill_table', 35),
(59, '2017_03_15_171549_change_question_tag_type_column', 36),
(62, '2017_03_20_202331_add_category_id_arti_comment_table', 37),
(63, '2017_03_20_203948_add_category_id_articlesss_comment_table', 38),
(64, '2017_03_20_210526_add_category_id_questions_comment_table', 39),
(65, '2017_03_21_083417_add_category_id_in_question_tag', 40),
(66, '2017_03_22_185307_create_job_applies_table', 41);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-post', 'Create Post', 'i create a post', '2017-01-29 09:49:41', '2017-01-29 09:49:41'),
(2, 'edit-post', 'Edit Post', 'i can edit a post', '2017-01-29 09:49:42', '2017-01-29 09:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` int(255) NOT NULL DEFAULT '0',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `title`, `body`, `image`, `created_at`, `updated_at`, `slug`, `total_view`, `created_by`) VALUES
(1, 'web-development', 'whether the migration will be creating a new table', '<p>A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.</p>\n<p> </p>\n<p>Within both of these methods you may use the Laravel schema builder to expressively create and modify tables. To learn about all of the methods available on the Schema builder, <a href="https://laravel.com/docs/5.4/migrations#creating-tables">check out its documentation</a>. For example, this migration example creates a flights table:</p>\n<p> </p>\n<p>A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.</p>\n<p> </p>\n<p>Within both of these methods you may use the Laravel schema builder to expressively create and modify tables. To learn about all of the methods available on the Schema builder, <a href="https://laravel.com/docs/5.4/migrations#creating-tables">check out its documentation</a>. For example, this migration example creates a flights table:</p>\n<p> </p>', NULL, '2017-02-01 07:44:17', '2017-03-15 16:35:03', 'whether-the-migration-will-be-creating-a-new-table', 18, '3'),
(7, 'web-security', 'like these sweet mornings of spring which I enjoy with my whole heart', '<p> A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>', NULL, '2017-02-24 16:28:43', '2017-03-19 09:47:55', 'like-these-sweet-mornings-of-spring-which-i-enjoy-with-my-whole-heart', 32, '3'),
(12, 'web-development', 'Remove-Item Powershell not working in Windows Temp folder', '<p style="text-align:left;">I have a server with an incredibly overloaded Windows/Temp folder. So, I wanted to run a simple Powershell script to clear it out (I''m talking tens of thousands of .tmp and .bak files that are over a year old). Below is the code: <br />Remove-Item C:\\Windows\\Temp\\* -include .txt,.bak,.tmp -whatif <br /> I tried removing the whatif as well (I just had that in there because I was playing around with some stuff) and nothing happens. It''s so simple I''m almost definitely missing something simple. <br /> Thanks in advance</p>', NULL, '2017-03-14 17:16:44', '2017-03-21 06:29:35', 'remove-item-powershell-not-working-in-windows-temp-folder', 4, '5'),
(18, 'desktop-application', 'After installing Laravel, you should configure your web server''s document', '<p>After installing Laravel, you should configure your web server''s document / web root to be the <span>public</span> directory. The index<span>.</span>php in this directory serves as the front controller for all HTTP requests entering your application.</p>\n<h4>Configuration Files</h4>\n<p>All of the configuration files for the Laravel framework are stored in the config directory. Each option is documented, so feel free to look through the files and get familiar with the options available to you.</p>\n<h4>Directory Permissions</h4>\n<p>After installing Laravel, you may need to configure some permissions. Directories within the storage and the bootstrap<span>/</span>cache directories should be writable by your web server or Laravel will not run. If you are using the <a href="https://laravel.com/docs/5.4/homestead">Homestead</a> virtual machine, these permissions should already be set.</p>\n<h4>Application Key</h4>\n<p>The next thing you should do after installing Laravel is set your application key to a random string. If you installed Laravel via Composer or the Laravel installer, this key has already been set for you by the php artisan key<span>:</span>generate command.</p>\n<p>Typically, this string should be 32 characters long. The key can be set in the <span>.</span>env environment file. If you have not renamed the <span>.</span>env<span>.</span>example file to <span>.</span>env, you should do that now. <strong>If the application key is not set, your user sessions and other encrypted data will not be secure!</strong></p>', NULL, '2017-03-21 06:49:09', '2017-03-21 07:03:30', 'after-installing-laravel-you-should-configure-your-web-servers-document', 2, '4');

-- --------------------------------------------------------

--
-- Table structure for table `question_comments`
--

CREATE TABLE `question_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_comments`
--

INSERT INTO `question_comments` (`id`, `name`, `email`, `comment`, `approved`, `question_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'sourav dash', 'dalim@gmail.com', 'Some migration operations are destructive, which means they may cause you to lose data. In order to protect you from running these commands against your production database,', 1, 1, '2017-02-01 11:49:01', '2017-02-01 11:49:01', 'web-development'),
(2, 'sourav dash', 'dalim@gmail.com', 'Some migration operations are destructive, which means they may cause you to lose data. In order to protect you from running these commands against your production database,', 1, 1, '2017-02-01 11:54:27', '2017-02-01 11:54:27', 'web-development'),
(3, 'sourav dash', 'dalim@gmail.com', 'Some migration operations are destructive, which means they may cause you to lose data. In order to protect you from running these commands against your production database,', 1, 1, '2017-02-01 11:58:03', '2017-02-01 11:58:03', 'web-development'),
(4, 'masud vai', 'masud@yahoo.com', 'A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.', 1, 1, '2017-02-01 12:17:01', '2017-02-01 12:17:01', 'web-development'),
(6, 'nazmul hasan dalim', 'nhdalim@yahoo.com', 'among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath', 1, 7, '2017-03-10 16:36:15', '2017-03-10 16:36:15', 'web-security'),
(26, 'dalim', 'nazmul@yahoo.com', 'nice comments for test', 1, 12, '2017-03-21 06:30:09', '2017-03-21 06:30:09', 'web-development'),
(27, 'dalim', 'nazmul@yahoo.com', 'nice comments for test', 1, 12, '2017-03-21 06:30:48', '2017-03-21 06:30:48', 'web-development'),
(28, 'dalim', 'nazmul@yahoo.com', 'nice job', 1, 18, '2017-03-21 06:51:48', '2017-03-21 06:51:48', 'desktop-application');

-- --------------------------------------------------------

--
-- Table structure for table `question_replays`
--

CREATE TABLE `question_replays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `question_comment_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_replays`
--

INSERT INTO `question_replays` (`id`, `name`, `email`, `comment`, `approved`, `question_comment_id`, `created_at`, `updated_at`) VALUES
(1, 'dalim khan', 'dalimkhan@gmail.com', 'If you would like to specify a custom output path for the generated migration, you may use the --path option when executing the make:migration command. The given path should be relative to your application''s base path.', 1, 3, '2017-02-01 12:17:33', '2017-02-01 12:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `question_tag`
--

CREATE TABLE `question_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `tag_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_tag`
--

INSERT INTO `question_tag` (`id`, `question_id`, `tag_id`, `category_id`) VALUES
(1, 1, 'php-developer', 'web-development'),
(2, 1, 'javascript', 'web-development'),
(3, 1, 'codeigniter', 'web-development'),
(16, 7, 'oracle', 'web-security'),
(17, 7, 'python', 'web-security'),
(18, 7, 'java', 'web-security'),
(19, 7, 'mysql', 'web-security'),
(30, 12, 'oracle', 'web-development'),
(31, 12, 'java', 'web-development'),
(32, 12, 'javascript', 'web-development'),
(47, 18, 'c', 'desktop-application'),
(48, 18, 'javascript', 'desktop-application');

-- --------------------------------------------------------

--
-- Table structure for table `replays`
--

CREATE TABLE `replays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replays`
--

INSERT INTO `replays` (`id`, `name`, `email`, `comment`, `approved`, `comment_id`, `created_at`, `updated_at`) VALUES
(9, 'iftekhar masud', 'masud@yahoo.com', 'Now, when a request matches the specified route URI, the show method on the UserController class will be executed. Of course, the route parameters will also be passed to the method.', 1, 24, '2017-01-31 11:21:30', '2017-01-31 11:21:30'),
(10, 'iftekhar masud', 'masud@yahoo.com', 'Now, when a request matches the specified route URI, the show method on the UserController class will be executed. Of course, the route parameters will also be passed to the method.', 1, 24, '2017-01-31 11:21:46', '2017-01-31 11:21:46'),
(11, 'iftekhar masud', 'masud@yahoo.com', 'Now, when a request matches the specified route URI, the show method on the UserController class will be executed. Of course, the route parameters will also be passed to the method.', 1, 24, '2017-01-31 11:23:29', '2017-01-31 11:23:29'),
(12, 'kamrul hasan', 'kamrul@yahoo.com', 'yesssssssss', 1, 24, '2017-01-31 11:24:10', '2017-01-31 11:24:10'),
(13, 'nh dalim', 'dalimkhan@gmail.com', 'Rendering problems can arise when you have dozens of inline labels within a narrow container, each containing its own inline-block element (like an icon). The way around this is setting display: inline-block;. For context and an example, see #13219.', 1, 25, '2017-01-31 11:28:06', '2017-01-31 11:28:06'),
(14, 'masud rana', 'masud@yahoo.com', 'Get the lowdown on the key pieces of Bootstrap''s infrastructure, including our approach to better, faster, stronger web development.Get the lowdown on the key pieces of Bootstrap''s infrastructure, including our approach to better, faster, stronger web development.', 1, 28, '2017-01-31 16:46:58', '2017-01-31 16:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'project owner', 'he is project owner', '2017-01-29 09:38:14', '2017-01-29 09:38:14'),
(2, 'admin', 'use administration', 'he is project owner', '2017-01-29 09:46:47', '2017-01-29 09:46:47'),
(3, 'user', 'normal user', 'user genaral', '2017-01-29 09:48:01', '2017-01-29 09:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(2, 3),
(3, 3),
(4, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `save_jobs`
--

CREATE TABLE `save_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jobs_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `save_jobs`
--

INSERT INTO `save_jobs` (`id`, `user_id`, `jobs_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 10, 2, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'php-developer', 'dalim', '2017-01-30 11:07:50', '2017-01-30 11:28:27'),
(4, 'oracle', 'dalim', '2017-01-30 11:55:55', '2017-01-30 11:57:09'),
(5, 'java', 'dalim', '2017-01-30 11:56:04', '2017-01-30 11:56:59'),
(6, 'python', 'dalim', '2017-01-30 11:56:11', '2017-01-30 11:56:11'),
(7, 'c++', 'dalim', '2017-01-30 11:56:20', '2017-01-30 11:56:48'),
(8, 'c', 'dalim', '2017-01-30 11:56:25', '2017-01-30 11:56:25'),
(9, 'codeigniter', 'dalim', '2017-01-30 11:57:23', '2017-01-30 11:57:23'),
(10, 'laravel', 'dalim', '2017-01-30 11:57:32', '2017-01-30 11:57:32'),
(11, 'javascript', 'dalim', '2017-01-30 11:57:41', '2017-01-30 11:57:41'),
(12, 'html', 'dalim', '2017-01-30 11:57:47', '2017-01-30 11:57:47'),
(13, 'css', 'dalim', '2017-01-30 11:57:56', '2017-01-30 11:57:56'),
(15, 'css 3', 'dalim', '2017-01-30 11:58:18', '2017-01-30 11:58:18'),
(16, 'mysql', 'dalim', '2017-01-30 11:58:25', '2017-01-30 11:58:25'),
(17, 'jump', 'dalim', '2017-01-30 11:58:32', '2017-01-30 11:58:32'),
(18, 'jquery', 'dalim', '2017-01-30 11:58:49', '2017-01-30 11:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'dalim vai', 'dalim66@yahoo.com', '$2y$10$b/CGlqjPKile21EPSgCkE.ufLm8HC/OEqFoqgebobWNHKpjuM4oKq', 'B8e3NjWsmzxAkbGFzHFegJwjL9k8pMHYFYHGGofaMAms64So6J5yb7t7Ahka', '2017-01-29 10:17:56', '2017-01-29 10:17:56'),
(3, 'tanjina akter', 'tanjina@yahoo.com', '$2y$10$2t3y8Lo6BIXy7d0vOxuzPeEEkIXb043JAQMc4wh2Bzbdx.K.1GwSG', '4QCKDjWaNR1SioTvuaiJMHPB0OLtjBl61jjtbZ0YYcs1D3ex43zZcN5ze6ao', '2017-01-29 10:18:53', '2017-01-29 10:18:53'),
(4, 'dalim', 'nazmul@yahoo.com', '$2y$10$z3OiMFYisKbTkBfDjT16NuqiYWxHUH1Ww59txe9VPbcD8l5FHVUGO', '5hBirWl4d6gFzmaFfd6Vm70mgTynWYpBmKMrS559ZGQikg7Wdb6wd3HWyU0r', '2017-01-29 10:20:08', '2017-01-29 10:20:08'),
(5, 'ashraf miah', 'ashraf@yahoo.com', '$2y$10$X6pGb7bnEXT6QRA2JBXtjO88mRBmJYOaUX51d9Dj2nG8Ze1Lq.1wG', 'CpbDj9F34aaPq5vTYZlCK9yjSvFR1WDFs8QUx0y7PpJeX1HWWa9rMrcmFE3B', '2017-01-29 16:01:55', '2017-01-29 16:01:55'),
(6, 'manjurul islam rana', 'hhh@yahoo.com', '$2y$10$gJLYbCqCRlBJ9M8oUiCblOR4KQ.bSGPF9vXzA4CI2/e3FWoI2KY6G', 'xIjis6oHXiMPkZMO1L1WGkDdmBE5yAvVbl9hbjBmbCKAnkBCunkveB6azIeV', '2017-01-31 15:26:27', '2017-01-31 15:26:27'),
(7, 'Codeigniter', 'codeig@yahoo.com', '$2y$10$3FxRjvDLFSNehsVdWQ1OPOCQoNvxtYRYB2nElHbNEQA4r3IVWaEvG', 'YZX0xM2cbGEWRZGB2WKhuSyHkmsLyxIMgWAPh2MPwkC8PcG0dfO3mcBwjUqu', '2017-01-31 15:29:17', '2017-01-31 15:29:17'),
(8, 'kagin', 'kagin@yahoo.com', '$2y$10$raXHOtgLtcuH9rl05UnOz.p6ZxtDRtvTxKirojSrBPGlORmhdioqe', 'dqL5ScGA2oYNx6mVuzqbpm9aKbu4ui9AqgSiuMKk4mo0T4aYP8dGq5S4rRgZ', '2017-01-31 15:31:03', '2017-01-31 15:31:03'),
(9, 'iftekhar masud', 'masud@gmail.com', '$2y$10$q/f4T576/kprHUVqAGQesOLffUgJFQ.krI6FzImmAwAOxIGN37FqK', 'iCsruWd3EQyr0b3wWocLUeVaJcLvUhicgpSVq4vEublne9U6SYHzBR5t0l4A', '2017-01-31 15:59:56', '2017-01-31 15:59:56'),
(10, 'tanveer', 'tanveerhasan1998@gmail.com', '$2y$10$5p4/GWAAacF4FIXxmIAJaONU5vUy79LXJzn3nlrDsY0jq2Sq7mzma', NULL, '2017-03-22 13:00:50', '2017-03-22 13:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `users_skill`
--

CREATE TABLE `users_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_skill`
--

INSERT INTO `users_skill` (`id`, `user_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(15, 4, 8, NULL, NULL),
(16, 4, 7, NULL, NULL),
(17, 4, 6, NULL, NULL),
(21, 3, 18, NULL, NULL),
(22, 3, 15, NULL, NULL),
(23, 3, 13, NULL, NULL),
(24, 3, 12, NULL, NULL),
(25, 3, 11, NULL, NULL),
(26, 9, 11, NULL, NULL),
(27, 9, 10, NULL, NULL),
(28, 9, 9, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert_jobs_category`
--
ALTER TABLE `alert_jobs_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_jobs_category_jobscategory_id_foreign` (`jobscategory_id`),
  ADD KEY `alert_jobs_category_users_id_foreign` (`users_id`);

--
-- Indexes for table `alert_jobs_hour`
--
ALTER TABLE `alert_jobs_hour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_jobs_hour_users_id_foreign` (`users_id`);

--
-- Indexes for table `alert_jobs_level`
--
ALTER TABLE `alert_jobs_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_jobs_level_users_id_foreign` (`users_id`),
  ADD KEY `alert_jobs_level_alert_level_id_foreign` (`alert_level_id`);

--
-- Indexes for table `alert_jobs_level_save`
--
ALTER TABLE `alert_jobs_level_save`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_jobs_level_save_users_id_foreign` (`users_id`);

--
-- Indexes for table `alert_jobs_locations`
--
ALTER TABLE `alert_jobs_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_jobs_locations_location_id_foreign` (`location_id`),
  ADD KEY `alert_jobs_locations_users_id_foreign` (`users_id`);

--
-- Indexes for table `alert_jobs_salary`
--
ALTER TABLE `alert_jobs_salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_jobs_salary_users_id_foreign` (`users_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_categories_created_by_foreign` (`created_by`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tags_created_by_foreign` (`created_by`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Indexes for table `edit_profiles`
--
ALTER TABLE `edit_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edit_profiles_users_id_foreign` (`users_id`),
  ADD KEY `edit_profiles_profession_category_foreign` (`profession_category`);

--
-- Indexes for table `featured_interest_articles`
--
ALTER TABLE `featured_interest_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_interest_articles_interest_id_foreign` (`interest_id`),
  ADD KEY `featured_interest_articles_users_id_foreign` (`users_id`);

--
-- Indexes for table `featured_interest_jobs`
--
ALTER TABLE `featured_interest_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_interest_jobs_interest_id_foreign` (`interest_id`),
  ADD KEY `featured_interest_jobs_users_id_foreign` (`users_id`);

--
-- Indexes for table `featured_interest_question`
--
ALTER TABLE `featured_interest_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_interest_question_interest_id_foreign` (`interest_id`),
  ADD KEY `featured_interest_question_users_id_foreign` (`users_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_users_id_foreign` (`users_id`);

--
-- Indexes for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_users_group_id_foreign` (`group_id`),
  ADD KEY `groups_users_users_id_foreign` (`users_id`);

--
-- Indexes for table `group_comments`
--
ALTER TABLE `group_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_comments_group_id_foreign` (`group_id`),
  ADD KEY `group_comments_posts_id_foreign` (`posts_id`);

--
-- Indexes for table `group_posts`
--
ALTER TABLE `group_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_posts_user_id_foreign` (`user_id`),
  ADD KEY `group_posts_group_id_foreign` (`group_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_users_id_foreign` (`users_id`);

--
-- Indexes for table `job_applies`
--
ALTER TABLE `job_applies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applies_jobs_id_foreign` (`jobs_id`),
  ADD KEY `job_applies_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_levels`
--
ALTER TABLE `job_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_comments`
--
ALTER TABLE `question_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_comments_question_id_foreign` (`question_id`);

--
-- Indexes for table `question_replays`
--
ALTER TABLE `question_replays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_replays_comment_id_foreign` (`question_comment_id`);

--
-- Indexes for table `question_tag`
--
ALTER TABLE `question_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_tag_question_id_foreign` (`question_id`);

--
-- Indexes for table `replays`
--
ALTER TABLE `replays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replays_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `save_jobs`
--
ALTER TABLE `save_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `save_jobs_user_id_foreign` (`user_id`),
  ADD KEY `save_jobs_jobs_id_foreign` (`jobs_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_skill`
--
ALTER TABLE `users_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_skill_user_id_foreign` (`user_id`),
  ADD KEY `users_skill_skill_id_foreign` (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert_jobs_category`
--
ALTER TABLE `alert_jobs_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `alert_jobs_hour`
--
ALTER TABLE `alert_jobs_hour`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `alert_jobs_level`
--
ALTER TABLE `alert_jobs_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `alert_jobs_level_save`
--
ALTER TABLE `alert_jobs_level_save`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `alert_jobs_locations`
--
ALTER TABLE `alert_jobs_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `alert_jobs_salary`
--
ALTER TABLE `alert_jobs_salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `article_tags`
--
ALTER TABLE `article_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `edit_profiles`
--
ALTER TABLE `edit_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `featured_interest_articles`
--
ALTER TABLE `featured_interest_articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `featured_interest_jobs`
--
ALTER TABLE `featured_interest_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `featured_interest_question`
--
ALTER TABLE `featured_interest_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `groups_users`
--
ALTER TABLE `groups_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `group_comments`
--
ALTER TABLE `group_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `group_posts`
--
ALTER TABLE `group_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `job_applies`
--
ALTER TABLE `job_applies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `job_levels`
--
ALTER TABLE `job_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `question_comments`
--
ALTER TABLE `question_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `question_replays`
--
ALTER TABLE `question_replays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `question_tag`
--
ALTER TABLE `question_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `replays`
--
ALTER TABLE `replays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `save_jobs`
--
ALTER TABLE `save_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users_skill`
--
ALTER TABLE `users_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alert_jobs_category`
--
ALTER TABLE `alert_jobs_category`
  ADD CONSTRAINT `alert_jobs_category_jobscategory_id_foreign` FOREIGN KEY (`jobscategory_id`) REFERENCES `job_categories` (`id`),
  ADD CONSTRAINT `alert_jobs_category_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `alert_jobs_hour`
--
ALTER TABLE `alert_jobs_hour`
  ADD CONSTRAINT `alert_jobs_hour_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `alert_jobs_level`
--
ALTER TABLE `alert_jobs_level`
  ADD CONSTRAINT `alert_jobs_level_alert_level_id_foreign` FOREIGN KEY (`alert_level_id`) REFERENCES `job_levels` (`id`),
  ADD CONSTRAINT `alert_jobs_level_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `alert_jobs_level_save`
--
ALTER TABLE `alert_jobs_level_save`
  ADD CONSTRAINT `alert_jobs_level_save_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `alert_jobs_locations`
--
ALTER TABLE `alert_jobs_locations`
  ADD CONSTRAINT `alert_jobs_locations_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `alert_jobs_locations_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `alert_jobs_salary`
--
ALTER TABLE `alert_jobs_salary`
  ADD CONSTRAINT `alert_jobs_salary_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD CONSTRAINT `article_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `article_tags` (`id`);

--
-- Constraints for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD CONSTRAINT `article_tags_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `edit_profiles`
--
ALTER TABLE `edit_profiles`
  ADD CONSTRAINT `edit_profiles_profession_category_foreign` FOREIGN KEY (`profession_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `edit_profiles_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `featured_interest_articles`
--
ALTER TABLE `featured_interest_articles`
  ADD CONSTRAINT `featured_interest_articles_interest_id_foreign` FOREIGN KEY (`interest_id`) REFERENCES `article_categories` (`id`),
  ADD CONSTRAINT `featured_interest_articles_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `featured_interest_jobs`
--
ALTER TABLE `featured_interest_jobs`
  ADD CONSTRAINT `featured_interest_jobs_interest_id_foreign` FOREIGN KEY (`interest_id`) REFERENCES `job_categories` (`id`),
  ADD CONSTRAINT `featured_interest_jobs_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `featured_interest_question`
--
ALTER TABLE `featured_interest_question`
  ADD CONSTRAINT `featured_interest_question_interest_id_foreign` FOREIGN KEY (`interest_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `featured_interest_question_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD CONSTRAINT `groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `groups_users_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `group_comments`
--
ALTER TABLE `group_comments`
  ADD CONSTRAINT `group_comments_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_comments_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `group_posts` (`id`);

--
-- Constraints for table `group_posts`
--
ALTER TABLE `group_posts`
  ADD CONSTRAINT `group_posts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applies`
--
ALTER TABLE `job_applies`
  ADD CONSTRAINT `job_applies_jobs_id_foreign` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_comments`
--
ALTER TABLE `question_comments`
  ADD CONSTRAINT `question_comments_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_replays`
--
ALTER TABLE `question_replays`
  ADD CONSTRAINT `question_replays_comment_id_foreign` FOREIGN KEY (`question_comment_id`) REFERENCES `question_comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_tag`
--
ALTER TABLE `question_tag`
  ADD CONSTRAINT `question_tag_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `replays`
--
ALTER TABLE `replays`
  ADD CONSTRAINT `replays_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `save_jobs`
--
ALTER TABLE `save_jobs`
  ADD CONSTRAINT `save_jobs_jobs_id_foreign` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `save_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_skill`
--
ALTER TABLE `users_skill`
  ADD CONSTRAINT `users_skill_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `users_skill_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
