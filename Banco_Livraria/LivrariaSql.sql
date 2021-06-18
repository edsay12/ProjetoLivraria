-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para livrariadb
CREATE DATABASE IF NOT EXISTS `livrariadb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `livrariadb`;

-- Copiando estrutura para tabela livrariadb.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `cpfCliente` varchar(11) NOT NULL,
  `nomeCliente` varchar(50) NOT NULL,
  `numeroCliente` varchar(11) DEFAULT NULL,
  `ruaCliente` varchar(50) NOT NULL,
  `cidadeCliente` varchar(30) NOT NULL,
  `bairroCliente` varchar(30) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `cpfCliente` (`cpfCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela livrariadb.clientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela livrariadb.livros
CREATE TABLE IF NOT EXISTS `livros` (
  `idLivro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeLivro` varchar(50) NOT NULL,
  `tipoLivro` varchar(20) DEFAULT NULL,
  `valorLivro` float(5,2) DEFAULT NULL,
  `quantidadeLivro` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idLivro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela livrariadb.livros: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;

-- Copiando estrutura para tabela livrariadb.vendas
CREATE TABLE IF NOT EXISTS `vendas` (
  `idVenda` int(11) NOT NULL AUTO_INCREMENT,
  `Clientes_idCliente` int(11) NOT NULL,
  `Livros_idLivro` int(11) NOT NULL,
  `Vendedor_idVendedor` int(11) NOT NULL,
  `tipoVenda` enum('aluguel','venda') NOT NULL,
  PRIMARY KEY (`idVenda`),
  KEY `fk_cliente` (`Clientes_idCliente`),
  KEY `fk_vendedor` (`Vendedor_idVendedor`),
  KEY `fk_livros` (`Livros_idLivro`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`Clientes_idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `fk_livros` FOREIGN KEY (`Livros_idLivro`) REFERENCES `livros` (`idLivro`),
  CONSTRAINT `fk_vendedor` FOREIGN KEY (`Vendedor_idVendedor`) REFERENCES `vendedor` (`idVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela livrariadb.vendas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;

-- Copiando estrutura para tabela livrariadb.vendedor
CREATE TABLE IF NOT EXISTS `vendedor` (
  `idVendedor` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `cpfVendedor` varchar(11) NOT NULL,
  `nomeVendedor` varchar(50) NOT NULL,
  `telefoneVendedor` varchar(11) DEFAULT NULL,
  `ruaVendedor` varchar(50) NOT NULL,
  `cidadeVendedor` varchar(30) DEFAULT NULL,
  `bairroVendedor` varchar(30) DEFAULT NULL,
  `senha` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idVendedor`),
  UNIQUE KEY `usuario` (`usuario`,`cpfVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela livrariadb.vendedor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
