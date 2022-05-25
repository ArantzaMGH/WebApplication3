-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema TAREA1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TAREA1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TAREA1` DEFAULT CHARACTER SET utf8 ;
USE `TAREA1` ;

-- -----------------------------------------------------
-- Table `TAREA1`.`TBL_PRODUCTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TAREA1`.`TBL_PRODUCTO` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` VARCHAR(45) NOT NULL,
  `DESCRIPCION` VARCHAR(45) NOT NULL,
  `URL` VARCHAR(45) NOT NULL,
  `PRECIO` VARCHAR(45) NOT NULL,
  `COSTO` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TAREA1`.`TBL_PROVEDOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TAREA1`.`TBL_PROVEDOR` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NOMBRE` VARCHAR(45) NOT NULL,
  `TBL_PRODUCTO_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_TBL_PROVEDOR_TBL_PRODUCTO1`
    FOREIGN KEY (`TBL_PRODUCTO_ID`)
    REFERENCES `TAREA1`.`TBL_PRODUCTO` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_TBL_PROVEDOR_TBL_PRODUCTO1_idx` ON `TAREA1`.`TBL_PROVEDOR` (`TBL_PRODUCTO_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `TAREA1`.`TBL_MARCA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TAREA1`.`TBL_MARCA` (
  `ID` INT NOT NULL,
  `NOMBRE` VARCHAR(45) NOT NULL,
  `DESCRIPCION` VARCHAR(45) NOT NULL,
  `URL` VARCHAR(45) NOT NULL,
  `TBL_PRODUCTO_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_TBL_MARCA_TBL_PRODUCTO1`
    FOREIGN KEY (`TBL_PRODUCTO_ID`)
    REFERENCES `TAREA1`.`TBL_PRODUCTO` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_TBL_MARCA_TBL_PRODUCTO1_idx` ON `TAREA1`.`TBL_MARCA` (`TBL_PRODUCTO_ID` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;