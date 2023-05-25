-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 06:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitename`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `pass` char(128) NOT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `pass`, `registration_date`) VALUES
(1, 'Larry', 'Ullman', 'email@example.com', '1c573dfeb388b562b55948af954a7b344dde1cc2099e978a992790429e7c01a4205506a93d9aef3bab32d6f06d75b7777a7ad8859e672fedb6a096ae369254d2', '2022-03-21 19:48:12'),
(2, 'Zoe', 'Isabella', 'email2@example.com', '88ad80e3600c1be894d41dc8f25d30f7e61f5d11ebd94b6b781caf5f8c2d866521c4697892f328441a14ae840560fb367fcf73303968d3a1fa02e13994e32f71', '2022-03-21 19:48:21'),
(3, 'John', 'Lennon', 'john@beatles.com', '363dc58074a3857913f3a5dfcef1d5552bd5a7b483c50764564c9b7802d518fb5fd2099eb7798414e93b9dae0f805b0910c4e6e361943aaf1d1dcde5ea052e83', '2022-03-21 19:48:28'),
(4, 'Paul', 'McCartney', 'paul@beatles.com', '586d338f0c7f815c9a3f94f29384d05a5b00a2e48aedc5cbe42ed9b8ebf76418bc41a657d69191f33b89c2ca56119a25b4446e152af6cbfade37e7a546e8a46e', '2022-03-21 19:48:28'),
(5, 'George', 'Harrison', 'george@beatles.com ', '983d43ddff6da90f6a5d3b6172446a1ffe228b803fe64fdd5dcfab5646078a896851fe82f623c9d6e5654b3d2f363a04ec17cfb62b607437a9c7c132d511e522', '2022-03-21 19:48:28'),
(6, 'Ringo', 'Starr', 'ringo@beatles.com', 'b39138cde67de7ba76ae8c1fcc010e166ad68fb2b054ddbc2a6b651ed11724e69260b1062bd4a310e3ad55f043325e7a7f0344efe4fdcf5bc3a8c424fa25f5e0', '2022-03-21 19:48:28'),
(7, 'David', 'Jones', 'davey@monkees.com', 'b45e4ec36a0ffc412fe4d01ba965564cc39fcefa069f89d28f2685e2bba5fd605ac39a99063ce07670df7101dc480809bff3cc5fb04433ac4bbe7a495a8db3e8', '2022-03-21 19:48:41'),
(8, 'Peter', 'Tork', 'peter@monkees.com', '321c0799947b35c351bcf22941e2f43ae2912f514956c8d4ee45b5af6ccbfbbcc2a8d581cb27a50542dc2ae7a4e1496bbe55c9da09935c40c9e06f0a77c38cf4', '2022-03-21 19:48:41'),
(9, 'Micky', 'Dolenz', 'micky@monkees.com ', '9e80975b39cac44fd61decf4f1cda02ff3e31a5fe31fd9e79218d96a967476d9f37bfed8756e80d6c3b640975fd97675760622e2e383be38005fe885239684f5', '2022-03-21 19:48:41'),
(10, 'Mike', 'Nesmith', 'mike@monkees.com', 'ef59e5b03a9378543011a2d4cd24907554dcfcbd4038fd496a7a4c1a040132f963a1992a979fe651dc9e4b8fa1e8c9442f936e080c7398974e6b33d1d65143a8', '2022-03-21 19:48:41'),
(11, 'David', 'Sedaris', 'david@authors.com', '4d720d368b66a7efb4d0d4f6a660c3746bd93fc0237bc73ecc91e64032def112a2ea86f0171ae0050314d37527f15c00b6e132b979e937aaa25700356951b7b9', '2022-03-21 19:48:41'),
(12, 'Nick', 'Hornby', 'nick@authors.com', '3e986e3cd52ffda6e81160c54ff88750434f70326483fe7baf84806be885aa5f3d2b1930cf4d3f3fbbba1ca9d3a55a218a8287d0587c7de4884e7135252ed4ba', '2022-03-21 19:48:41'),
(13, 'Melissa', 'Bank', 'melissa@authors.com', '368c7d14dad7196b49a4947c8e95f7d490cbcd9835c77d1a353b1223c510cefb5b356f7f6fe389a7fdba24e0d40dc62c8782992d41ca631fe932b30480b475a5', '2022-03-21 19:48:41'),
(14, 'Toni', 'Morrison', 'toni@authors.com', '015ce5cf680a6911acb07c13a0022939681c1de5cd4d9a3c49f9da2cde9507270431e3d81ad0c2d1aed9a3d0ee03d9c84a789599967517c417786632bd2d6a53', '2022-03-21 19:48:41'),
(15, 'Jonathan', 'Franzen', 'jonathan@authors.com', '3d962211ac6fefe6ef1ad36db3e4be7e6243c0f07ac11f209009c7d5777a80717f15bf36309efb56313704c224d3b211fdcece3071a00a9544bb286fafeb0eb4', '2022-03-21 19:48:41'),
(16, 'Don', 'DeLillo', 'don@authors.com', 'af9ae0766337a63a2b4bc15c1bd2fc288a1a28d43807dc9e21dddaaccb31e7f83f80aae93d29cb28c03040af816c49a1e9d553b57abac0e560ccbbc343459a55', '2022-03-21 19:48:41'),
(17, 'Graham', 'Greene', 'graham@authors.com', '6201404dd00d4c31971b1a6ffbc76b40ba4bba8eb7a62bd4d27c394ad89a49b25e78c0154683a51067771c54a2459b4c57710283a72e1f4dca82293c4d688556', '2022-03-21 19:48:41'),
(18, 'Michael', 'Chabon', 'michael@authors.com', 'd5d81d94808b1613eb086d45ba9afce33720de0a62d380dede5a886b9288de89f977b89ed4895c259666618caac90d74e120833c22e1e17b05a5eee649494f2d', '2022-03-21 19:48:41'),
(19, 'Richard', 'Brautigan', 'richard@authors.com', '94b550bdcc1d36a3ff9cbb7d7aa9d43fac1070caa8ee1c23867169a9d4b50d776ae036bfe6768247838ae7a2466469ce9a0fee43aab89b3821246e2dcb462f3e', '2022-03-21 19:48:41'),
(20, 'Russell', 'Banks', 'russell@authors.com', 'bc618f7d0688466fa094dc9a25df9e8365f68a121b82571489170e98298999e3c63d037d41fb1833c15fb638bec666c706e0256d1bb123bb56c29e2734620827', '2022-03-21 19:48:41'),
(21, 'Homer', 'Simpson', 'homer@simpson.com', '9d004c8b819f19f0b3c7eeba1bc1a3d2aebeb0ca4b56d75bc48dfb1ce09b58bf37c15cb337adae0938e6ec2d912b88315b93efc6825045dc8c322c88c03e4acc', '2022-03-21 19:48:41'),
(22, 'Marge', 'Simpson', 'marge@simpson.com', 'ea458e939f6a5ef4fa36a499f7aa559782115f1e5a635b5518b343dd04c6b69a6071c0b62ea647756e60897e9d6db5e5af3d7c59d5bc18b7add1048d917c85a0', '2022-03-21 19:48:41'),
(23, 'Bart', 'Simpson', 'bart@simpson.com', 'cf8ff3b2df623fb8e0a1207dfc0f12da20fa9346fea7f9bf22cfe9afdd23f2531c506cde878932d1a7b84b569618119d1874c896c8dc2869ae0460bef2d1751a', '2022-03-21 19:48:41'),
(24, 'Lisa', 'Simpson', 'lisa@simpson.com', '1263855cb63faa0e9787b68e3b2caac83c023622e333eed2725a3092c8504edf248876b8c2765f0bedad8a9b3092fce70ba31fa24dcffed337e8a85ac62c9169', '2022-03-21 19:48:41'),
(25, 'Maggie', 'Simpson', 'maggie@simpson.com', '5ae38aa765f1d4b8cd741c3e729664648dbed789086124543a103c4e7b5ef02c5de422a0f06be97d5db36ea3eaab57a921b5f46ae6e49573469fd40662f61ab2', '2022-03-21 19:48:41'),
(26, 'Abe', 'Simpson', 'abe@simpson.com', '7584be42a15d5722dd20bdf31591d9d280d985ec69e51369f9c90cc3bbe81d0af3efa2a6ce0db1dba2c87c79f0666a53c4e8f7c934a69d8af25d1c3c41271a8d', '2022-03-21 19:48:41'),
(27, 'GABRIEL', 'CRUZ', 'gcruz@caldwell.com', '0601d109d0d2b0fa9c4484b4a5c94ee5ecc62ccec3bd7d99e972d18994d0e2e42f6d0fcfc41216a5ab72ee7af96d213e1c314abdde40f52731ff24c2bf8f7323', '2022-03-28 20:56:11'),
(28, 'GABRIEL', 'CRUZ', 'gcruz@caldwell.com', '0601d109d0d2b0fa9c4484b4a5c94ee5ecc62ccec3bd7d99e972d18994d0e2e42f6d0fcfc41216a5ab72ee7af96d213e1c314abdde40f52731ff24c2bf8f7323', '2022-03-28 20:56:24'),
(29, 'GABRIEL', 'CRUZ', 'gcruz@caldwell.com', '0601d109d0d2b0fa9c4484b4a5c94ee5ecc62ccec3bd7d99e972d18994d0e2e42f6d0fcfc41216a5ab72ee7af96d213e1c314abdde40f52731ff24c2bf8f7323', '2022-03-28 20:57:59'),
(30, 'GABRIEL', 'CRUZ', 'gcruz@caldwell.com', '0601d109d0d2b0fa9c4484b4a5c94ee5ecc62ccec3bd7d99e972d18994d0e2e42f6d0fcfc41216a5ab72ee7af96d213e1c314abdde40f52731ff24c2bf8f7323', '2022-03-28 20:58:01'),
(31, 'GABRIEL', 'CRUZ', 'gcruz@caldwell.com', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '2022-04-18 20:55:54'),
(32, 'GABRIELL', 'CRUZ', 'hello@gmail.com', '$2y$10$NgkSD4mWWk7Y1KfXGUEZoepl44cYjy90nhG4PQniWY1k9iqrzvR4i', '2022-05-02 20:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
