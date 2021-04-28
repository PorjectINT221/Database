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
-- Table `SmartStock`.`brands`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`brands` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`brands` (
  `brandCode` INT NOT NULL AUTO_INCREMENT,
  `brandName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`brandCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartStock`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`products` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`products` (
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
  CONSTRAINT `fk_BrandCode`
    FOREIGN KEY (`fkBrandCode`)
    REFERENCES `SmartStock`.`brands` (`brandCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartStock`.`colors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`colors` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`colors` (
  `colCode` INT NOT NULL AUTO_INCREMENT,
  `colName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`colCode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartStock`.`producthascolors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`producthascolors` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`producthascolors` (
  `prodHasColorCode` INT NOT NULL AUTO_INCREMENT,
  `prodCode` INT NOT NULL,
  `colCode` INT NOT NULL,
  INDEX `fk_PRODUCTS_has_COLOR_COLOR1_idx` (`colCode` ASC) VISIBLE,
  INDEX `fk_PRODUCTS_has_COLOR_PRODUCTS1_idx` (`prodCode` ASC) VISIBLE,
  PRIMARY KEY (`prodHasColorCode`),
  CONSTRAINT `fk_PRODUCTS_has_COLOR_PRODUCTS1`
    FOREIGN KEY (`prodCode`)
    REFERENCES `SmartStock`.`products` (`prodCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUCTS_has_COLOR_COLOR1`
    FOREIGN KEY (`colCode`)
    REFERENCES `SmartStock`.`colors` (`colCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
