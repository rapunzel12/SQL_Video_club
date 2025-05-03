-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema video_club
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `video_club` ;

-- -----------------------------------------------------
-- Schema video_club
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `video_club` ;
USE `video_club` ;

-- -----------------------------------------------------
-- Table `video_club`.`VideoTape`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_club`.`VideoTape` ;

CREATE TABLE IF NOT EXISTS `video_club`.`VideoTape` (
  `idVideoTape` INT NOT NULL AUTO_INCREMENT,
  `Duration` INT NULL,
  PRIMARY KEY (`idVideoTape`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `video_club`.`Genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_club`.`Genre` ;

CREATE TABLE IF NOT EXISTS `video_club`.`Genre` (
  `idGenre` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`idGenre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `video_club`.`Movie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_club`.`Movie` ;

CREATE TABLE IF NOT EXISTS `video_club`.`Movie` (
  `idMovie` INT NOT NULL AUTO_INCREMENT,
  `Title` VARCHAR(45) NULL,
  `Duration` INT NULL,
  `Grade` INT NULL,
  `price` DOUBLE NULL,
  `idGenre` INT NULL,
  PRIMARY KEY (`idMovie`),
  CONSTRAINT `fk_Movie_Genre1`
    FOREIGN KEY (`idGenre`)
    REFERENCES `video_club`.`Genre` (`idGenre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Movie_Genre1_idx` ON `video_club`.`Movie` (`idGenre` ASC);


-- -----------------------------------------------------
-- Table `video_club`.`Member`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_club`.`Member` ;

CREATE TABLE IF NOT EXISTS `video_club`.`Member` (
  `idMember` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`idMember`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `video_club`.`Borrowed`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_club`.`Borrowed` ;

CREATE TABLE IF NOT EXISTS `video_club`.`Borrowed` (
  `idBorrowed` INT NOT NULL AUTO_INCREMENT,
  `idVideoTape` INT NULL,
  `idMovie` INT NULL,
  `NumberOfDays` INT NULL,
  `idMember` INT NULL,
  PRIMARY KEY (`idBorrowed`),
  CONSTRAINT `fk_table1_VideoTape1`
    FOREIGN KEY (`idVideoTape`)
    REFERENCES `video_club`.`VideoTape` (`idVideoTape`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_table1_Movie1`
    FOREIGN KEY (`idMovie`)
    REFERENCES `video_club`.`Movie` (`idMovie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Borrowed_Member1`
    FOREIGN KEY (`idMember`)
    REFERENCES `video_club`.`Member` (`idMember`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_table1_VideoTape1_idx` ON `video_club`.`Borrowed` (`idVideoTape` ASC);

CREATE INDEX `fk_table1_Movie1_idx` ON `video_club`.`Borrowed` (`idMovie` ASC);

CREATE INDEX `fk_Borrowed_Member1_idx` ON `video_club`.`Borrowed` (`idMember` ASC);


-- -----------------------------------------------------
-- Table `video_club`.`Contains`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `video_club`.`Contains` ;

CREATE TABLE IF NOT EXISTS `video_club`.`Contains` (
  `idVideoTape` INT NOT NULL,
  `idMovie` INT NOT NULL,
  PRIMARY KEY (`idVideoTape`, `idMovie`),
  CONSTRAINT `fk_VideoTape_has_Movie_VideoTape1`
    FOREIGN KEY (`idVideoTape`)
    REFERENCES `video_club`.`VideoTape` (`idVideoTape`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VideoTape_has_Movie_Movie1`
    FOREIGN KEY (`idMovie`)
    REFERENCES `video_club`.`Movie` (`idMovie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_VideoTape_has_Movie_Movie1_idx` ON `video_club`.`Contains` (`idMovie` ASC);

CREATE INDEX `fk_VideoTape_has_Movie_VideoTape1_idx` ON `video_club`.`Contains` (`idVideoTape` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
