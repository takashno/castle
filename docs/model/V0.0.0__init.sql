-- MySQL Script generated by MySQL Workbench
-- Thu Jan  4 12:58:23 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema castledb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema castledb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `castledb` DEFAULT CHARACTER SET utf8mb4 ;
USE `castledb` ;

-- -----------------------------------------------------
-- Table `castledb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`users` (
  `id` VARCHAR(60) NOT NULL,
  `first_name` VARCHAR(60) NULL,
  `last_name` VARCHAR(60) NULL,
  `system_name` VARCHAR(60) NULL,
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
PACK_KEYS = Default;


-- -----------------------------------------------------
-- Table `castledb`.`skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`skills` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `name` VARCHAR(300) NOT NULL,
  `category_id` VARCHAR(60) NOT NULL,
  `parent_skill_id` VARCHAR(60) NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `castledb`.`programs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`programs` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `name` VARCHAR(300) NOT NULL,
  `microsyllabus_id` VARCHAR(60) NOT NULL,
  `content_id` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `castledb`.`microsyllabus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`microsyllabus` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `name` VARCHAR(300) NOT NULL,
  `category_id` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `castledb`.`contents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`contents` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `name` VARCHAR(60) NOT NULL,
  `type` ENUM('html', 'video', 'test') NOT NULL,
  `public_path` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `castledb`.`contentevaluations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`contentevaluations` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `content_id` VARCHAR(45) NOT NULL,
  `user_id` VARCHAR(45) NOT NULL,
  `point` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`content_id`, `user_id`));


-- -----------------------------------------------------
-- Table `castledb`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`categories` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `name` VARCHAR(300) NOT NULL,
  `parent_category_id` VARCHAR(60) NULL,
  `type` ENUM('skill', 'knowledge') NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `castledb`.`knowledges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`knowledges` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `name` VARCHAR(300) NOT NULL,
  `category_id` VARCHAR(60) NOT NULL,
  `content_id` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `castledb`.`discussions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`discussions` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `content_id` VARCHAR(60) NOT NULL,
  `project_id` VARCHAR(60) NOT NULL,
  `issue_iid` VARCHAR(60) NOT NULL,
  `founder` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `castledb`.`tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`tags` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `content_id` VARCHAR(60) NOT NULL,
  `m_tag_id` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`content_id`, `m_tag_id`));


-- -----------------------------------------------------
-- Table `castledb`.`m_tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `castledb`.`m_tag` (
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` VARCHAR(60) NOT NULL DEFAULT 'system',
  `update_time` TIMESTAMP NULL,
  `update_user` VARCHAR(60) NULL,
  `is_delete` TINYINT(1) NOT NULL DEFAULT 0,
  `id` VARCHAR(60) NOT NULL,
  `name` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`id`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
