-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SmartWebStore
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `SmartWebStore` ;

-- -----------------------------------------------------
-- Schema SmartWebStore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SmartWebStore` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `SmartWebStore` ;

-- -----------------------------------------------------
-- Table `SmartWebStore`.`brands`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartWebStore`.`brands` ;

CREATE TABLE IF NOT EXISTS `SmartWebStore`.`brands` (
  `brandCode` INT NOT NULL AUTO_INCREMENT,
  `brandName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`brandCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartWebStore`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartWebStore`.`products` ;

CREATE TABLE IF NOT EXISTS `SmartWebStore`.`products` (
  `prodCode` INT NOT NULL AUTO_INCREMENT,
  `prodName` VARCHAR(50) NOT NULL,
  `prodPrice` DECIMAL(8,2) NOT NULL,
  `prodDescription` VARCHAR(600) NOT NULL,
  `prodDateManufacturer` DATE NOT NULL,
  `prodWarranty` VARCHAR(20) NOT NULL,
  `image` VARCHAR(100) NOT NULL,
  `fkBrandCode` INT NOT NULL,
  PRIMARY KEY (`prodCode`),
  INDEX `fk_BrandCode_idx` (`fkBrandCode` ASC) VISIBLE,
  CONSTRAINT `fkBrandCode`
    FOREIGN KEY (`fkBrandCode`)
    REFERENCES `SmartWebStore`.`brands` (`brandCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartWebStore`.`colors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartWebStore`.`colors` ;

CREATE TABLE IF NOT EXISTS `SmartWebStore`.`colors` (
  `colCode` INT NOT NULL AUTO_INCREMENT,
  `colName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`colCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartWebStore`.`producthascolors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartWebStore`.`producthascolors` ;

CREATE TABLE IF NOT EXISTS `SmartWebStore`.`producthascolors` (
  `prodHasColorCode` INT NOT NULL AUTO_INCREMENT,
  `prodCode` INT NOT NULL,
  `colCode` INT NOT NULL,
  INDEX `fk_PRODUCTS_has_COLOR_COLOR1_idx` (`colCode` ASC) VISIBLE,
  INDEX `fk_PRODUCTS_has_COLOR_PRODUCTS1_idx` (`prodCode` ASC) VISIBLE,
  PRIMARY KEY (`prodHasColorCode`),
  CONSTRAINT `fk_PRODUCTS_has_COLOR_PRODUCTS1`
    FOREIGN KEY (`prodCode`)
    REFERENCES `SmartWebStore`.`products` (`prodCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUCTS_has_COLOR_COLOR1`
    FOREIGN KEY (`colCode`)
    REFERENCES `SmartWebStore`.`colors` (`colCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
