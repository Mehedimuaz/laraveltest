-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2017 at 09:49 PM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `salary` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `user_id`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'Zayed Hossain', 3, 0, '2017-05-13 01:20:31', '2017-05-13 01:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2017_02_15_105523_create_students_table', 1),
(29, '2017_02_19_121021_create_teachers_table', 1),
(30, '2017_04_02_113817_create_questions_table', 1),
(31, '2014_10_12_000000_create_users_table', 2),
(32, '2014_10_12_100000_create_password_resets_table', 2),
(33, '2017_05_13_063744_create_employees_table', 2),
(34, '2017_05_13_063803_create_supervisors_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `question_text` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_id`, `question_text`, `created_at`, `updated_at`) VALUES
(2, 'a100001', 'Do you Speak English Fluently?', '2017-04-02 06:45:44', '2017-04-02 06:45:44'),
(3, 'a100002', 'What is your living situation?', '2017-04-02 06:46:18', '2017-04-02 06:46:18'),
(4, 'a100003', 'Which best describes your ethnicity?', '2017-04-02 06:46:31', '2017-04-02 06:46:31'),
(5, 'a100004', 'Do you have a computer with reliable internet access in your home?', '2017-04-02 06:46:46', '2017-04-02 06:46:46'),
(6, 'a100005', 'Do you share this computer with other members of your household?', '2017-04-02 06:46:58', '2017-04-02 06:46:58'),
(7, 'a100006', 'How many hours of time do you have to commit to Good University per week?', '2017-04-02 06:47:12', '2017-04-02 06:47:12'),
(8, 'a100007', 'What is your highest level of education?', '2017-04-02 06:47:25', '2017-04-02 06:47:25'),
(9, 'a100008', 'Are you willing to get more education?', '2017-04-02 06:48:01', '2017-04-02 06:48:01'),
(10, 'b100001', 'What is your current employment status?', '2017-04-02 06:48:29', '2017-04-02 06:48:29'),
(11, 'b100002', 'Are you currently looking for a job?', '2017-04-02 06:49:02', '2017-04-02 06:49:02'),
(12, 'b100003', 'Do you have a LinkedIn profile?', '2017-04-02 06:49:15', '2017-04-02 06:49:15'),
(13, 'b100004', 'Do you have a Facebook profile?', '2017-04-02 06:49:36', '2017-04-02 06:49:36'),
(14, 'b100005', 'Tuition Type (Admin Only - Pipe in from HubSpot)', '2017-04-02 06:50:14', '2017-04-02 06:50:14'),
(15, 'c100001', 'I am an artistic and creative person.', '2017-04-02 06:50:35', '2017-04-02 06:50:35'),
(16, 'c100002', 'I am interested in understanding how a company functions.', '2017-04-02 06:50:49', '2017-04-02 06:50:49'),
(17, 'c100003', 'I like to be involved in big-picture decision-making.', '2017-04-02 06:51:05', '2017-04-02 06:51:05'),
(18, 'c100004', 'I like helping others learn new skills.', '2017-04-02 06:51:21', '2017-04-02 06:51:21'),
(19, 'c100005', 'I am detail-oriented.', '2017-04-02 06:51:34', '2017-04-02 06:51:34'),
(20, 'c100006', 'I am a leader.', '2017-04-02 06:51:49', '2017-04-02 06:51:49'),
(21, 'c100007', 'I enjoy working alone.', '2017-04-02 06:52:03', '2017-04-02 06:52:03'),
(22, 'c100008', 'I prefer to work with a team.', '2017-04-02 06:52:21', '2017-04-02 06:52:21'),
(23, 'c100009', 'I like working toward a deadline.', '2017-04-02 06:52:41', '2017-04-02 06:52:41'),
(24, 'c100010', 'I have a passion for photography.', '2017-04-02 06:53:05', '2017-04-02 06:53:05'),
(25, 'c100011', 'I am interested in marketing.', '2017-04-02 06:53:22', '2017-04-02 06:53:22'),
(26, 'c100012', 'I am interested in web development.', '2017-04-02 06:53:38', '2017-04-02 06:53:38'),
(27, 'c100013', 'I enjoy video games.', '2017-04-02 06:53:50', '2017-04-02 06:53:50'),
(28, 'c100014', 'I am interested in computer animation.', '2017-04-02 06:54:10', '2017-04-02 06:54:10'),
(29, 'c100015', 'I wish I was my company’s IT expert.', '2017-04-02 06:54:37', '2017-04-02 06:54:37'),
(30, 'c100016', 'I like digital marketing.', '2017-04-02 06:54:51', '2017-04-02 06:54:51'),
(31, 'c100017', 'I like projects where design is important.', '2017-04-02 06:55:06', '2017-04-02 06:55:06'),
(32, 'c100018', 'I am an entrepreneur.', '2017-04-02 06:55:41', '2017-04-02 06:55:41'),
(33, 'c100019', 'I enjoy bookkeeping.', '2017-04-02 06:55:56', '2017-04-02 06:55:56'),
(34, 'c100020', 'Math is fun for me.', '2017-04-02 06:56:16', '2017-04-02 06:56:16'),
(35, 'c100021', 'I like working with my hands.', '2017-04-02 06:56:26', '2017-04-02 06:56:26'),
(36, 'c100022', 'I enjoy putting things together.', '2017-04-02 06:56:50', '2017-04-02 06:56:50'),
(37, 'c100023', 'I love playing with gadgets.', '2017-04-02 06:57:00', '2017-04-02 06:57:00'),
(38, 'c100024', 'I like planning and scheduling.', '2017-04-02 06:57:10', '2017-04-02 06:57:10'),
(39, 'c100025', 'I enjoy managing projects.', '2017-04-02 06:57:26', '2017-04-02 06:57:26'),
(40, 'c100026', 'Mixing music sounds interesting.', '2017-04-02 06:57:45', '2017-04-02 06:57:45'),
(41, 'c100027', 'I enjoy writing songs or lyrics.', '2017-04-02 06:57:58', '2017-04-02 06:57:58'),
(42, 'c100028', 'I like traveling for work.', '2017-04-02 06:58:12', '2017-04-02 06:58:12'),
(43, 'c100029', 'I like working from home.', '2017-04-02 06:58:25', '2017-04-02 06:58:25'),
(44, 'c100030', 'I\'d enjoy writing computer programs.', '2017-04-02 06:58:38', '2017-04-02 06:58:38'),
(45, 'c100031', 'I\'d enjoy designing software apps.', '2017-04-02 06:58:50', '2017-04-02 06:58:50'),
(46, 'd100001', 'Your computer is broken. How would you typically respond?', '2017-04-02 06:59:13', '2017-04-02 06:59:13'),
(47, 'd100002', 'IF I was working in design I would rather:', '2017-04-02 06:59:28', '2017-04-02 06:59:28'),
(48, 'd100003', 'IF I was in the film business I would rather:', '2017-04-02 06:59:46', '2017-04-02 06:59:46'),
(49, 'd100004', 'IF I was in the music business I would rather:', '2017-04-02 07:00:03', '2017-04-02 07:00:03'),
(50, 'd100005', 'IF I was working in photography I would rather:', '2017-04-02 07:00:21', '2017-04-02 07:00:21'),
(51, 'e100001', 'Describe your ideal day.', '2017-04-02 07:00:42', '2017-04-02 07:00:42'),
(52, 'e100002', 'Describe what is most important to you.', '2017-04-02 07:01:14', '2017-04-02 07:01:14'),
(53, 'e100003', 'Describe your dream job.', '2017-04-02 07:01:28', '2017-04-02 07:01:28'),
(54, 'e100004', 'If you weren’t worried about getting paid, what would you do with your time?', '2017-04-02 07:02:03', '2017-04-02 07:02:03'),
(55, 'e100005', 'What keeps you up at night?', '2017-04-02 07:02:15', '2017-04-02 07:02:15'),
(56, 'e100006', 'In your life, what are you most proud of?', '2017-04-02 07:02:26', '2017-04-02 07:02:26'),
(57, 'e100007', 'What is your current financial situation?', '2017-04-02 07:02:43', '2017-04-02 07:02:43'),
(58, 'e100008', 'What do you wish you knew how to do?', '2017-04-02 07:02:59', '2017-04-02 07:02:59'),
(59, 'e100009', 'What do you want your legacy to be?', '2017-04-02 07:03:11', '2017-04-02 07:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_bday` date NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `user_type`, `last_time`, `created_at`, `updated_at`) VALUES
(1, 'Mehedi Hasan Muaz', 'mehedihasan2760@gmail.com', '$2y$10$c8Z1OfSzGK7bC2oRscbQ4evJ28TW01JERPngdu4vJC1O8u5FtTLwW', '2GyDPWWfJgI6AwJD9K1K9UvtbO4iAFXUHaVT51pPnxYFc9ansmFGNSdWXPdK', 'admin', NULL, '2017-05-13 01:15:19', '2017-05-13 01:15:39'),
(2, 'Abul Khayer', 'khayer@gmail.com', '$2y$10$Er9UEf5r8vepZP9uxBqgV.RSCEM2EySSGpVN7f1yvGLB1aEpdyw36', 'h9k8Qql9FEXbUnM1dJDfqekHa0oWa0vyuQJM4DATQyVvx5X2FUL8iL7YZrsI', 'employee', NULL, '2017-05-13 01:16:14', '2017-05-13 01:18:50'),
(3, 'Zayed Hossain', 'zayed@gmail.com', '$2y$10$V/YN2Ew6Ji7FtSAGRRUkJ.ngR3WkXwTQfsitq0OdIw81tRZ.uWva.', 'FGir9VUcX95SJ1AVoMtN3T8zTc0FPgEFiIs6qG1pwj9mj1r3AeK9L44IcOu5', 'employee', NULL, '2017-05-13 01:20:31', '2017-05-13 01:34:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
