-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 172.17.0.1:3307
-- Generation Time:
-- Server version: 11.6.2-MariaDB-ubu2404
-- PHP Version: 8.2.26


SET FOREIGN_KEY_CHECKS=0;
-- IGNORE FOREIGN CHECKS ONCE ON IMPORT ARE GOOD FOR COMPATIBILITY ^^
-- MAKE SURE TO RE-ENABLE AFTER!!


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

ALTER TABLE `properties` (
  `property_id` int(11) NOT NULL,
  `owner_citizenid` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `has_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT json_array() CHECK (json_valid(`has_access`)),
  `extra_imgs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT json_array() CHECK (json_valid(`extra_imgs`)),
  `furnitures` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT json_array() CHECK (json_valid(`furnitures`)),
  `for_sale` tinyint(1) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  `shell` varchar(50) NOT NULL,
  `apartment` varchar(50) DEFAULT NULL,
  `door_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`door_data`)),
  `garage_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage_data`)),
  `zone_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`zone_data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`property_id`, `owner_citizenid`, `street`, `region`, `description`, `has_access`, `extra_imgs`, `furnitures`, `for_sale`, `price`, `shell`, `apartment`, `door_data`, `garage_data`, `zone_data`) VALUES
(1, 'ZV0V8Y7A', 'East Mirror Dr', 'Mirror Park', 'test', '[\"T07TU950\"]', '[]', '[{\"object\":\"bkr_prop_clubhouse_sofa_01a\",\"id\":\"7430791\",\"rotation\":{\"z\":0.0,\"y\":-0.0,\"x\":0.0},\"label\":\"Black Couch\",\"position\":{\"z\":-1.37,\"y\":3.6599,\"x\":-4.49}},{\"object\":\"prop_tv_flat_01\",\"id\":\"1061641\",\"rotation\":{\"z\":96.99999237060549,\"y\":-0.0,\"x\":0.0},\"label\":\"Big flatscreen\",\"position\":{\"z\":-0.35,\"y\":1.5331,\"x\":-8.8012}},{\"object\":\"prop_tv_flat_01\",\"id\":\"9186111\",\"rotation\":{\"x\":0.0,\"y\":-0.0,\"z\":-92.99999237060547},\"label\":\"Big flatscreen\",\"position\":{\"z\":-0.55,\"y\":1.6082,\"x\":8.5249}},{\"object\":\"v_res_tre_storagebox\",\"type\":\"storage\",\"id\":\"4424651\",\"rotation\":{\"x\":0.0,\"y\":-0.0,\"z\":0.0},\"label\":\"Storage Unit\",\"position\":{\"z\":-1.4301,\"y\":3.6699,\"x\":4.921}},{\"object\":\"v_res_tre_wardrobe\",\"type\":\"clothing\",\"id\":\"3636971\",\"rotation\":{\"x\":0.0,\"y\":-0.0,\"z\":0.0},\"label\":\"Wardrobe\",\"position\":{\"z\":-1.572,\"y\":3.75,\"x\":6.2199}},{\"object\":\"miss_rub_couch_01\",\"id\":\"5867531\",\"rotation\":{\"x\":0.0,\"y\":-0.0,\"z\":175.99998474121095},\"label\":\"Old couch\",\"position\":{\"z\":70.69,\"y\":-573.6818,\"x\":1307.3233}},{\"object\":\"v_res_fh_diningtable\",\"id\":\"2109131\",\"rotation\":{\"x\":0.0,\"y\":0.0,\"z\":85.99999237060547},\"label\":\"Dining Table\",\"position\":{\"z\":71.22,\"y\":-572.206,\"x\":1308.5825}}]', 0, 1, 'House 4', NULL, '{\"length\":1.5,\"z\":71.73,\"y\":-574.25,\"x\":1301.05,\"width\":2.2,\"h\":154.94,\"locked\":false}', '{\"length\":3.0,\"z\":71.73,\"y\":-580.2,\"x\":1291.3,\"width\":5.0,\"h\":165.97}', '{\"points\":[{\"x\":1297.6607666015626,\"y\":-572.2003784179688,\"z\":70.83506774902344},{\"x\":1300.1697998046876,\"y\":-564.197021484375,\"z\":70.3466796875},{\"x\":1317.0352783203126,\"y\":-569.4930419921875,\"z\":71.63973999023438},{\"x\":1310.973876953125,\"y\":-582.6463012695313,\"z\":71.6740951538086},{\"x\":1306.0040283203126,\"y\":-581.359619140625,\"z\":70.8443374633789},{\"x\":1306.8079833984376,\"y\":-575.2697143554688,\"z\":70.90812683105469}],\"thickness\":5}'),
(3, 'CNQ10N03', 'Shank St', 'La Puerta', 'ad', '[]', '[]', '[]', 0, 1, 'Warehouse', NULL, '{\"z\":5.02,\"y\":-1512.47,\"x\":-753.46,\"h\":207.47,\"length\":1.5,\"width\":2.2,\"locked\":false}', '{\"z\":5.0,\"y\":-1503.47,\"h\":117.08,\"length\":3.0,\"width\":5.0,\"x\":-742.56}', '{\"points\":[{\"x\":-757.2927856445313,\"y\":-1513.501708984375,\"z\":3.99790716171264},{\"x\":-756.2525634765625,\"y\":-1506.06982421875,\"z\":4.08790683746337},{\"x\":-727.897705078125,\"y\":-1495.315185546875,\"z\":4.00075435638427},{\"x\":-727.3818359375,\"y\":-1501.512939453125,\"z\":4.06188869476318}],\"thickness\":5}');

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_id`),
  ADD UNIQUE KEY `UQ_owner_apartment` (`owner_citizenid`,`apartment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


--
-- Constraints for dumped tables
--

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `FK_owner_citizenid` FOREIGN KEY (`owner_citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `properties_decorations`
--

-- TURN FOREIGN KEY CHECKS BACK ON AFTER!!
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
