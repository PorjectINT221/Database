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
  `brand_code` INT NOT NULL AUTO_INCREMENT,
  `brand_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`brand_code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SmartStock`.`PRODUCTS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`PRODUCTS` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`PRODUCTS` (
  `prod_code` INT NOT NULL AUTO_INCREMENT,
  `prod_name` VARCHAR(50) NOT NULL,
  `prod_price` DECIMAL(8,2) NOT NULL,
  `prod_image` MEDIUMBLOB NOT NULL,
  `prod_description` VARCHAR(300) NOT NULL,
  `prod_date_manufacturer` DATE NOT NULL,
  `fk_brand_code` INT NOT NULL,
  PRIMARY KEY (`prod_code`, `fk_brand_code`),
  INDEX `fk_PRODUCTS_Brand1_idx` (`fk_brand_code` ASC) VISIBLE,
  CONSTRAINT `fk_PRODUCTS_Brand1`
    FOREIGN KEY (`fk_brand_code`)
    REFERENCES `SmartStock`.`BRANDS` (`brand_code`)
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
-- Table `SmartStock`.`PRODUCTS_has_COLOR`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SmartStock`.`PRODUCTS_has_COLOR` ;

CREATE TABLE IF NOT EXISTS `SmartStock`.`PRODUCTS_has_COLOR` (
  `prod_has_color_code` INT NOT NULL AUTO_INCREMENT,
  `PRODUCTS_prod_code` INT NOT NULL,
  `COLOR_col_code` INT NOT NULL,
  INDEX `fk_PRODUCTS_has_COLOR_COLOR1_idx` (`COLOR_col_code` ASC) VISIBLE,
  INDEX `fk_PRODUCTS_has_COLOR_PRODUCTS1_idx` (`PRODUCTS_prod_code` ASC) VISIBLE,
  PRIMARY KEY (`prod_has_color_code`),
  CONSTRAINT `fk_PRODUCTS_has_COLOR_PRODUCTS1`
    FOREIGN KEY (`PRODUCTS_prod_code`)
    REFERENCES `SmartStock`.`PRODUCTS` (`prod_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUCTS_has_COLOR_COLOR1`
    FOREIGN KEY (`COLOR_col_code`)
    REFERENCES `SmartStock`.`COLORS` (`colCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
