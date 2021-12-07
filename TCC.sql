CREATE DATABASE  IF NOT EXISTS `simuladordefeitos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `simuladordefeitos`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: simuladordefeitos
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alternativa`
--

DROP TABLE IF EXISTS `alternativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternativa` (
  `id_alternativa` int NOT NULL,
  `correto` bit(1) NOT NULL,
  `descricao` longtext,
  `id_componente` int DEFAULT NULL,
  `id_defeito` int DEFAULT NULL,
  PRIMARY KEY (`id_alternativa`),
  KEY `FKrvq1t85816vdyiswoajx0kaak` (`id_componente`),
  KEY `FK1wf8xjswmbnt0fov8uxnc70tt` (`id_defeito`),
  CONSTRAINT `FK1wf8xjswmbnt0fov8uxnc70tt` FOREIGN KEY (`id_defeito`) REFERENCES `defeito` (`id_defeito`),
  CONSTRAINT `FKrvq1t85816vdyiswoajx0kaak` FOREIGN KEY (`id_componente`) REFERENCES `componente` (`id_componente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativa`
--

LOCK TABLES `alternativa` WRITE;
/*!40000 ALTER TABLE `alternativa` DISABLE KEYS */;
INSERT INTO `alternativa` VALUES (1,_binary '\0','É impossível um problema no Sistema Operacional impedir o computador de ligar, pois o SO só começa a funcionar depois que o computador é ligado.',1,1),(2,_binary '\0','É impossível um problema em algum driver de qualquer dispositivo impedir o computador de ligar.',2,1),(3,_binary '\0','É impossível um vírus de computador impedir o computador de ligar, pois o vírus só começa a agir depois que o Sistema Operacional é carregado.',3,1),(4,_binary '\0','É impossível uma configuração do Setup impedir o computador de ligar.',4,1),(5,_binary '\0','É impossível um programa de computador impedir o computador de ligar, pois os programas só começam a funcionar depois que o Sistema Operacional é carregado.',5,1),(6,_binary '\0','Realmente o processador poderia estar queimado, impossibilitando o computador de ligar, mas geralmente, quando isso acontece, a ventoinha da fonte não para de girar e os LEDs do gabinete e da placa-mãe acendem, o que não é o caso.',6,1),(7,_binary '\0','Realmente a placa-mãe poderia estar queimada, impossibilitando o computador de ligar, mas geralmente, quando isso acontece, a ventoinha da fonte não para de girar e os LEDs do gabinete acendem, o que não é o caso.',7,1),(8,_binary '\0','Muito dificilmente um cooler de processador queimado poderia impossibilitar o computador de ligar normalmente.',8,1),(9,_binary '\0','Muito dificilmente uma memória RAM queimada poderia impossibilitar o computador de ligar, os LEDS do gabinete acenderem e a ventoinha da fonte girar.',9,1),(10,_binary '\0','Dificilmente uma placa de vídeo queimada poderia impossibilitar o computador de ligar, os LEDS do gabinete acenderem e a ventoinha da fonte girar.',10,1),(11,_binary '\0','É quase impossível um periférico como o monitor de vídeo interferir no funcionamento do computador.',11,1),(12,_binary '\0','Realmente, um mau contato no conector da fonte que é ligado à placa-mãe poderia causar um defeito com os mesmos sintomas. Mas você limpou os contatos e encaixou novamente os conectores e o defeito continua.',12,1),(13,_binary '','Muito Bem! Você encontrou o defeito. A fonte de alimentação estava queimada e como é ela que fornece energia para todos os componentes internos do computador, quando ela não funciona, nem mesmo um pequeno led do gabinete pode acender.',13,1),(14,_binary '\0','Realmente o Disco Rígido poderia estar queimado, impossibilitando o computador de ligar, mas geralmente, quando isso acontece, a ventoinha da fonte não para de girar e os LEDs do gabinete e da placa-mãe acendem, o que não é o caso.',14,1),(15,_binary '\0','Um problema no SO como uma configuração errada na resolução ou frequencia de vídeo pode causar problemas de definição pobre de tela. Mas neste caso, você não está conseguindo configurar para uma resolução melhor porque as opções de melhor resolução não está disponíveis.Você reinstalou o SO, mas o problema continua.',1,2),(16,_binary '','Muito bem! Você descobriu o defeito! O driver correto para a placa de vídeo não estava instalado. Dessa forma, o SO utilizou um driver genérico que só tem as opções mais básicas de resolução de tela e de cor. Ao instalar o driver correto, todas as opções de número de cor e resolução de tela ficaram disponíveis.',2,2),(17,_binary '\0','É impossível um vírus de computador impedir o computador de ligar, pois o vírus só começa a agir depois que o Sistema Operacional é carregado.',3,2),(18,_binary '\0','É muito difícil uma configuração no Setup relacionada a placa de vídeo ocasionar problemas de definição de tela.',4,2),(19,_binary '\0','É muito difícil um programa aplicativo causar problemas de resolução de tela. Além disso, o problema está acontecendo durante a utilização de todos os programas e não em um programa específico.',5,2),(20,_binary '\0','É impossível um processador com defeito causar problemas de definição pobre de tela.',6,2),(21,_binary '\0','É impossível uma placa-mãe com defeito causar problemas de definição pobre de tela.',7,2),(22,_binary '\0','É impossível um cooler com defeito causar problemas de definição pobre de tela.',8,2),(23,_binary '\0','É impossível um pente de memória com defeito causar problemas de definição pobre de tela.',9,2),(24,_binary '\0','Boa tentativa! Uma placa de vídeo defeituosa pode causar problemas na imagem. Mas geralmente, os problemas que ela ocasiona são de distorções graves na imagem e não de resolução pobre de tela.',10,2),(25,_binary '\0','Um monitor de vídeo defeituoso pode causar problemas na imagem, mas não impedir que o Sistema Operacional apresente opções de resolução maiores, como neste caso.',11,2),(26,_binary '\0','Boa tentativa! Um mau contato na placa de vídeo pode causar problemas na imagem. Mas geralmente, os problemas que ela ocasiona são de distorções graves na imagem e não de resolução pobre de tela.',12,2),(27,_binary '\0','É impossível uma fonte de alimentação com defeito causar problemas de definição pobre de tela.',13,2),(28,_binary '\0','É impossível um HD defeituoso causar problemas de definição pobre de tela.',14,2),(29,_binary '\0','Um problema no SO pode realmente causar travamentos no computador, mas você reinstalou o SO e o problema continua.',1,3),(30,_binary '\0','Um problema em algum driver de algum dispositivo pode realmente causar travamentos no computador, mas neste caso todos os drives estão corretamente instalados.',2,3),(31,_binary '\0','Realmente, um vírus de computador pode causar problemas de travamento. Mas você utilizou um programa antivírus atualizado e não encontro nenhum vírus.',3,3),(32,_binary '\0','Boa tentativa. Uma configuração errada no Setup, como a frequência de operação do processador ou das memórias pode realmente causar travamentos no computador. Mas neste caso está tudo correto no Setup.',4,3),(33,_binary '','Muito bem! Você acertou. O problema estava mesmo no programa aplicativo. Ao reinstalar o programa, o problema foi solucionado. Porém, às vezes um programa não funciona ou trava o computador por que o computador não possui memória RAM ou velocidade suficiente para suportar o programa. Às vezes também é possível que haja uma incompatibilidade do programa com o hardware ou com o SO.',5,3),(34,_binary '\0','Boa tentativa! Um processador defeituoso poderia realmente causar esse tipo de problema. Mas você trocou o processador e o problema continua.',6,3),(35,_binary '\0','Boa tentativa! Uma placa-mãe defeituosa poderia realmente causar esse tipo de problema. Mas você trocou a placa-mãe e o problema continua.',7,3),(36,_binary '\0','Boa tentativa! Um cooler de processador queimado poderia estar causando super aquecimento no processador e ocasinando travamentos. Mas o cooler está funcionando perfeitamente.',8,3),(37,_binary '\0','Boa tentativa! Um pente de memória com defeito poderia realmente causar esse tipo de problema. Mas você trocou a memória e o problema continua.',9,3),(38,_binary '\0','É muito difícil um problema na placa de vídeo causar travamentos, mas às vezes pode acontecer. Neste caso, você trocou a placa de vídeo, mas o problema continua.',10,3),(39,_binary '\0','É impossível um problema no monitor causar qualquer tipo de travamento ou atrapalhar o funcionamento correto do computador. Afinal, o monitor é um dispositivo que apenas recebe dados do computador.',11,3),(40,_binary '\0','Boa tentativa. É muito comum mau contatos em processadores e pentes de memória causarem travamentos. No entanto, você limpou os contatos e o problema continua.',12,3),(41,_binary '\0','É muito difícil um problema na fonte causar travamentos, mas às vezes pode acontecer. Neste caso, você trocou a fonte, mas o problema continua.',13,3),(42,_binary '\0','Não é muito comum um problema no HD causar travamentos e reiniciar o computador, mas pode acontecer. Neste caso, você trocou o HD, mas o problema continua.',14,3);
/*!40000 ALTER TABLE `alternativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componente`
--

DROP TABLE IF EXISTS `componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `componente` (
  `id_componente` int NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id_componente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componente`
--

LOCK TABLES `componente` WRITE;
/*!40000 ALTER TABLE `componente` DISABLE KEYS */;
INSERT INTO `componente` VALUES (1,'Sistema operacional'),(2,'Drivers'),(3,'Vírus'),(4,'SETUP'),(5,'Reinstalação de programas'),(6,'Processador'),(7,'Placa mãe'),(8,'Cooler'),(9,'Memória ram '),(10,'Placa de vídeo'),(11,'Monitor'),(12,'Pincel'),(13,'Fonte de alimentação'),(14,'HD');
/*!40000 ALTER TABLE `componente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defeito`
--

DROP TABLE IF EXISTS `defeito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defeito` (
  `id_defeito` int NOT NULL,
  `info_adiciconal` longtext,
  `sintomas` longtext NOT NULL,
  PRIMARY KEY (`id_defeito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defeito`
--

LOCK TABLES `defeito` WRITE;
/*!40000 ALTER TABLE `defeito` DISABLE KEYS */;
INSERT INTO `defeito` VALUES (1,'Energia fornecida na tomada está normal.','Ao apertar o botão liga/desliga do gabinete nada acontece. O computador não liga.'),(2,'Ao entrar na configuração da resolução de tela do windows, não é possível configurar para um número maior de cores, nem para uma resolução maior de tela. Apenas aparece a opção de ultilizar a resolução 640x480 com 16 cores (4bit).','Apesar de não haver distorções nas imagens, elas aparecem dentro do windows com uma definição muito pobre e poucas cores.'),(3,NULL,'O computador trava sempre durante a execução de um determinado programa aplicativo.');
/*!40000 ALTER TABLE `defeito` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-07 14:28:13
