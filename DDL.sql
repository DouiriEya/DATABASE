--creating tables --
-- Checkpoint 1 DDL 
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY ,
     Product_Name VARCHAR2(20) NOT NULL, 
     Price NUMBER CHECK (Price>0)   
) 
CREATE TABLE Customer ( 
    Customer_id VARCHAR2(20) PRIMARY KEY, 
    Customer_Name VARCHAR2(20) NOT NULL, 
    Customer_Tel NUMBER
)
CREATE TABLE Orders ( 
    Customer_id FOREIGN KEY REFERENCES Customer(Customer_id), 
    Product_id FOREIGN KEY REFERENCES Product(Product_id), 
    Quantity NUMBER, 
    Total_Amount NUMBER 
)

--altering tables --  
ALTER TABLE Product ADD (Category VARCHAR(20) )
ALTER TABLE Orders ADD (Order_Date DATE default sysdate) 
-- inserting data into tables -- 

-- checkpoint 2 DDM -- 

-- insert in Product --
INSERT INTO Product values (
    'P01','Samsung Galaxy S20','Smartphpne',3299 )
INSERT INTO Product values ( 
    'P02','ASUS Notebook','PC',4599 ) 
-- insert in Customer --
INSERT INTO Customer values (
    'C01','ALI',71321009)
INSERT INTO Customer values(
    'C02','ASMA',77345823)
-- insert in orders --
INSERT INTO Orders values (
    'C01','P02',NULL,2,9198)
INSERT INTO Orders values(
    'C02','P01',28/05/2020,1,3299)