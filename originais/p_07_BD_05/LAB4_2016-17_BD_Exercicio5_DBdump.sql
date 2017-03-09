
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Table `05_classificacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_classificacoes` (
  `id_classificacoes` INT NOT NULL AUTO_INCREMENT,
  `valor` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_classificacoes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_paises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_paises` (
  `id_paises` INT NOT NULL,
  `nome` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`id_paises`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_editoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_editoras` (
  `id_editoras` INT NOT NULL AUTO_INCREMENT,
  `editora` VARCHAR(75) NOT NULL,
  `url` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `morada` MEDIUMTEXT NULL,
  `historia` TEXT NULL,
  `ref_id_paises` INT NOT NULL,
  PRIMARY KEY (`id_editoras`),
  INDEX `fk_editoras_paises1_idx` (`ref_id_paises` ASC),
  CONSTRAINT `fk_editoras_paises1`
    FOREIGN KEY (`ref_id_paises`)
    REFERENCES `05_paises` (`id_paises`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_interpretes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_interpretes` (
  `id_interpretes` INT NOT NULL AUTO_INCREMENT,
  `interprete` VARCHAR(100) NOT NULL,
  `comentarios` TEXT NULL,
  PRIMARY KEY (`id_interpretes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_albuns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_albuns` (
  `id_albuns` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `ano` YEAR NOT NULL,
  `ref_id_classificacoes` INT NOT NULL,
  `ref_id_editoras` INT NOT NULL,
  `ref_id_interpretes` INT NOT NULL,
  PRIMARY KEY (`id_albuns`),
  INDEX `fk_albuns_classificacao1_idx` (`ref_id_classificacoes` ASC),
  INDEX `fk_albuns_editoras1_idx` (`ref_id_editoras` ASC),
  INDEX `fk_albuns_interpretes1_idx` (`ref_id_interpretes` ASC),
  CONSTRAINT `fk_albuns_classificacao1`
    FOREIGN KEY (`ref_id_classificacoes`)
    REFERENCES `05_classificacoes` (`id_classificacoes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_albuns_editoras1`
    FOREIGN KEY (`ref_id_editoras`)
    REFERENCES `05_editoras` (`id_editoras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_albuns_interpretes1`
    FOREIGN KEY (`ref_id_interpretes`)
    REFERENCES `05_interpretes` (`id_interpretes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_estilos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_estilos` (
  `id_estilos` INT NOT NULL AUTO_INCREMENT,
  `estilo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estilos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_albuns_has_05_estilos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_albuns_has_05_estilos` (
  `ref_id_albuns` INT NOT NULL,
  `ref_id_estilos` INT NOT NULL,
  PRIMARY KEY (`ref_id_albuns`, `ref_id_estilos`),
  INDEX `fk_05_albuns_has_05_estilos_05_estilos1_idx` (`ref_id_estilos` ASC),
  INDEX `fk_05_albuns_has_05_estilos_05_albuns1_idx` (`ref_id_albuns` ASC),
  CONSTRAINT `fk_05_albuns_has_05_estilos_05_albuns1`
    FOREIGN KEY (`ref_id_albuns`)
    REFERENCES `05_albuns` (`id_albuns`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_05_albuns_has_05_estilos_05_estilos1`
    FOREIGN KEY (`ref_id_estilos`)
    REFERENCES `05_estilos` (`id_estilos`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_amigos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_amigos` (
  `id_amigos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data_nascimento` DATE NULL,
  `morada` VARCHAR(500) NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_amigos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `05_emprestimos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `05_emprestimos` (
  `id_emprestimos` INT NOT NULL AUTO_INCREMENT,
  `ref_id_albuns` INT NOT NULL,
  `ref_id_amigos` INT NOT NULL,
  `data_emprestimo` DATE NOT NULL,
  `data_devolucao` DATE NULL,
  PRIMARY KEY (`id_emprestimos`),
  INDEX `fk_05_albuns_has_05_amigos_05_amigos1_idx` (`ref_id_amigos` ASC),
  INDEX `fk_05_albuns_has_05_amigos_05_albuns1_idx` (`ref_id_albuns` ASC),
  CONSTRAINT `fk_05_albuns_has_05_amigos_05_albuns1`
    FOREIGN KEY (`ref_id_albuns`)
    REFERENCES `05_albuns` (`id_albuns`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_05_albuns_has_05_amigos_05_amigos1`
    FOREIGN KEY (`ref_id_amigos`)
    REFERENCES `05_amigos` (`id_amigos`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;












-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ---

--
-- Dumping data for table `05_paises`
--

INSERT INTO `05_paises` (`id_paises`, `nome`) VALUES
(1, 'Portugal'),
(2, 'USA'),
(3, 'Reino Unido'),
(4, 'Alemanha'),
(5, 'Espanha');



--
-- Dumping data for table `05_editoras`
--

INSERT INTO `05_editoras` (`id_editoras`, `editora`, `url`, `email`, `morada`, `historia`, `ref_id_paises`) VALUES
(1, 'Vidisco', NULL, NULL, NULL, NULL, 1),
(2, 'Sony', NULL, NULL, NULL, NULL, 2),
(3, '4AD', NULL, NULL, NULL, NULL, 3),
(4, 'Factory Records', NULL, NULL, NULL, NULL, 3),
(5, 'Rough Trade Records', NULL, NULL, NULL, NULL, 3);




--
-- Dumping data for table `05_classificacoes`
--

INSERT INTO `05_classificacoes` (`id_classificacoes`, `valor`) VALUES
(1, 'Muito mau'),
(2, 'Mau'),
(3, 'Razoável'),
(4, 'Bom'),
(5, 'Muito bom');



--
-- Dumping data for table `05_interpretes`
--

INSERT INTO `05_interpretes` (`id_interpretes`, `interprete`, `comentarios`) VALUES
(1, 'The Smiths', NULL),
(2, 'New Order', NULL),
(3, 'Happy Mondays', NULL),
(4, 'Bauhaus', NULL);



--
-- Dumping data for table `05_albuns`
--

INSERT INTO `05_albuns` (`id_albuns`, `titulo`, `ano`, `ref_id_editoras`, `ref_id_interpretes`, `ref_id_classificacoes`) VALUES
(14, 'Strangeways, Here We Come', 1987, 5, 1, 4),
(15, 'The Smiths', 1984, 5, 1, 4),
(16, 'Meat Is Murder', 1985, 5, 1, 4),
(17, 'The Queen Is Dead ', 1986, 5, 1, 5),
(18, 'Movement', 1981, 4, 2, 5),
(19, 'Power, Corruption & Lies', 1983, 4, 2, 4),
(20, 'Low-Life', 1985, 4, 2, 5),
(21, 'Brotherhood', 1986, 4, 2, 4),
(22, 'Technique', 1989, 4, 1, 3),
(23, 'Squirrel and G-Man Twenty Four Hour Party People Plastic Face Carnt Smile (White Out)', 1987, 4, 3, 4),
(24, 'Bummed', 1988, 4, 3, 5),
(25, 'Pills ''n'' Thrills and Bellyaches', 1990, 4, 3, 5),
(26, 'Yes Please!', 1992, 4, 3, 3),
(27, 'In the Flat Field', 1980, 3, 4, 5),
(28, 'Mask', 1981, 3, 4, 4),
(29, 'The Sky''s Gone Out', 1982, 3, 4, 4),
(30, 'Burning from the Inside', 1983, 3, 4, 4),
(31, 'Go Away White', 2008, 3, 4, 3);



--
-- Dumping data for table `05_Amigos`
--

INSERT INTO `05_amigos` (`id_amigos`, `nome`, `data_nascimento`, `morada`, `email`) VALUES
(2, 'Carlos Santos', '1971-01-01', NULL, 'carlossantos@ua.pt'),
(3, 'Pedro Beça', '1976-02-02', NULL, 'pedro@ua.pt'),
(4, 'Nuno Ribeiro', '1985-06-12', NULL, 'nribeiro@ua.pt'),
(5, 'Vera Almeida', '1996-09-10', NULL, 'veraalmeida@gmail.com'),
(6, 'Ana Sousa', '1994-07-03', NULL, 'ana.sousa@gmail.com'),
(7, 'André Pinto', '1998-09-04', NULL, 'pintinho@ua.pt'),
(8, 'Sérgio Monteiro', '1995-12-11', NULL, 'monteiro@gmail.com'),
(9, 'Lurdes Silva', '1992-04-03', NULL, 'lsilva@sapo.pt'),
(10, 'Cristina Andrade', '1976-12-09', NULL, 'cristinaa@gmail.com'),
(11, 'António Manuel', '1992-02-09', NULL, 'maneli@sapo.pt');

