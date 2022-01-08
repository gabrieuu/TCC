-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: simuladordefeitos
-- ------------------------------------------------------
-- Server version	8.0.27

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
INSERT INTO `defeito` VALUES (1,'Energia fornecida na tomada está normal.','Ao apertar o botão liga/desliga do gabinete nada acontece. O computador não liga.'),(2,'Ao entrar na configuração da resolução de tela do windows, não é possível configurar para um número maior de cores, nem para uma resolução maior de tela. Apenas aparece a opção de ultilizar a resolução 640x480 com 16 cores (4bit).','Apesar de não haver distorções nas imagens, elas aparecem dentro do windows com uma definição muito pobre e poucas cores.'),(3,'sem informação adicional','O computador trava sempre durante a execução de um determinado programa aplicativo.'),(4,'sem informação adicional','Durante a ultilizacao do computador, as imagens perdem a resolução. As vezes aparecem barras verticais na tela e cores estranhas.'),(5,'Defeito apareceu depois que o usuário abriu um arquivo executável que um amigo lhe enviou por email. O computador está muito lento.','O computador está muito lento, tanto para ler ou gravar arquivos quanto para executar programas, digitar textos, acessar a Internet, etc. Alguns arquivos do usuário sumiram. Às vezes trava.\n'),(6,'Defeito começou a acontecer depois de uma queda repentina de energia enquanto usuário utilizava o computador.','O computador trava ou reinicia sozinho em qualquer momento, durante a utilização de qualquer programa, mas sempre depois do boot.'),(7,'O travamento ocorre com mais frequência depois que o computador está ligado por algum tempo','O computador trava ou reinicia sozinho em qualquer momento, durante a utilização de qualquer programa, às vezes trava mesmo antes do boot.\n'),(8,'Mensagem de erro: \"HDD Failure\"','Logo ao ligar o computador o autoteste (POST) exibe a mensagem (\"HDD Failure\" Falha no HD). Após a mensagem o computador suspende suas atividades, não chegando nem mesmoa iniciar o boot'),(9,'sem informação adicional','Às vezes o computador não liga e apresenta um bip longo seguido de três bips curtos. Às vezes ele funciona normalmente.'),(10,'sem informação adicional','Às vezes o computador não liga e apresenta bips longos e espaçados. Quando liga às vezes trava na execução de qualquer programa e até mesmo no antes do boot.'),(11,'-Às vezes pode se ouvir uns estalos bem altos que vem de dentro do computador.-Mensagem de erro: \"O arquivo que você está tentando acessar pode estar corrompido\"','Durante a utilização do computador, ao acessar alguns arquivos no HD o computador trava durante alguns segundos e volta a funcionar. As vezes, ao tentar acessar alguns arquivos no HD o Windows avisa que eles estão corrompidos e não permite o acesso.'),(12,'O defeito acontece com mais frequência quando o usuário utiliza programas que utilizam mais os recursos de vídeo, como jogos e programas de edição de imagens','Durante a utilização do computador, as imagens perdem a definição. Às vezes aparecem barras verticais na tela e cores estranhas'),(13,'sem informação adicional','O computador trava ou reinicia sozinho em qualquer momento, durante a utilização de qualquer programa e às vezes trava mesmo antes do boot\n');
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

-- Dump completed on 2022-01-08 12:59:42
