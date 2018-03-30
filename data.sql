/*

MYSQL Login : mysql -u root -p jee_assignment
password: root

Integer: tinyint, smallint, mediumint, int, bigint
Fixed-point (exact): decimal ~ monetary
Floating-point (approx): float, double
Strings: char, varchar, blob, text
Dates: date, time, datetime, timestamp

*/

DROP TABLE IF EXISTS ORDER_DETAILS;
DROP TABLE IF EXISTS ITEM;
DROP TABLE IF EXISTS USER_ACCOUNT;
DROP TABLE IF EXISTS USER_MASTER;


CREATE TABLE USER_MASTER(
	id int NOT NULL PRIMARY KEY auto_increment,
	email varchar(200) NOT NULL,
	password varchar(50) NOT NULL,
	UNIQUE (email)
);

INSERT INTO USER_MASTER (email, password) VALUES ('azad@invalid.com', 'Welcome1');
INSERT INTO USER_MASTER (email, password) VALUES ('abi@invalid.com', 'Welcome1');

SELECT * FROM USER_MASTER;

DROP TABLE IF EXISTS USER_ACCOUNT;

CREATE TABLE USER_ACCOUNT(
	id varchar(20) NOT NULL PRIMARY KEY,
	UserID int NOT NULL,
	OrderDate date NOT NULL,
	UNIQUE (id),
	FOREIGN KEY (UserID) REFERENCES USER_MASTER(id)
);
INSERT INTO USER_ACCOUNT (id, UserID, OrderDate) VALUES ('OD211802403285111000', 1, '2018-01-11');
INSERT INTO USER_ACCOUNT (id, UserID, OrderDate) VALUES ('OD211802403285111001', 1, '2018-02-28');

INSERT INTO USER_ACCOUNT (id, UserID, OrderDate) VALUES ('OD211802403285111002', 2, '2018-01-01');

SELECT * FROM USER_ACCOUNT;
SELECT id, UserID, DATE_FORMAT(OrderDate, "%a, %b %D '%y") AS orderedDate FROM USER_ACCOUNT;
SELECT id As orderId, DATE_FORMAT(OrderDate, "%a, %b %D '%y") AS orderedDate FROM USER_ACCOUNT WHERE UserID = 1;

DROP TABLE IF EXISTS ITEM;

CREATE TABLE ITEM(
	id int NOT NULL PRIMARY KEY auto_increment,
	ItemName varchar(150) NOT NULL,
	ItemDescription varchar(350),
	ItemSeller varchar(150) NOT NULL,
	Price int NOT NULL,
	Offers int,
	UNIQUE (id)
);

INSERT INTO ITEM (ItemName, ItemDescription, ItemSeller, Price, Offers)
 VALUES ('Nivia Python Gym & Fitness Gloves (L, Blue, Black)', 'Color: Blue,Black Size: 23.5',
	'WS Retail', 100, 1);
	
INSERT INTO ITEM (ItemName, ItemDescription, ItemSeller, Price, Offers)
 VALUES ('Redmi Note 4 (Black, 32 GB)', 'Color: Black',
	'TrueComRetail', 9999, 0);
	
INSERT INTO ITEM (ItemName, ItemDescription, ItemSeller, Price, Offers)
 VALUES ('Logitech B175 Wireless Mouse', 'Color: Black,Grey',
	'Futurine', 599, 0);	
	
	
SELECT * FROM ITEM;

DROP TABLE IF EXISTS ORDER_DETAILS;

CREATE TABLE ORDER_DETAILS(
	id int NOT NULL PRIMARY KEY auto_increment,
	OrderId varchar(20) NOT NULL,
	ItemId int NOT NULL,
	ItemDeliveryDate date,
	ItemDeliveryStatus varchar(200),
	UNIQUE (id),
	FOREIGN KEY (OrderId) REFERENCES USER_ACCOUNT(id),
	FOREIGN KEY (ItemId) REFERENCES ITEM(id)
);

INSERT INTO ORDER_DETAILS (OrderId, ItemId, ItemDeliveryDate, ItemDeliveryStatus) VALUES ('OD211802403285111000', 1, '2018-01-15', 'Your item has been delivered');
INSERT INTO ORDER_DETAILS (OrderId, ItemId, ItemDeliveryDate, ItemDeliveryStatus) VALUES ('OD211802403285111000', 2, '2018-01-17', 'Your item has been delivered');

INSERT INTO ORDER_DETAILS (OrderId, ItemId, ItemDeliveryDate, ItemDeliveryStatus) VALUES ('OD211802403285111001', 2, '2018-03-03', 'Your item has been delivered');

INSERT INTO ORDER_DETAILS (OrderId, ItemId, ItemDeliveryDate, ItemDeliveryStatus) VALUES ('OD211802403285111002', 3, '2018-01-05', 'Your item has been delivered');

SELECT * FROM ORDER_DETAILS;
SELECT ItemId, DATE_FORMAT(ItemDeliveryDate, "%a, %b %D '%y") AS deliveredDate, ItemDeliveryStatus FROM ORDER_DETAILS WHERE OrderId = 'OD211802403285111000';

SELECT ITEM.ItemName AS itemName, ITEM.Price AS price, DATE_FORMAT(ORDER_DETAILS.ItemDeliveryDate, "%a, %b %D '%y") AS deliveredDate
FROM ORDER_DETAILS  
INNER JOIN ITEM ON ORDER_DETAILS.ItemId=ITEM.id AND ORDER_DETAILS.OrderId = 'OD211802403285111000';

SELECT ITEM.ItemName AS itemName, ITEM.ItemDescription AS itemDescription, ITEM.ItemSeller AS itemSeller,
 ITEM.Price AS price, ITEM.Offers AS offers, ORDER_DETAILS.ItemDeliveryStatus AS itemDeliveryStatus,
 DATE_FORMAT(ItemDeliveryDate, "%a, %b %D '%y") AS deliveredDate 
 FROM ORDER_DETAILS  
 INNER JOIN ITEM ON ORDER_DETAILS.ItemId=ITEM.id AND ORDER_DETAILS.OrderId = 'OD211802403285111000';