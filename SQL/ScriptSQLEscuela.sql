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

