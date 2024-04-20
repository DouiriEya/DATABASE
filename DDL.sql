--creating tables --
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