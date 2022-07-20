DROP TABLE if EXISTS Link;
DROP TABLE if EXISTS Produrts;
DROP TABLE if EXISTS Categories;

CREATE TABLE if NOT EXISTS `Produrts`(
    `id` INT AUTO_INCREMENT,
    `product` VARCHAR(255),
  	PRIMARY KEY(`id`)
);
CREATE TABLE if NOT EXISTS `Link`(
    `id_prod` INT ,
    `id_category` INT,
    PRIMARY KEY(`id_prod`,`id_category`)
);
CREATE TABLE if NOT EXISTS `Categories`(
    `id` INT AUTO_INCREMENT,
    `category` VARCHAR(255),
  	PRIMARY KEY(`id`)
);

INSERT INTO Link
VALUES (1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 2),
	(6, 2),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 4),
	(11, 4),
	(12, 4);
INSERT INTO Produrts
VALUES (1, "Ноутбук"),
	(2, "Сервер"),
	(3, "Процессор"),
	(4, "Блок питания"),
	(5, "Гироскутер"),
	(6, "Велосипед"),
	(7, "Посуда"),
	(8, "Диван"),
	(9, "Светильник"),
	(10, "Калькулятор"),
	(11, "Защита питания"),
	(12, "Печать");
INSERT INTO Categories
VALUES (1, "Компьютеры"), (2, "Дом"), (3, "Отдых");

SELECT category, product FROM Link
LEFT JOIN Categories on Categories.id = Link.id_category
LEFT JOIN Produrts on Produrts.id = Link.id_prod;
