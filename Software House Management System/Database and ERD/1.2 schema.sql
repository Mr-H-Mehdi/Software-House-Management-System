-- MySQL Script generated by MySQL Workbench
-- Wed Dec 28 10:38:16 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Schema tt2
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tt2` ;

-- -----------------------------------------------------
-- Schema tt2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tt2`;
USE `tt2` ;

-- -----------------------------------------------------
-- Table `Employee`
-- -----------------------------------------------------
-- DROP TABLE IF EXISTS `Employee` ;

-- CREATE TABLE IF NOT EXISTS `Employee` (
--   `EmployeeId` VARCHAR(20) ,
--   `Role` VARCHAR(45) ,
--   `TeamId` VARCHAR(20) ,
--   `RankId` VARCHAR(20) ,
--   `EmployeeSSN` INT ,
--   `password` VARCHAR(15),
--   PRIMARY KEY (`EmployeeId`),
--   CONSTRAINT `fk_Employee_Team1`
--     FOREIGN KEY (`TeamId`)
--     REFERENCES `Team` (`TeamId`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_Employee_Rank1`
--     FOREIGN KEY (`RankId`)
--     REFERENCES `Rank` (`RankId`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_Employee_Employee_Det1`
--     FOREIGN KEY (`EmployeeSSN`)
--     REFERENCES `Employee_Det` (`EmployeeSSN`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION)
-- ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Branch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Branch` ;

CREATE TABLE IF NOT EXISTS `Branch` (
  `BranchId` VARCHAR(10) ,
  `BranchLocation` VARCHAR(45) ,
  `BranchDeptCount` VARCHAR(45) ,
  PRIMARY KEY (`BranchId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Department`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Department` ;

CREATE TABLE IF NOT EXISTS `Department` (
  `DepartmentId` VARCHAR(10) ,
  `DepartmentName` VARCHAR(45) ,
  `BranchId` VARCHAR(10) ,
  PRIMARY KEY (`DepartmentId`),
  CONSTRAINT `fk_Department_Branch1`
    FOREIGN KEY (`BranchId`)
    REFERENCES `Branch` (`BranchId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Department_Branch1_idx` ON `Department` (`BranchId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Client`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Client` ;

CREATE TABLE IF NOT EXISTS `Client` (
  `ClientId` VARCHAR(20) ,
  `ClientName` VARCHAR(45) ,
  `ClientEmail` VARCHAR(45) ,
  PRIMARY KEY (`ClientId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Order` ;

CREATE TABLE IF NOT EXISTS `Order` (
  `OrderId` VARCHAR(20) ,
  `ClientId` VARCHAR(20) ,
  PRIMARY KEY (`OrderId`),
  CONSTRAINT `fk_Order_Client1`
    FOREIGN KEY (`ClientId`)
    REFERENCES `Client` (`ClientId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Order_Client1_idx` ON `Order` (`ClientId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Project`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Project` ;

CREATE TABLE IF NOT EXISTS `Project` (
  `ProjectId` VARCHAR(20) ,
  `ProjectRequirements` VARCHAR(45) ,
  `OrderId` VARCHAR(20) ,
  PRIMARY KEY (`ProjectId`),
  CONSTRAINT `fk_Project_Order1`
    FOREIGN KEY (`OrderId`)
    REFERENCES `Order` (`OrderId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Project_Order1_idx` ON `Project` (`OrderId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Team`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Team` ;

CREATE TABLE IF NOT EXISTS `Team` (
  `TeamId` VARCHAR(20) ,
  `TeamTitle` VARCHAR(45) ,
  `BranchId` VARCHAR(10) ,
  `DepartmentId` VARCHAR(10),
  `ProjectId` VARCHAR(20) ,
  
  PRIMARY KEY (`TeamId`),
  CONSTRAINT `fk_Team_Branch`
    FOREIGN KEY (`BranchId`)
    REFERENCES `Branch` (`BranchId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  constraint `fk_Team_Dept`
	foreign key(`DepartmentId`)
    references `Department`(`DepartmentId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Team_Project1`
    FOREIGN KEY (`ProjectId`)
    REFERENCES `Project` (`ProjectId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Team_Branch_idx` ON `Team` (`BranchId` ASC) VISIBLE;

CREATE INDEX `fk_Team_Project1_idx` ON `Team` (`ProjectId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Rank`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Rank` ;

CREATE TABLE IF NOT EXISTS `Rank` (
  `RankId` VARCHAR(20) ,
  `RankName` VARCHAR(45) ,
  PRIMARY KEY (`RankId`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `Salary`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Salary` ;

CREATE TABLE IF NOT EXISTS `Salary` (
  `SalaryId` INT ,
  `SalaryAmount` FLOAT ,
  `RankId` VARCHAR(20) ,
  PRIMARY KEY (`SalaryId`),
  CONSTRAINT `fk_Salary_Rank1`
    FOREIGN KEY (`RankId`)
    REFERENCES `Rank` (`RankId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Salary_Rank1_idx` ON `Salary` (`RankId` ASC) VISIBLE;



-- -----------------------------------------------------
-- Table `Employee_Det`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Employee_Det` ;

CREATE TABLE IF NOT EXISTS `Employee_Det` (
  `EmployeeSSN` INT ,
  `EmployeeName` VARCHAR(45),
  `EmployeeSex` VARCHAR(15) ,
  `EmployeePhone` INT ,
  `EmployeeEmail` VARCHAR(45) ,
  `EmployeeAddress` VARCHAR(45) ,
  PRIMARY KEY (`EmployeeSSN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Employee` ;

CREATE TABLE IF NOT EXISTS `Employee` (
  `EmployeeId` VARCHAR(20) ,
  `Role` VARCHAR(45) ,
  `TeamId` VARCHAR(20) ,
  `RankId` VARCHAR(20) ,
  `EmployeeSSN` INT ,
  `password` VARCHAR(15) ,
  PRIMARY KEY (`EmployeeId`),
  CONSTRAINT `fk_Employee_Team1`
    FOREIGN KEY (`TeamId`)
    REFERENCES `Team` (`TeamId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Rank1`
    FOREIGN KEY (`RankId`)
    REFERENCES `Rank` (`RankId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_Employee_Det1`
    FOREIGN KEY (`EmployeeSSN`)
    REFERENCES `Employee_Det` (`EmployeeSSN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Employee_Team1_idx` ON `Employee` (`TeamId` ASC) VISIBLE;

CREATE INDEX `fk_Employee_Rank1_idx` ON `Employee` (`RankId` ASC) VISIBLE;

CREATE INDEX `fk_Employee_Employee_Det1_idx` ON `Employee` (`EmployeeSSN` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Internee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Internee` ;

CREATE TABLE IF NOT EXISTS `Internee` (
  `InterneeId` VARCHAR(20) ,
  `InterneeName` VARCHAR(45) ,
  `InterneeEmail` VARCHAR(45) ,
  `InterneeTimeRem` VARCHAR(45) ,
  `InterneeCategory` VARCHAR(45) ,
  `TeamId` VARCHAR(20) ,
  PRIMARY KEY (`InterneeId`),
  CONSTRAINT `fk_Internee_Team1`
    FOREIGN KEY (`TeamId`)
    REFERENCES `Team` (`TeamId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Internee_Team1_idx` ON `Internee` (`TeamId` ASC) VISIBLE;



-- -----------------------------------------------------
-- Table `Team_has_Lead`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Team_has_Lead` ;

CREATE TABLE IF NOT EXISTS `Team_has_Lead` (
  `EmployeeId` VARCHAR(20) ,
  `TeamId` VARCHAR(20) ,
  PRIMARY KEY (`EmployeeId`, `TeamId`),
  CONSTRAINT `fk_Team_has_Lead_Employee1`
    FOREIGN KEY (`EmployeeId`)
    REFERENCES `Employee` (`EmployeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Team_has_Lead_Team1`
    FOREIGN KEY (`TeamId`)
    REFERENCES `Team` (`TeamId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Team_has_Lead_Team1_idx` ON `Team_has_Lead` (`TeamId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Order_Details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Order_Details` ;

CREATE TABLE IF NOT EXISTS `Order_Details` (
  `OrderId` VARCHAR(20) ,
  `Details` VARCHAR(100) ,
  `Pricing`  Float,
  `Order_Status` VARCHAR(20) ,
  PRIMARY KEY (`OrderId`),
  CONSTRAINT `fk_Order_Status_Order1`
    FOREIGN KEY (`OrderId`)
    REFERENCES `Order` (`OrderId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Applicant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Applicant` ;

CREATE TABLE IF NOT EXISTS `Applicant` (
  `ApplicantSSN` INT ,
  `ApplicantName` VARCHAR(45) ,
  `ApplicantEmail` VARCHAR(45) ,
  `ApplicantQualification` VARCHAR(60) ,
  PRIMARY KEY (`ApplicantSSN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Attendance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Attendance` ;

CREATE TABLE IF NOT EXISTS `Attendance` (
  `EmployeeId` VARCHAR(20) ,
  `Date` DATE NOT NULL,
  `Status` VARCHAR(20) ,
  PRIMARY KEY (`EmployeeId`, `Date`),
  CONSTRAINT `fk_Attendance_Employee1`
    FOREIGN KEY (`EmployeeId`)
    REFERENCES `Employee` (`EmployeeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Attendance_Employee1_idx` ON `Attendance` (`EmployeeId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Administration`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Administration` ;

CREATE TABLE IF NOT EXISTS `Administration` (
  `AdminId` VARCHAR(20) ,
  `AdminName` VARCHAR(45) ,
  `AdminEmail` VARCHAR(45) ,
  `AdminRole` VARCHAR(45) ,
  `BranchId` VARCHAR(10) ,
  `password` VARCHAR(15) ,
  PRIMARY KEY (`AdminId`),
  CONSTRAINT `fk_Administration_Branch1`
    FOREIGN KEY (`BranchId`)
    REFERENCES `Branch` (`BranchId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Administration_Branch1_idx` ON `Administration` (`BranchId` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `Department_has_Applicant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Department_has_Applicant` ;

CREATE TABLE IF NOT EXISTS `Department_has_Applicant` (
  `DepartmentId` VARCHAR(10) ,
  `ApplicantSSN` INT ,
  `InterviewDate` DATE ,
  PRIMARY KEY (`DepartmentId`, `ApplicantSSN`),
  CONSTRAINT `fk_Department_has_Applicant_Department1`
    FOREIGN KEY (`DepartmentId`)
    REFERENCES `Department` (`DepartmentId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Department_has_Applicant_Applicant1`
    FOREIGN KEY (`ApplicantSSN`)
    REFERENCES `Applicant` (`ApplicantSSN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Department_has_Applicant_Department1_idx` ON `Department_has_Applicant` (`DepartmentId` ASC) VISIBLE;


-- employee view
drop view empp;
create view empp as select ed.employeessn , e.employeeid, ed.employeename, e.teamid, e.rankid, ed.employeeemail, ed.employeephone
from employee e join employee_det ed on e.EmployeeSSN, ed.EmployeeSSN;



