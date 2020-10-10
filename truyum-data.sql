USE truYum;
INSERT INTO menu_item(Name,Price,Active,Date_of_Launch,Category,Free_Delivery)
VALUES('Sandwich',99,'Yes','2017-03-15','Main Course','Yes'),
('Burger',129,'Yes','2017-12-23','Main Course','No'),
('Pizza',149,'Yes','2017-08-21','Main Course','No'),
('French Fries',57,'No','2017-07-02','Stsrters','Yes'),
('Chocolate Brownie',32,'Yes','2022-11-02','DESSERT','Yes');
DESC user;
INSERT INTO user(Name,type)
VALUE('Saikat','Admin'),('Souvik','Customer');
INSERT INTO cart(menu_id,user_id)
VALUE(1,2),(3,2),(5,2);
select * from menu_item;
SELECT * FROM menu_item WHERE Date_of_Launch < NOW() AND Active="Yes";
SELECT * FROM menu_item WHERE Id=3;
UPDATE menu_item SET Name='Dosa', Price=40, Active="Yes", 
Date_of_Launch='2018-12-26',Category='Starters',Free_Delivery="No"
Where Id=2;
SELECT M.Id,M.Name,M.Price,M.Active,M.Date_of_Launch,
M.Category,M.Free_Delivery FROM menu_item AS M INNER JOIN CART AS C
ON M.Id=C.menu_id;
SELECT C.user_id,U.Name,U.type,SUM(M.price)
 FROM menu_item AS M INNER JOIN CART AS C
ON M.Id=C.menu_id INNER JOIN user AS U ON
U.id=C.user_id;
SELECT M.Id,C.user_id,M.Name,M.price
 FROM menu_item AS M INNER JOIN CART AS C
ON M.Id=C.menu_id;
DELETE FROM cart WHERE user_id=2 AND menu_id=5;
SELECT * FROM cart;








