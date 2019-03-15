-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 12, 2019 at 03:39 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `springboot_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `role_id`) VALUES
(1, 'ADMIN', 0),
(2, 'USER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'ShopID:1-UserID:1', 'desc', NULL, NULL),
(2, 2, 'ShopID:2-UserID:2', 'desc', NULL, NULL),
(3, 3, 'ShopID:3-UserID:3', 'desc', NULL, NULL),
(4, 4, 'ShopID:4-UserID:4', 'desc', NULL, NULL),
(5, 5, 'ShopID:5-UserID:5', 'desc', NULL, NULL),
(6, 6, 'ShopID:6-UserID:6', 'desc', NULL, NULL),
(7, 7, 'ShopID:7-UserID:7', 'desc', NULL, NULL),
(8, 8, 'ShopID:8-UserID:8', 'desc', NULL, NULL),
(9, 9, 'ShopID:9-UserID:9', 'desc', NULL, NULL),
(10, 10, 'ShopID:10-UserID:10', 'desc', NULL, NULL),
(11, 11, 'ShopID:11-UserID:11', 'desc', NULL, NULL),
(12, 12, 'ShopID:12-UserID:12', 'desc', NULL, NULL),
(13, 13, 'ShopID:13-UserID:13', 'desc', NULL, NULL),
(14, 14, 'ShopID:14-UserID:14', 'desc', NULL, NULL),
(15, 15, 'ShopID:15-UserID:15', 'desc', NULL, NULL),
(16, 16, 'ShopID:16-UserID:16', 'desc', NULL, NULL),
(17, 17, 'ShopID:17-UserID:17', 'desc', NULL, NULL),
(18, 18, 'ShopID:18-UserID:18', 'desc', NULL, NULL),
(19, 19, 'ShopID:19-UserID:19', 'desc', NULL, NULL),
(20, 20, 'ShopID:20-UserID:20', 'desc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `age`, `address`, `city`, `mobile`, `active`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'surname1', 'user1@gmail.com', '$2a$10$Gdv78kS1r9GGjfWuZKfw2e4mZI1fJAEfaqCCSQ1JPSlbL.UIEKYPq', 18, 'my_address1', 'nakornpathom', '089-9999999', 1, NULL, '', NULL, '2019-03-07 00:39:33'),
(2, 'user2', 'surname2', 'user2@gmail.com', '$2a$10$Gdv78kS1r9GGjfWuZKfw2e4mZI1fJAEfaqCCSQ1JPSlbL.UIEKYPq', 18, 'Home', 'Bangkok', '0949397463', 1, NULL, NULL, NULL, NULL),
(3, 'user3', 'surname3', 'user3@gmail.com', '$2a$10$Gdv78kS1r9GGjfWuZKfw2e4mZI1fJAEfaqCCSQ1JPSlbL.UIEKYPq', 20, 'my_address3', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL),
(4, 'user4', 'surname4', 'user4@gmail.com', '$2y$10$UIthoWjesBss7oD3B4Xe4ur19UYJ3GEfRxMVcongep42QtqYbqsPi', 20, 'my_address4', 'nakornpathom', '089-9999999', 0, NULL, NULL, NULL, NULL),
(5, 'user5', 'surname5', 'user5@gmail.com', '$2y$10$1rDZULEucD9gyPUt4yWwK.NsgUu57aYW3BE/2AHDRkSj/b8dH3RJG', 19, 'my_address5', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(6, 'user6', 'surname6', 'user6@gmail.com', '$2y$10$LTM.dMj82HjRdG8FUxfxUO7MJlE/.wbRBCdEw4KyY3a4eCAoc3Aj.', 19, 'my_address6', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL),
(7, 'user7', 'surname7', 'user7@gmail.com', '$2y$10$A/7.JxLFwVULU/sDkCo0Jua4UEBn638Zg8o9CXr/PLaA36STIabG.', 22, 'my_address7', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(8, 'user8', 'surname8', 'user8@gmail.com', '$2y$10$MxY2UnmRKtkTjXK31lQN5.jRyF3sbxBENbI0zrJ3ypm10YXqoFu6W', 22, 'my_address8', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(9, 'user9', 'surname9', 'user9@gmail.com', '$2y$10$o2/J/uEKF/btqIHqGLUdk.Fa1aWISLLsnsaGGMY9qNl572YauYyeu', 20, 'my_address9', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(10, 'user10', 'surname10', 'user10@gmail.com', '$2y$10$WaYFmFgpwhZhn3Z7dmP1ueJzyuMFOmVJy7e8XqrmzTaAGBCNYIrUe', 20, 'my_address10', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(11, 'user11', 'surname11', 'user11@gmail.com', '$2y$10$.mldjv7ml.gKkRwaQOU01ecZ/qPyIFNhAKa4lVRas95soTHQVjIBq', 21, 'my_address11', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(12, 'user12', 'surname12', 'user12@gmail.com', '$2y$10$J..oXA66bp4bTt5OvIuGXeSQUYOWaGfZsY0McnECviYSdSDyqGNfy', 18, 'my_address12', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(13, 'user13', 'surname13', 'user13@gmail.com', '$2y$10$QsdYrcnCnws0JDqOfY.WEuPZ0/IGuO.8CNQGkaKnXHXqV148GUh0a', 22, 'my_address13', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(14, 'user14', 'surname14', 'user14@gmail.com', '$2y$10$M79Edl66tD74EPUcfmCujecGc0K8zneJ1cmcletGKo37kuWT0wo76', 20, 'my_address14', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(15, 'user15', 'surname15', 'user15@gmail.com', '$2y$10$1jxspFXund7XIUgcpugDYOSNCsEtY8T8UL.R6W09qHNvz8k7GZaxe', 18, 'my_address15', 'nakornpathom', '089-9999999', 0, NULL, NULL, NULL, NULL),
(16, 'user16', 'surname16', 'user16@gmail.com', '$2y$10$lILYy8Aku4ZM6riBtdne9OwPy8G9I093pdcAN0ptqvlpG.Te6IZ7a', 21, 'my_address16', 'bangkok', '089-9999999', 1, NULL, NULL, NULL, NULL),
(17, 'user17', 'surname17', 'user17@gmail.com', '$2y$10$4MjUdXqP4AJvNxEKpH2e..Uu15JyliiRMMgO8Ran/oQri2PK8BhLW', 19, 'my_address17', 'bangkok', '089-9999999', 0, NULL, NULL, NULL, NULL),
(18, 'user18', 'surname18', 'user18@gmail.com', '$2y$10$hezWFBp6ry9VnK8bf.02WeGioTD8DotgjD35Ev/ghze004t9mHS/W', 22, 'my_address18', 'nakornpathom', '089-9999999', 0, NULL, NULL, NULL, NULL),
(19, 'user19', 'surname19', 'user19@gmail.com', '$2y$10$AQP.SrEwh9S0PFrEVbt6WeEPyuU.PvawCPKp.ZpJyuImjh9izXjwe', 20, 'my_address19', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL),
(20, 'user20', 'surname20', 'user20@gmail.com', '$2y$10$JtxLdR9AJ02UVzLyOiGNhe0vogHIQcmZUmfYNH7Ce1X4.Y7.qhFIO', 19, 'my_address20', 'nakornpathom', '089-9999999', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
