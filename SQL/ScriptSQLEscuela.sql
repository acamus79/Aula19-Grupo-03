Legajo-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Localidad` (
  `idLocalidad` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idLocalidad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alumno` (
  `Legajo` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Localidad` INT NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Legajo`),
  INDEX `fk_localidad_idx` (`Localidad` ASC) VISIBLE,
  CONSTRAINT `fk_localidad`
    FOREIGN KEY (`Localidad`)
    REFERENCES `mydb`.`Localidad` (`idLocalidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carrera` (
  `idCarrera` INT NOT NULL,
  `NombreCarrera` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Materias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Materias` (
  `idMaterias` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Carrera` INT NOT NULL,
  PRIMARY KEY (`idMaterias`),
  INDEX `fk_carrera_idx` (`Carrera` ASC) VISIBLE,
  CONSTRAINT `fk_carrera`
    FOREIGN KEY (`Carrera`)
    REFERENCES `mydb`.`Carrera` (`idCarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AlumnoXMaterias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`AlumnoXMaterias` (
  `Legajo` INT NOT NULL,
  `IdMateria` INT NOT NULL,
  `Nota` INT NULL,
  PRIMARY KEY (`Legajo`, `IdMateria`),
  INDEX `fk_materia_idx` (`IdMateria` ASC) VISIBLE,
  CONSTRAINT `fk_legajo`
    FOREIGN KEY (`Legajo`)
    REFERENCES `mydb`.`Alumno` (`Legajo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materia`
    FOREIGN KEY (`IdMateria`)
    REFERENCES `mydb`.`Materias` (`idMaterias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
