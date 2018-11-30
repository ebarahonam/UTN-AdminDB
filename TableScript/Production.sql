-- Database: production

--DROP DATABASE production;

CREATE DATABASE production
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE SCHEMA "Production"
    AUTHORIZATION postgres;
	
CREATE TABLE "Production".CategoryProducts(
ProductCategory varchar(2) CONSTRAINT PK_CategoryProducts PRIMARY KEY NOT NULL ,
CategoryName varchar(100) NOT NULL
);

CREATE TABLE "Production".ProductSizes(
ProductSize varchar(2) CONSTRAINT PK_ProductSizes PRIMARY KEY NOT NULL,
Description varchar(60) NOT NULL
);

CREATE TABLE "Production".ProductColors(
ProductColor char(2) CONSTRAINT PK_ProductColors PRIMARY KEY NOT NULL,
Description varchar(60) NOT NULL
);

CREATE TABLE "Production".Products(
ProductId varchar(50) CONSTRAINT PK_Products PRIMARY KEY NOT NULL  ,
ProductName varchar(100) NOT NULL,
ProductCategory varchar(2) constraint Fk_Products_CategoryProducts REFERENCES "Production".CategoryProducts (ProductCategory) NOT NULL,
ProductSize varchar(2) constraint Fk_Products_ProductSizes REFERENCES "Production".ProductSizes (ProductSize) NOT NULL,
ProductColor char(2) constraint Fk_Products_ProductColors REFERENCES "Production".ProductColors (ProductColor) NOT NULL,
Description varchar(500) NULL	
);

CREATE TABLE "Production".Lines(
LineId smallint CONSTRAINT PK_Lines PRIMARY KEY NOT NULL,
Description varchar(40) NOT NULL
);

CREATE TABLE "Production".Lot(
LotId varchar(50) CONSTRAINT PK_Lot PRIMARY KEY NOT NULL  ,
ProductId varchar(50) CONSTRAINT Fk_Lot_Products REFERENCES "Production".Products (ProductId) NOT NULL  ,
Date date default CURRENT_DATE NOT NULL,
TTLMonths smallint null
);

CREATE TABLE "Production".LotxLines(
LotId varchar(50)  NOT NULL  ,
LineId smallint  NOT NULL,
ProductionQuantity int NOT NULL,
ProductionLost int NULL,
Starttime time default CURRENT_TIME(0) NOT NULL,
Finishtime time NULL,
ProductionTesting int NULL,
ProductionAmount int NULL,
--TotalAmount	AS ProductionQuantity + ProductionLost * ProductionAmount
CONSTRAINT PK_LotxLines PRIMARY KEY(LotId,LineId),
CONSTRAINT Fk_LotxLines_Lines FOREIGN KEY (LineId) REFERENCES "Production".Lines (LineId),
CONSTRAINT Fk_LotxLines_Lot FOREIGN KEY (LotId) REFERENCES "Production".Lot (LotId)
);

CREATE TABLE "Production".Process(
ProcessId varchar(6) not null,
LotId varchar(50)  NOT NULL  ,
LineId smallint  NOT NULL,
Sequence smallint NOT NULL,
Status char(1) NOT NULL,
CONSTRAINT PK_Process PRIMARY KEY(ProcessId,LotId,LineId),
CONSTRAINT Fk_Process_Lines FOREIGN KEY (LineId) REFERENCES "Production".Lines (LineId),
CONSTRAINT Fk_Process_Lot FOREIGN KEY (LotId) REFERENCES "Production".Lot (LotId)
);

CREATE VIEW "Production".StgProduction AS
    select lt.productid,pr.productname,ct.categoryname,li.lotid,li.lineid,lt.date,
li.productionquantity,li.productionlost,
li.productionamount
 from "Production".lotxlines li ,"Production".lot lt,"Production".products pr,
"Production".categoryproducts ct where li.lotid =lt.lotid
and lt.productid =pr.productid and pr.productcategory=ct.productcategory;