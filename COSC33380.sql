CREATE TABLE Customer (
    CustomerID INTEGER,
    CustomerName VARCHAR(100),
    CustomerAddress VARCHAR(100),
    CustomerCity Varchar(20),
    CustomerState VARCHAR(2),
    CustomerPostalCode VARCHAR(10),
    CustomerEmail VARCHAR(20),
    CustomerUserName VARCHAR(16),
    CustomerPassword VARCHAR(16),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Salesperson(
    SalespersonID INTEGER,
    SalespersonName VARCHAR(100),
    SalespersonPhone VARCHAR(10),
    SalespersonEmail VARCHAR(20),
    SalespersonUserName VARCHAR(16),
    SalespersonPassword VARCHAR(16),
    TerritoryID INTEGER,
    PRIMARY KEY (SalespersonID),
    FOREIGN KEY (TerritoryID) REFERENCES Territory
);

CREATE TABLE Territory(
    TerritoryID INTEGER,
    TerritoryName VARCHAR(100),
    PRIMARY KEY (TerritoryID)
);

CREATE TABLE DoesBusinessIn(
    CustomerID INTEGER,
    TerritoryID INTEGER,
    PRIMARY KEY (CustomerID, TerritoryID),
    FOREIGN KEY (CustomerID) REFERENCES Customer,
    FOREIGN KEY (TerritoryID) REFERENCES Territory
);

CREATE TABLE Product(
    ProductID INTEGER,
    ProductName VARCHAR(100),
    ProductFinish VARCHAR(30),
    ProductStandardPrice VARCHAR(10),
    ProductLineID INTEGER,
    PRIMARY KEY (ProductID),
    FOREIGN KEY (ProductLineID) REFERENCES ProductLine
); 

CREATE TABLE ProductLine(
    ProductLineID INTEGER,
    ProductLineName VARCHAR(30),
    PRIMARY KEY (ProductLineID)
);

CREATE TABLE OrderLine(
    OrderID INTEGER,
    ProductID INTEGER,
    OrderedQuantity INTEGER,
    SalesPrice VARCHAR(10),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (ProductID) REFERENCES Product
);