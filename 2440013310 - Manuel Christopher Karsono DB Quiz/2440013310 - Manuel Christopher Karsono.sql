USE SportGalaxy

--1

CREATE TABLE MsBrand(

BrandID CHAR(5) PRIMARY KEY CHECK (BrandID LIKE 'BR''[0-9]''[0-9]''[0-9]'),
BrandName VARCHAR(50) NOT NULL,
BrandEmail VARCHAR(50) NOT NULL CHECK (BrandEmail LIKE '%@%')

)

--2

ALTER TABLE MsCustomer
ADD CustomerPhoneNumber VARCHAR(50)
ALTER TABLE MsCustomer
ADD CONSTRAINT cn CHECK (LEN (CustomerPhoneNumber) = 12)


--3

INSERT INTO MsStaff
VALUES ('SF006','John','Male','2 Lime Kiln, Yeovil, BA21 3RW','john@gmail.com','1993-04-07')

--4

SELECT StaffID,StaffName,StaffEmail
FROM MsStaff
WHERE StaffEmail LIKE '%yahoo%'

DELETE MsProduct
FROM MsProduct,MsProductType
WHERE MsProduct.ProductTypeID=MsProductType.ProductTypeID AND LEN (ProductTypeName) < 5
