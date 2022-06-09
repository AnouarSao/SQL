-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 juin 2022 à 10:22
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `instagram`
--
CREATE DATABASE IF NOT EXISTS `instagram` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `instagram`;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `date` date DEFAULT curdate(),
  `utilisateurid` int(11) NOT NULL,
  `photoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `comments`, `date`, `utilisateurid`, `photoid`) VALUES
(1, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus ', '0000-00-00', 1, 12),
(2, 'Sed ante. Vivamus tortor.', '0000-00-00', 5, 11),
(3, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '0000-00-00', 10, 19),
(4, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis s', '0000-00-00', 4, 20),
(5, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis n', '0000-00-00', 2, 40),
(6, 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mu', '0000-00-00', 10, 42),
(7, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Pr', '0000-00-00', 3, 19),
(8, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primi', '0000-00-00', 1, 17),
(9, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula ', '0000-00-00', 5, 37),
(10, 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ', '0000-00-00', 5, 9),
(11, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tinc', '0000-00-00', 10, 7),
(12, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '0000-00-00', 4, 25),
(13, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ul', '0000-00-00', 2, 13),
(14, 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '0000-00-00', 1, 11),
(15, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '0000-00-00', 7, 44),
(16, 'Phasellus in felis.', '0000-00-00', 5, 37),
(17, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverr', '0000-00-00', 5, 45),
(18, 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ant', '0000-00-00', 10, 6),
(19, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, co', '0000-00-00', 4, 6),
(20, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris', '0000-00-00', 1, 26),
(21, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', '0000-00-00', 1, 22),
(22, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dign', '0000-00-00', 6, 34),
(23, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '0000-00-00', 5, 42),
(24, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverr', '0000-00-00', 10, 4),
(25, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', '0000-00-00', 6, 50),
(26, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '0000-00-00', 6, 1),
(27, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '0000-00-00', 9, 9),
(28, 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla m', '0000-00-00', 4, 11),
(29, 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus a', '0000-00-00', 3, 27),
(30, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dign', '0000-00-00', 8, 26),
(31, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis n', '0000-00-00', 9, 28),
(32, 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00', 7, 10),
(33, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '0000-00-00', 3, 20),
(34, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi ves', '0000-00-00', 1, 7),
(35, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridicul', '0000-00-00', 3, 19),
(36, 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque er', '0000-00-00', 7, 5),
(37, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ul', '0000-00-00', 5, 41),
(38, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutp', '0000-00-00', 8, 21),
(39, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '0000-00-00', 3, 40),
(40, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna', '0000-00-00', 4, 7),
(41, 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '0000-00-00', 7, 25),
(42, 'Suspendisse potenti.', '0000-00-00', 4, 32),
(43, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '0000-00-00', 1, 32),
(44, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent bl', '0000-00-00', 4, 23),
(45, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '0000-00-00', 8, 2),
(46, 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', '0000-00-00', 6, 27),
(47, 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', '0000-00-00', 10, 34),
(48, 'Etiam vel augue.', '0000-00-00', 2, 16),
(49, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ', '0000-00-00', 3, 28),
(50, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', '0000-00-00', 8, 31);

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `utilisateurid` int(11) NOT NULL,
  `photoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `utilisateurid`, `photoid`) VALUES
(1, 6, 43),
(2, 4, 37),
(3, 1, 12),
(4, 6, 5),
(5, 6, 16),
(6, 10, 41),
(7, 6, 16),
(8, 10, 4),
(9, 3, 25),
(10, 6, 48),
(11, 9, 3),
(12, 9, 20),
(13, 8, 48),
(14, 7, 5),
(15, 7, 15),
(16, 9, 7),
(17, 8, 29),
(18, 9, 49),
(19, 6, 46),
(20, 8, 50),
(21, 3, 41),
(22, 4, 36),
(23, 10, 50),
(24, 7, 25),
(25, 10, 21),
(26, 2, 39),
(27, 5, 24),
(28, 3, 7),
(29, 2, 8),
(30, 3, 5),
(31, 3, 6),
(32, 4, 29),
(33, 2, 18),
(34, 2, 17),
(35, 8, 24),
(36, 1, 4),
(37, 5, 13),
(38, 3, 33),
(39, 7, 9),
(40, 4, 39),
(41, 7, 19),
(42, 1, 33),
(43, 3, 26),
(44, 5, 39),
(45, 3, 22),
(46, 8, 45),
(47, 1, 45),
(48, 3, 18),
(49, 2, 10),
(50, 9, 22);

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `localisation` varchar(50) DEFAULT NULL,
  `date` date DEFAULT curdate(),
  `likecount` int(11) DEFAULT NULL,
  `commentscount` int(11) DEFAULT NULL,
  `utilisateurid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`id`, `image`, `description`, `localisation`, `date`, `likecount`, `commentscount`, `utilisateurid`) VALUES
(1, 'http://dummyimage.com/118x100.png/cc0000/ffffff', 'Curabitur convallis.', 'Philippines', '0000-00-00', NULL, NULL, 9),
(2, 'http://dummyimage.com/196x100.png/dddddd/000000', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis li', 'Philippines', '0000-00-00', NULL, NULL, 7),
(3, 'http://dummyimage.com/193x100.png/dddddd/000000', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', 'Indonesia', '0000-00-00', NULL, NULL, 9),
(4, 'http://dummyimage.com/122x100.png/ff4444/ffffff', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nul', 'Democratic Republic of the Congo', '0000-00-00', NULL, NULL, 5),
(5, 'http://dummyimage.com/197x100.png/dddddd/000000', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus ', 'Pakistan', '0000-00-00', NULL, NULL, 5),
(6, 'http://dummyimage.com/200x100.png/cc0000/ffffff', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 'Poland', '0000-00-00', NULL, NULL, 3),
(7, 'http://dummyimage.com/218x100.png/dddddd/000000', 'Donec semper sapien a libero. Nam dui.', 'Russia', '0000-00-00', NULL, NULL, 6),
(8, 'http://dummyimage.com/205x100.png/ff4444/ffffff', 'Donec dapibus. Duis at velit eu est congue elementum.', 'China', '0000-00-00', NULL, NULL, 5),
(9, 'http://dummyimage.com/121x100.png/cc0000/ffffff', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'South Africa', '0000-00-00', NULL, NULL, 1),
(10, 'http://dummyimage.com/154x100.png/ff4444/ffffff', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputat', 'Greece', '0000-00-00', NULL, NULL, 2),
(11, 'http://dummyimage.com/131x100.png/dddddd/000000', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan', 'China', '0000-00-00', NULL, NULL, 8),
(12, 'http://dummyimage.com/231x100.png/ff4444/ffffff', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus', 'Japan', '0000-00-00', NULL, NULL, 4),
(13, 'http://dummyimage.com/174x100.png/ff4444/ffffff', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 'Czech Republic', '0000-00-00', NULL, NULL, 4),
(14, 'http://dummyimage.com/223x100.png/cc0000/ffffff', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nul', 'Japan', '0000-00-00', NULL, NULL, 9),
(15, 'http://dummyimage.com/184x100.png/ff4444/ffffff', 'In hac habitasse platea dictumst.', 'Argentina', '0000-00-00', NULL, NULL, 7),
(16, 'http://dummyimage.com/181x100.png/5fa2dd/ffffff', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulv', 'Japan', '0000-00-00', NULL, NULL, 4),
(17, 'http://dummyimage.com/116x100.png/dddddd/000000', 'Integer non velit.', 'Indonesia', '0000-00-00', NULL, NULL, 3),
(18, 'http://dummyimage.com/104x100.png/cc0000/ffffff', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Nigeria', '0000-00-00', NULL, NULL, 3),
(19, 'http://dummyimage.com/219x100.png/ff4444/ffffff', 'Ut at dolor quis odio consequat varius. Integer ac leo.', 'Brazil', '0000-00-00', NULL, NULL, 8),
(20, 'http://dummyimage.com/177x100.png/5fa2dd/ffffff', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede li', 'Indonesia', '0000-00-00', NULL, NULL, 7),
(21, 'http://dummyimage.com/206x100.png/dddddd/000000', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'United States', '0000-00-00', NULL, NULL, 3),
(22, 'http://dummyimage.com/154x100.png/5fa2dd/ffffff', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Indonesia', '0000-00-00', NULL, NULL, 9),
(23, 'http://dummyimage.com/152x100.png/cc0000/ffffff', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phas', 'Indonesia', '0000-00-00', NULL, NULL, 3),
(24, 'http://dummyimage.com/134x100.png/5fa2dd/ffffff', 'Maecenas ut massa quis augue luctus tincidunt.', 'Mali', '0000-00-00', NULL, NULL, 3),
(25, 'http://dummyimage.com/130x100.png/cc0000/ffffff', 'Integer ac neque. Duis bibendum.', 'Cuba', '0000-00-00', NULL, NULL, 1),
(26, 'http://dummyimage.com/240x100.png/ff4444/ffffff', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. M', 'Philippines', '0000-00-00', NULL, NULL, 5),
(27, 'http://dummyimage.com/131x100.png/ff4444/ffffff', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'China', '0000-00-00', NULL, NULL, 8),
(28, 'http://dummyimage.com/195x100.png/cc0000/ffffff', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede li', 'Denmark', '0000-00-00', NULL, NULL, 6),
(29, 'http://dummyimage.com/104x100.png/dddddd/000000', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Nicaragua', '0000-00-00', NULL, NULL, 8),
(30, 'http://dummyimage.com/224x100.png/ff4444/ffffff', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.', 'Portugal', '0000-00-00', NULL, NULL, 7),
(31, 'http://dummyimage.com/155x100.png/cc0000/ffffff', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 'China', '0000-00-00', NULL, NULL, 9),
(32, 'http://dummyimage.com/230x100.png/ff4444/ffffff', 'Suspendisse potenti.', 'China', '0000-00-00', NULL, NULL, 10),
(33, 'http://dummyimage.com/215x100.png/cc0000/ffffff', 'Donec dapibus.', 'Poland', '0000-00-00', NULL, NULL, 2),
(34, 'http://dummyimage.com/124x100.png/cc0000/ffffff', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna', 'China', '0000-00-00', NULL, NULL, 3),
(35, 'http://dummyimage.com/220x100.png/5fa2dd/ffffff', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula ', 'Colombia', '0000-00-00', NULL, NULL, 2),
(36, 'http://dummyimage.com/203x100.png/5fa2dd/ffffff', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus ', 'Indonesia', '0000-00-00', NULL, NULL, 7),
(37, 'http://dummyimage.com/157x100.png/cc0000/ffffff', 'In hac habitasse platea dictumst.', 'China', '0000-00-00', NULL, NULL, 5),
(38, 'http://dummyimage.com/160x100.png/dddddd/000000', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 'China', '0000-00-00', NULL, NULL, 2),
(39, 'http://dummyimage.com/133x100.png/dddddd/000000', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primi', 'Czech Republic', '0000-00-00', NULL, NULL, 9),
(40, 'http://dummyimage.com/182x100.png/cc0000/ffffff', 'Quisque porta volutpat erat.', 'Sweden', '0000-00-00', NULL, NULL, 7),
(41, 'http://dummyimage.com/181x100.png/cc0000/ffffff', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et,', 'China', '0000-00-00', NULL, NULL, 8),
(42, 'http://dummyimage.com/228x100.png/dddddd/000000', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Philippines', '0000-00-00', NULL, NULL, 3),
(43, 'http://dummyimage.com/117x100.png/5fa2dd/ffffff', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 'Poland', '0000-00-00', NULL, NULL, 1),
(44, 'http://dummyimage.com/176x100.png/cc0000/ffffff', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Indonesia', '0000-00-00', NULL, NULL, 10),
(45, 'http://dummyimage.com/222x100.png/cc0000/ffffff', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna v', 'Georgia', '0000-00-00', NULL, NULL, 1),
(46, 'http://dummyimage.com/178x100.png/ff4444/ffffff', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 'China', '0000-00-00', NULL, NULL, 8),
(47, 'http://dummyimage.com/181x100.png/cc0000/ffffff', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 'Russia', '0000-00-00', NULL, NULL, 9),
(48, 'http://dummyimage.com/137x100.png/ff4444/ffffff', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 'China', '0000-00-00', NULL, NULL, 6),
(49, 'http://dummyimage.com/128x100.png/dddddd/000000', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 'Indonesia', '0000-00-00', NULL, NULL, 8),
(50, 'http://dummyimage.com/163x100.png/dddddd/000000', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at n', 'Brazil', '0000-00-00', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `pseudo`, `email`, `avatar`) VALUES
(1, 'Tallie', 'Walsh', 'Keylex', 'twalsh0@tinyurl.com', 'https://robohash.org/laboriosamiurevoluptatibus.png?size=50x50&set=set1'),
(2, 'Britni', 'Bestwerthick', 'Bitchip', 'bbestwerthick1@buzzfeed.com', 'https://robohash.org/eiusomnisofficia.png?size=50x50&set=set1'),
(3, 'Callida', 'Ballaam', 'Andalax', 'cballaam2@springer.com', 'https://robohash.org/etipsumadipisci.png?size=50x50&set=set1'),
(4, 'Warden', 'Lanceley', 'Regrant', 'wlanceley3@google.de', 'https://robohash.org/quidemcommodiest.png?size=50x50&set=set1'),
(5, 'Sigfrid', 'Rosenfarb', 'Konklux', 'srosenfarb4@weibo.com', 'https://robohash.org/illumeiusvoluptatem.png?size=50x50&set=set1'),
(6, 'Tybie', 'Rome', 'It', 'trome5@seesaa.net', 'https://robohash.org/quamsitdicta.png?size=50x50&set=set1'),
(7, 'Dagmar', 'Annott', 'Lotlux', 'dannott6@diigo.com', 'https://robohash.org/estsedquaerat.png?size=50x50&set=set1'),
(8, 'Israel', 'Montford', 'Zathin', 'imontford7@who.int', 'https://robohash.org/voluptatemquiofficiis.png?size=50x50&set=set1'),
(9, 'Brenn', 'Goudy', 'Bamity', 'bgoudy8@umn.edu', 'https://robohash.org/magniessepariatur.png?size=50x50&set=set1'),
(10, 'Lois', 'Blare', 'Job', 'lblare9@rambler.ru', 'https://robohash.org/repudiandaeautemexpedita.png?size=50x50&set=set1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateurid` (`utilisateurid`),
  ADD KEY `photoid` (`photoid`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateurid` (`utilisateurid`),
  ADD KEY `photoid` (`photoid`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateurid` (`utilisateurid`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pseudo` (`pseudo`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`utilisateurid`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaires_ibfk_2` FOREIGN KEY (`photoid`) REFERENCES `photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`utilisateurid`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`photoid`) REFERENCES `photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`utilisateurid`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
