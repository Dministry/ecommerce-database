DROP DATABASE IF EXISTS `ecommerce`;
CREATE DATABASE `ecommerce`; 
USE `ecommerce`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `product` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(50) NOT NULL,
  `product_description` VARCHAR(50),
  `product_image` VARCHAR(100),
  `cost` DECIMAL(4,2),
  `product_cat_id` INT,
  PRIMARY KEY (`product_id`)
);
-- ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `shopping` (
  `shopping_id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NOT NULL,
  `product_cat_id` INT,
  PRIMARY KEY (`shopping_id`)
);

CREATE TABLE `user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` INT NOT NULL,
  `password` INT,
  PRIMARY KEY (`user_id`)
);

CREATE TABLE `oder` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NOT NULL,
  `customer_id` INT,
  `date` TIMESTAMP,
  `total` DECIMAL(4,2),
  PRIMARY KEY (`order_id`)
);

CREATE TABLE `delivery` (
  `delivery_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(20),
  `address` VARCHAR(50),
  `email` VARCHAR(50),
  `city` VARCHAR(50),
  `state` VARCHAR(50),
  `country` VARCHAR(50),
  PRIMARY KEY (`delivery_id`)
);

CREATE TABLE `cart` (
  `cart_id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NOT NULL,
  `customecartr_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`cart_id`)
);

CREATE TABLE `payment` (
  `payment_id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `date` TIMESTAMP,
  `price` DECIMAL(4,2),
  `payment_status` INT NOT NULL,
  PRIMARY KEY (`payment_id`)
);
