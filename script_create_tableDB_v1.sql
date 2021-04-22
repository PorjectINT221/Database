-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SmartStock
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SmartStock` ;

-- -----------------------------------------------------
-- Schema SmartStock
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SmartStock` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `SmartStock` ;

-- -----------------------------------------------------
-- Table `SmartStock`.`BRANDS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`BRANDS` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`BRANDS` (
  `brandCode` INT NOT NULL AUTO_INCREMENT,
  `brandName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`brandCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartStock`.`PRODUCTS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`PRODUCTS` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`PRODUCTS` (
  `prodCode` INT NOT NULL AUTO_INCREMENT,
  `prodName` VARCHAR(50) NOT NULL,
  `prodPrice` DECIMAL(8,2) NOT NULL,
  `prodImage` MEDIUMBLOB NOT NULL,
  `prodDescription` VARCHAR(300) NOT NULL,
  `prodDateManufacturer` DATE NOT NULL,
  `fkBrandCode` INT NOT NULL,
  PRIMARY KEY (`prodCode`, `fkBrandCode`),
  INDEX `fk_PRODUCTS_Brand1_idx` (`fkBrandCode` ASC) VISIBLE,
  CONSTRAINT `fk_PRODUCTS_Brand1`
    FOREIGN KEY (`fkBrandCode`)
    REFERENCES `SmartStock`.`BRANDS` (`brandCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartStock`.`COLORS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`COLORS` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`COLORS` (
  `colCode` INT NOT NULL AUTO_INCREMENT,
  `colName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`colCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartStock`.`ProductHasColors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`ProductHasColors` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`ProductHasColors` (
  `prodHasColorCode` INT NOT NULL AUTO_INCREMENT,
  `productProdCode` INT NOT NULL,
  `colorColCode` INT NOT NULL,
  INDEX `fk_PRODUCTS_has_COLOR_COLOR1_idx` (`colorColCode` ASC) VISIBLE,
  INDEX `fk_PRODUCTS_has_COLOR_PRODUCTS1_idx` (`productProdCode` ASC) VISIBLE,
  PRIMARY KEY (`prodHasColorCode`),
  CONSTRAINT `fk_PRODUCTS_has_COLOR_PRODUCTS1`
    FOREIGN KEY (`productProdCode`)
    REFERENCES `SmartStock`.`PRODUCTS` (`prodCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUCTS_has_COLOR_COLOR1`
    FOREIGN KEY (`colorColCode`)
    REFERENCES `SmartStock`.`COLORS` (`colCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
