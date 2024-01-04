-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mini_ecole
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mini_ecole` ;

-- -----------------------------------------------------
-- Schema mini_ecole
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mini_ecole` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mini_ecole` ;

-- -----------------------------------------------------
-- Table `mini_ecole`.`filieres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mini_ecole`.`filieres` ;

CREATE TABLE IF NOT EXISTS `mini_ecole`.`filieres` (
  `Code_Filiere` VARCHAR(8) CHARACTER SET 'utf8mb3' NOT NULL,
  `Niveau` VARCHAR(40) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `Nom_Filiere` VARCHAR(45) CHARACTER SET 'utf8mb3' NOT NULL,
  `Observations` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  PRIMARY KEY (`Code_Filiere`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mini_ecole`.`scolarite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mini_ecole`.`scolarite` ;

CREATE TABLE IF NOT EXISTS `mini_ecole`.`scolarite` (
  `Anne_Scolaire` VARCHAR(9) CHARACTER SET 'utf8mb3' NOT NULL,
  `Debut` DATE NOT NULL,
  `Fin` DATE NOT NULL,
  `Archive` CHAR(1) CHARACTER SET 'utf8mb3' NULL DEFAULT '0',
  `Date_Archive` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`Anne_Scolaire`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mini_ecole`.`stagiaires`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mini_ecole`.`stagiaires` ;

CREATE TABLE IF NOT EXISTS `mini_ecole`.`stagiaires` (
  `Code_Stagiaire` VARCHAR(8) CHARACTER SET 'utf8mb3' NOT NULL,
  `Nom` VARCHAR(45) CHARACTER SET 'utf8mb3' NOT NULL,
  `Prenom` VARCHAR(20) NOT NULL,
  `Naissance` DATE NULL DEFAULT NULL,
  `Niveau_scolaire` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `Gsm` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `Adresse` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `photo` MEDIUMBLOB NULL,
  PRIMARY KEY (`Code_Stagiaire`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mini_ecole`.`inscriptions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mini_ecole`.`inscriptions` ;

CREATE TABLE IF NOT EXISTS `mini_ecole`.`inscriptions` (
  `Date_Inscription` DATE NULL DEFAULT NULL,
  `Montant_total_a_payer` FLOAT(6,2) NULL DEFAULT NULL,
  `Nombre_echeances` INT NULL DEFAULT '10',
  `montant_Echeance` FLOAT(6,2) NULL DEFAULT NULL,
  `Code_Stagiaire` VARCHAR(8) CHARACTER SET 'utf8mb3' NOT NULL,
  `Code_Filiere` VARCHAR(8) CHARACTER SET 'utf8mb3' NOT NULL,
  `Anne_Scolaire` VARCHAR(9) CHARACTER SET 'utf8mb3' NOT NULL,
  PRIMARY KEY (`Code_Stagiaire`, `Code_Filiere`, `Anne_Scolaire`),
  CONSTRAINT `fk_inscriptions_filieres1`
    FOREIGN KEY (`Code_Filiere`)
    REFERENCES `mini_ecole`.`filieres` (`Code_Filiere`),
  CONSTRAINT `fk_inscriptions_scolarite1`
    FOREIGN KEY (`Anne_Scolaire`)
    REFERENCES `mini_ecole`.`scolarite` (`Anne_Scolaire`),
  CONSTRAINT `fk_inscriptions_stagiaires`
    FOREIGN KEY (`Code_Stagiaire`)
    REFERENCES `mini_ecole`.`stagiaires` (`Code_Stagiaire`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_inscriptions_filieres1_idx` ON `mini_ecole`.`inscriptions` (`Code_Filiere` ASC) VISIBLE;

CREATE INDEX `fk_inscriptions_scolarite1_idx` ON `mini_ecole`.`inscriptions` (`Anne_Scolaire` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mini_ecole`.`paiements`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mini_ecole`.`paiements` ;

CREATE TABLE IF NOT EXISTS `mini_ecole`.`paiements` (
  `idpaiements` INT NOT NULL AUTO_INCREMENT,
  `montant_E` DECIMAL(5,2) NOT NULL DEFAULT '0.00',
  `date_P` DATE NULL DEFAULT NULL,
  `echeance` VARCHAR(45) NULL DEFAULT NULL,
  `Code_Stagiaire` VARCHAR(8) CHARACTER SET 'utf8mb3' NOT NULL,
  `Filiere` VARCHAR(8) CHARACTER SET 'utf8mb3' NOT NULL,
  `Anne_Scolaire` VARCHAR(9) CHARACTER SET 'utf8mb3' NOT NULL,
  PRIMARY KEY (`idpaiements`),
  CONSTRAINT `fk_paiements_inscriptions1`
    FOREIGN KEY (`Code_Stagiaire` , `Filiere` , `Anne_Scolaire`)
    REFERENCES `mini_ecole`.`inscriptions` (`Code_Stagiaire` , `Code_Filiere` , `Anne_Scolaire`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_paiements_inscriptions1_idx` ON `mini_ecole`.`paiements` (`Code_Stagiaire` ASC, `Filiere` ASC, `Anne_Scolaire` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
