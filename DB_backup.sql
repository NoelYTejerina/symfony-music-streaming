-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: spotifyDB
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genero_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` int NOT NULL,
  `album` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int NOT NULL DEFAULT '0',
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  `anio` int DEFAULT NULL,
  `album_imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E4620FA0BCE7B795` (`genero_id`),
  KEY `IDX_E4620FA0DB38439E` (`usuario_id`),
  CONSTRAINT `FK_E4620FA0BCE7B795` FOREIGN KEY (`genero_id`) REFERENCES `estilo` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_E4620FA0DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (12,1,NULL,'Enjoy the Silence',215,'Violator','Depeche Mode',0,'2025-02-22 22:18:46',1990,'EnjoyTheSilence.jpg','EnjoyTheSilence.mp3'),(13,3,NULL,'Black or White',219,'Dangerous','Michael Jackson',0,'2025-02-22 22:21:31',1997,'BlackOrWhite.jpg','BlackOrWhite.mp3'),(14,2,NULL,'Bitter Sweet Symphony',245,'Urban Hymns','The Verve',0,'2025-02-22 22:22:38',2005,'BittersweetSymphony.jpg','BittersweetSymphony.mp3'),(15,3,NULL,'Blue Jeans',189,'Born to Die','Lana del Rey',0,'2025-02-22 22:23:32',2011,'BlueJeans.jpg','BlueJeans.mp3'),(16,6,NULL,'La Plage',132,'Les retrouvaille','Yann Tiersen',0,'2025-02-22 22:24:19',2007,'LaPlage.jpg','LaPlage.mp3'),(17,9,NULL,'Move Your Feet',192,'D-D-Don`t Don`t Stop the Beat','Junior Senior',0,'2025-02-22 22:25:13',2004,'MoveYourFeet.jpg','MoveYourFeet.mp3');
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20250213195537','2025-02-13 19:56:05',2357),('DoctrineMigrations\\Version20250213200921','2025-02-13 20:09:31',2475),('DoctrineMigrations\\Version20250213204406','2025-02-13 20:44:16',3639),('DoctrineMigrations\\Version20250214040216','2025-02-14 04:02:29',54815),('DoctrineMigrations\\Version20250216201807','2025-02-16 20:18:14',1763),('DoctrineMigrations\\Version20250216233251','2025-02-16 23:33:03',952),('DoctrineMigrations\\Version20250216234924','2025-02-16 23:49:39',7465),('DoctrineMigrations\\Version20250217003933','2025-02-17 00:39:43',1551),('DoctrineMigrations\\Version20250218143752','2025-02-18 14:38:06',2802),('DoctrineMigrations\\Version20250226171446','2025-02-26 17:15:09',638),('DoctrineMigrations\\Version20250226191423','2025-02-26 19:14:31',2748);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estilo`
--

DROP TABLE IF EXISTS `estilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estilo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci,
  `subgeneros` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilo`
--

LOCK TABLES `estilo` WRITE;
/*!40000 ALTER TABLE `estilo` DISABLE KEYS */;
INSERT INTO `estilo` VALUES (1,'Dark Wave','Género musical que comenzó a finales de los años 1970 coincidiendo con el momento de popularidad e influenciados por la new wave y el post-punk. Construido sobre esos puntales estilísticos,1​ el dark wave añadía además letras oscuras e introspectivas junto a un trasfondo de lamento en el sonido de algunos grupos.','Neo classical Darkwave, Wave etéreo, Dark cabaret, Dark electro'),(2,'Rock','Tiene sus raíces en el rock and roll de los años 50, estilo surgido directamente de géneros como el blues, el rhythm and blues (pertenecientes a la música afroamericana) y el country. También se nutrió fuertemente del blues eléctrico y el folk, además de incorporar elementos del jazz y la música clásica, entre otras fuentes. Instrumentalmente, se centra en la guitarra eléctrica, en general como parte de un grupo integrado por batería, bajo, uno o más cantantes y, algunas veces, instrumentos de teclado como el órgano y el piano.','rock alternativo, hard rock, punk rock, rock progresivo, rock psicodélico, glam rock, rock and roll, rock gótico, indie rock,  grunge,  ...'),(3,'Pop','Es un género ecléctico, que toma prestados elementos de otros estilos como el urban, el dance, el rock, la música latinoamericana, el rhythm and blues o el folk. Con todo, hay elementos esenciales que definen al pop, como son las canciones de corta a media duración, escritas en un formato básico (a menudo la estructura estrofa-estribillo), así como el uso habitual de estribillos repetidos, de temas melódicos y ganchos. La instrumentación se compone habitualmente de guitarra, batería, bajo, guitarra eléctrica, teclado, sintetizador, etc.','art pop, balada romántica, blue-eyed soul, bubblegum pop, dance-pop, electropop, hyperpop, indie pop, new romantic, pop barroco, pop operístico, pop progresivo, pop psicodélico...'),(4,'Jazz','El jazz es un género musical que nació a finales del siglo XIX en las comunidades afroamericanas de Nueva Orleans. Se trata de una categoría en torno a la cual operan diferentes géneros musicales con características comunes. El género surge de la confrontación de la música de ascendencia afroamericana con la tradición europea, teniendo como base el swing y la improvisación: en un origen, los esclavos norteamericanos tuvieron que aprender el lenguaje musical europeo si querían seguir cantando. De este modo, la música jazz puede entenderse tanto como un género musical en sí mismo como un idioma musical propio.','smooth jazz, free jazz, jazz fusión, jazz latino, jazz tradicional, jazz manouche, jazz modal, jazz vocal, bebop, y swing.'),(5,'Rap','Música rítmica estilizada que comúnmente viene acompañada con la acción de rapear, la cual es un discurso rítmico que se canta.4​ Se desarrolló como parte de la cultura hip hop, definida por cuatro elementos estilísticos clave: MCing/rapear, DJ/scratching (con tocadiscos), break dance y escritura de graffiti.\r\nEl recurso de rapear no es un componente obligatorio en la música hip hop, ya que también se pueden incorporar otros elementos de la cultura hip hop, como DJ, turntablism, scratching, beatboxing y pistas instrumentales.','rap alternativo, gangsta rap, trap, conscious rap, rap político, freestyle, drill, y crunk'),(6,'Clasica','La música clásica occidental es un tipo de música académica producida o derivada de las tradiciones de la música litúrgica y profana en Occidente, teniendo históricamente su foco mayoritario en Europa Occidental. Posee un referente de transmisión fundamentalmente de tipo escrito lo cual suele vincularse al carácter riguroso de su reproducción e interpretación.','barroco, clasicismo, romanticismo, impresionismo, neoclasicismo, serialismo, minimalismo, música renacentista, música contemporánea, y música electroacústica.'),(7,'Electronica','Tipo de música que emplea instrumentos musicales electrónicos y tecnología musical electrónica para su producción e interpretación.1​ En general, se puede distinguir entre el sonido producido mediante la utilización de medios electromecánicos, de aquel producido mediante tecnología electrónica, que también pueden ser mezclados.','techno, house, trance, drum and bass, dubstep, electro, ambient, acid house, hardstyle, y EDM (Electronic Dance Music).'),(8,'Reggae','Género musical originado en Jamaica en los años 60. Este se suele dividir en rocksteady (1966-1968), reggae (1969-1983) y dancehall (desde mediados de los años 1980 en adelante, aunque pueden considerarse su inicio a finales de los años 70 como un proceso gradual en el que los deejays ganaron popularidad a los cantantes tradicionales).\r\nEn sentido estricto, el reggae es la música desarrollada entre 1969 y 1983, un período de mayor diversidad musical que las anteriores en la que el bajo eléctrico asumió un papel más central y conforme fue pasando el tiempo del período aumentó la influencia del movimiento Rasta en las letras y el sonido.3','roots reggae, dancehall, dub, reggae fusion, lovers rock.'),(9,'Funk','El funk fusiona elementos del jazz, el rhythm and blues y el soul, creando un sonido energético y bailable. Artistas como James Brown y Sly and the Family Stone fueron pioneros en este estilo.','P-Funk, funk rock, funk metal, funk jazz, boogie.');
/*!40000 ALTER TABLE `estilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ocupacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96657647DB38439E` (`usuario_id`),
  CONSTRAINT `FK_96657647DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (4,NULL,NULL,NULL,NULL,NULL,NULL,15);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_estilo`
--

DROP TABLE IF EXISTS `perfil_estilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_estilo` (
  `perfil_id` int NOT NULL,
  `estilo_id` int NOT NULL,
  PRIMARY KEY (`perfil_id`,`estilo_id`),
  KEY `IDX_8C8A3EBE57291544` (`perfil_id`),
  KEY `IDX_8C8A3EBE43798DA7` (`estilo_id`),
  CONSTRAINT `FK_8C8A3EBE43798DA7` FOREIGN KEY (`estilo_id`) REFERENCES `estilo` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8C8A3EBE57291544` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_estilo`
--

LOCK TABLES `perfil_estilo` WRITE;
/*!40000 ALTER TABLE `perfil_estilo` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_estilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `propietario_id` int DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visibilidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_D782112D53C8D32C` (`propietario_id`),
  CONSTRAINT `FK_D782112D53C8D32C` FOREIGN KEY (`propietario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,NULL,'Exitos del Rock','publica',0),(2,NULL,'Novedades','publica',0),(3,16,'Popular En El 2000','publica',0),(11,16,'a','publica',0);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_cancion`
--

DROP TABLE IF EXISTS `playlist_cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_cancion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `playlist_id` int NOT NULL,
  `cancion_id` int NOT NULL,
  `reproducciones` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_5B5D18BA6BBD148` (`playlist_id`),
  KEY `IDX_5B5D18BA9B1D840F` (`cancion_id`),
  CONSTRAINT `FK_5B5D18BA6BBD148` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5B5D18BA9B1D840F` FOREIGN KEY (`cancion_id`) REFERENCES `cancion` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_cancion`
--

LOCK TABLES `playlist_cancion` WRITE;
/*!40000 ALTER TABLE `playlist_cancion` DISABLE KEYS */;
INSERT INTO `playlist_cancion` VALUES (10,1,12,0),(11,1,14,0),(12,2,15,0),(13,2,13,0),(14,2,12,0),(15,3,14,0),(16,3,15,0),(41,11,13,0),(42,11,14,0),(43,11,15,0),(44,11,13,0),(45,11,14,0),(46,11,15,0);
/*!40000 ALTER TABLE `playlist_cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `roles` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (12,'david@hotmail.com','$2y$13$u0qSK/SS/lsQ/H/rucce4.PU1gY96xTONbm33G0/trGCqWS6n.IL.','David','2003-04-12','[\"ROLE_USER\"]'),(13,'admin@hotmail.com','$2y$13$/junu.SXZ97bFSuAQKrJyePV6z2UjngnK8NpOgUbbpe0mDWrmw.Su','admin','2012-12-12','[\"ROLE_ADMIN\"]'),(15,'manager@hotmail.com','$2y$13$/t8rpRqjLPgKcgQ4WiMpfO6LWil6VLz4bqS4paiBM9z7xUSmLSHby','manager','2011-11-11','[\"ROLE_MANAGER\"]'),(16,'usuario@hotmail.com','$2y$13$CI6nc6zCVWj5OXJ7R0j8L.KxVZsmjrr33m2lreijudWOA73VMxPWW','usuario','2010-10-10','[\"ROLE_USER\"]');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_cancion`
--

DROP TABLE IF EXISTS `usuario_cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_cancion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `cancion_id` int NOT NULL,
  `reproducciones` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_9D44A5E7DB38439E` (`usuario_id`),
  KEY `IDX_9D44A5E79B1D840F` (`cancion_id`),
  CONSTRAINT `FK_9D44A5E79B1D840F` FOREIGN KEY (`cancion_id`) REFERENCES `cancion` (`id`),
  CONSTRAINT `FK_9D44A5E7DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_cancion`
--

LOCK TABLES `usuario_cancion` WRITE;
/*!40000 ALTER TABLE `usuario_cancion` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_playlist`
--

DROP TABLE IF EXISTS `usuario_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_playlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `playlist_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3F43E3B4DB38439E` (`usuario_id`),
  KEY `IDX_3F43E3B46BBD148` (`playlist_id`),
  CONSTRAINT `FK_3F43E3B46BBD148` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  CONSTRAINT `FK_3F43E3B4DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_playlist`
--

LOCK TABLES `usuario_playlist` WRITE;
/*!40000 ALTER TABLE `usuario_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_playlist_escuchadas`
--

DROP TABLE IF EXISTS `usuario_playlist_escuchadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_playlist_escuchadas` (
  `usuario_id` int NOT NULL,
  `playlist_id` int NOT NULL,
  PRIMARY KEY (`usuario_id`,`playlist_id`),
  KEY `IDX_48ECFD1CDB38439E` (`usuario_id`),
  KEY `IDX_48ECFD1C6BBD148` (`playlist_id`),
  CONSTRAINT `FK_48ECFD1C6BBD148` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48ECFD1CDB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_playlist_escuchadas`
--

LOCK TABLES `usuario_playlist_escuchadas` WRITE;
/*!40000 ALTER TABLE `usuario_playlist_escuchadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_playlist_escuchadas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-04 13:48:58
