CREATE SCHEMA `shop` ;

CREATE TABLE `shop`.`products` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name_id` INT(11) NOT NULL,
  `type_id` INT(11) NOT NULL,
  `condition_id` INT(11) NOT NULL,
  `price` INT(11) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `shop`.`names` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` INT(11) NOT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `shop`.`names` 
  CHANGE COLUMN `name` `name` VARCHAR(45) NOT NULL ;

CREATE TABLE `shop`.`types` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `shop`.`conditions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `condition` INT(11) NOT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `shop`.`conditions` 
  CHANGE COLUMN `condition` `condition` VARCHAR(45) NOT NULL ;

INSERT INTO `shop`.`conditions` (`condition`) VALUES ('used');
INSERT INTO `shop`.`conditions` (`condition`) VALUES ('new');

INSERT INTO `shop`.`names` (`name`) VALUES ('tranny');
INSERT INTO `shop`.`names` (`name`) VALUES ('chip');
INSERT INTO `shop`.`names` (`name`) VALUES ('diode');

INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('1', '2', '2', '5');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('1', '1', '2', '5');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('1', '3', '2', '5');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('2', '5', '2', '20');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('2', '9', '2', '20');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('3', '4', '1', '20');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('3', '7', '2', '25');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('3', '8', '1', '20');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('3', '11', '1', '25');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('2', '10', '2', '10');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('1', '12', '2', '5');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('1', '6', '2', '5');
INSERT INTO `shop`.`products` (`name_id`, `type_id`, `condition_id`, `price`) VALUES ('2', '13', '1', '10');


INSERT INTO `shop`.`types` (`type`) VALUES ('k544ud2a');
INSERT INTO `shop`.`types` (`type`) VALUES ('kd514a');
INSERT INTO `shop`.`types` (`type`) VALUES ('kt825a');
INSERT INTO `shop`.`types` (`type`) VALUES ('kt315b');
INSERT INTO `shop`.`types` (`type`) VALUES ('k1533tm2');
INSERT INTO `shop`.`types` (`type`) VALUES ('d226b');
INSERT INTO `shop`.`types` (`type`) VALUES ('kt818gm');
INSERT INTO `shop`.`types` (`type`) VALUES ('kt315a');
INSERT INTO `shop`.`types` (`type`) VALUES ('kt818gm');
INSERT INTO `shop`.`types` (`type`) VALUES ('d814d');
INSERT INTO `shop`.`types` (`type`) VALUES ('kd213a');
INSERT INTO `shop`.`types` (`type`) VALUES ('k572pa2');
INSERT INTO `shop`.`types` (`type`) VALUES ('kr555la3');


UPDATE `shop`.`products` SET `name_id`='3' WHERE `id`='1';
UPDATE `shop`.`products` SET `name_id`='2' WHERE `id`='2';
UPDATE `shop`.`products` SET `name_id`='1' WHERE `id`='6';
UPDATE `shop`.`products` SET `name_id`='1' WHERE `id`='7';
UPDATE `shop`.`products` SET `name_id`='1' WHERE `id`='8';
UPDATE `shop`.`products` SET `name_id`='3' WHERE `id`='9';
UPDATE `shop`.`products` SET `name_id`='3' WHERE `id`='10';
UPDATE `shop`.`products` SET `name_id`='2' WHERE `id`='11';
UPDATE `shop`.`products` SET `name_id`='3' WHERE `id`='12';
UPDATE `shop`.`products` SET `name_id`='1' WHERE `id`='5';

use shop;

SELECT 
	products.id, names.name, types.type, conditions.condition, products.price
FROM
	products
LEFT JOIN
	names
ON
	(products.name_id = names.id)
LEFT JOIN
	types
ON
	(products.type_id = types.id)
LEFT JOIN
	conditions
ON
	(products.condition_id = conditions.id)
;