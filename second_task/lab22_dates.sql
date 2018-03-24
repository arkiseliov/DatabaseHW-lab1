-- MySQL Script generated by MySQL Workbench
-- 03/24/18 23:28:47
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema addwork
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema addwork
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `addwork` ;
USE `addwork` ;

-- -----------------------------------------------------
-- Table `addwork`.`dates`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `addwork`.`dates` (
  `id_value` INT NOT NULL AUTO_INCREMENT,
  `date_begin` DATETIME NOT NULL,
  `date_end` DATETIME NOT NULL,
  PRIMARY KEY (`id_value`),
  INDEX `type_id_date_UNIQUE` (`id_value` ASC),
  CONSTRAINT `fk_id`
    FOREIGN KEY (`id_value`)
    REFERENCES `addwork`.`works` (`id_works`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
