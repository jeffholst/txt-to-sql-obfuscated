CREATE TABLE Alpha (
    alphaID INT PRIMARY KEY,
    bravoCode INT,
    charlieDate DATETIME,
    deltaValue FLOAT
);

CREATE TABLE Echo (
    echoID INT PRIMARY KEY,
    foxtrotLevel INT,
    golfStatus BIT,
    hotelAmount FLOAT,
    julietDate DATETIME,
);

CREATE TABLE Kilo (
    kiloID INT PRIMARY KEY,
    mikeReference INT,
    novemberRate FLOAT,
    oscarDate DATETIME,
);

CREATE TABLE Papa (
    papaID INT PRIMARY KEY,
    quebecValue FLOAT,
    romeoFlag BIT,
    sierraCount INT,
);