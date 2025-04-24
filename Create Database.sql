Create Database Orders;

use Orders;

CREATE TABLE `Products` (
  `ProductID` varchar(11) NOT NULL,
  `ProductName` varchar(255) default NULL,
  `SupplierID` varchar(11) default NULL,
  `Category` varchar(255) default NULL,
  `UnitPrice` varchar(100) default NULL,
  `Color` varchar(255) default NULL,
  `QuantityOnHand` int default NULL,
   PRIMARY KEY (`ProductID`));

INSERT INTO `Products` (`ProductID`,`ProductName`,`SupplierID`,`Category`,`UnitPrice`,`Color`,`QuantityOnHand`) VALUES 
("748130-5105","Lotion","12241497023","Hair","$6.83","yellow",109),
("206908-3232","Remover","31704489846","Lip","$29.58","green",898),
("332338-2345","Beauty","68659281779","Face","$56.17","red",271),
("096419-4823","Beauty","30918186609","Cheek","$26.70","red",551),
("585230-0077","Sets","39656653836","Cheek","$5.24","red",514),
("197710-3876","Lotion","70268860023","Eye, Face","$26.98","green",794),
("533169-3365","Shampoo","30751277561","Body, Hair","$84.35","yellow",916),
("588681-0034","Moisturizer","39599259968","Lip","$73.53","blue",162),
("998757-5991","Sets","43636501698","","$59.44","orange",827),
("375163-6428","Primer","12716365607","","$2.72","red",464);

CREATE TABLE `Supplier` (
 `SupplierID` varchar(11) NOT NULL,
  `CompanyName` TEXT default NULL,
  `Address` varchar(255) default NULL,
  `City` varchar(255),
  `State` varchar(50) default NULL,
  `Zipcode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  `ContactPerson` varchar(255) default NULL,
  `ContactNumber` varchar(100) default NULL,
  `ContactEmail` varchar(255) default NULL,
  `ContactFax` varchar(100) default NULL,
   PRIMARY KEY (`SupplierID`));

ALTER TABLE Products
ADD FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);


drop Table Products;
drop Table sUPPLIER ;

CREATE TABLE `Supplier` (
 `SupplierID` varchar(11) NOT NULL,
  `CompanyName` TEXT default NULL,
  `Address` varchar(255) default NULL,
  `City` varchar(255),
  `State` varchar(50) default NULL,
  `Zipcode` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  `ContactPerson` varchar(255) default NULL,
  `ContactNumber` varchar(100) default NULL,
  `ContactEmail` varchar(255) default NULL,
  `ContactFax` varchar(100) default NULL,
   PRIMARY KEY (`SupplierID`));

CREATE TABLE `Products` (
  `ProductID` varchar(11) NOT NULL,
  `ProductName` varchar(255) default NULL,
  `SupplierID` varchar(11) default NULL,
  `Category` varchar(255) default NULL,
  `UnitPrice` varchar(100) default NULL,
  `Color` varchar(255) default NULL,
  `QuantityOnHand` int default NULL,
   PRIMARY KEY (`ProductID`));

ALTER TABLE Products
ADD FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);

INSERT INTO `Supplier` (`SupplierID`,`CompanyName`,`Address`,`City`,`State`,`Zipcode`,`Country`,`ContactPerson`,`ContactNumber`,`ContactEmail`,`ContactFax`) VALUES 
("30918186609","Nascetur","8496 Sed St.","Annapolis","Maryland","36447","United States","Montana Griffin","1-547-354-2975","Vivamus.non@gmail.com","1-747-514-7405"),
("70268860023","Vivamusdapibus","P.O. Box 185, 7096 Fusce St.","Minneapolis","MN","12392","United States","Jamal Ward","1-808-398-1802","Cras@purusNullamscelerisque.ca","1-633-148-7287"),
("31704489846","Luctus sit","747-1877 Fusce Street","Montpelier","Vermont","45116","United States","Breanna Tran","1-179-453-8363","interdum@ametfaucibus.com","1-402-203-9423"),
("68659281779","Mauris","6077 Id St.","Springdale","Arkansas","71245","United States","Armando Whitfield","1-201-374-3545","scelerisque.neque@Loremipsumdolor.com","1-214-295-9506"),
("12716365607","Sed","Ap #924-2093 Nisi Road","South Burlington","Vermont","61177","United States","Venus Tyson","1-635-591-2113","eget@Sed.com","1-624-477-4294"),
("30751277561","Aliquam","Ap #559-963 Aliquet. Avenue","Bangor","ME","46316","United States","Gil Watts","1-384-828-2779","mollis.lectus@Donectempus.co.uk","1-921-770-8330"),
("39656653836","Phasellus","396-5140 Sodales Rd.","Little Rock","Arkansas","72723","United States","Galvin Keller","1-870-828-3188","dignissim@euduiCum.com","1-266-190-0065"),
("39599259968","P&G","4166 Id Avenue","Athens","GA","93824","United States","Xanthus Phillips","1-592-174-7801","ridiculus@condimentumDonecat.com","1-137-184-4261"),
("12241497023","Praesent eu dui","P.O. Box 135, 8772 Mauris Avenue","Minneapolis","Minnesota","34193","United States","Yael Reyes","1-925-532-3739","eleifend.vitae@pretiumaliquet.com","1-795-854-4581"),
("43636501698","tortor Integer","824-4773 Neque. Avenue","Bellevue","Nebraska","99315","United States","McKenzie Owen","1-156-811-6215","elit.pede.malesuada@euaccumsansed.net","1-577-204-1040");

INSERT INTO `Products` (`ProductID`,`ProductName`,`SupplierID`,`Category`,`UnitPrice`,`Color`,`QuantityOnHand`) VALUES 
("748130-5105","Lotion","12241497023","Hair","$6.83","yellow",109),
("206908-3232","Remover","31704489846","Lip","$29.58","green",898),
("332338-2345","Beauty","68659281779","Face","$56.17","red",271),
("096419-4823","Beauty","30918186609","Cheek","$26.70","red",551),
("585230-0077","Sets","39656653836","Cheek","$5.24","red",514),
("197710-3876","Lotion","70268860023","Eye, Face","$26.98","green",794),
("533169-3365","Shampoo","30751277561","Body, Hair","$84.35","yellow",916),
("588681-0034","Moisturizer","39599259968","Lip","$73.53","blue",162),
("998757-5991","Sets","43636501698","","$59.44","orange",827),
("375163-6428","Primer","12716365607","","$2.72","red",464);

CREATE TABLE `Order_Details` (
   `OrderID` varchar(11) NOT NULL,
  `ProductID` varchar(11) default NULL,
  `ItemQuantity` int default NULL,
   PRIMARY KEY (`OrderID`));

INSERT INTO `Order_Details` (`OrderID`,`ProductID`,`ItemQuantity`) VALUES 
("05553373345","748130-5105",57),
("07261862587","206908-3232",26),
("21942566549","332338-2345",34),
("47217024154","096419-4823",57),
("70701609058","585230-0077",13),
("85764031654","197710-3876",29),
("89878325779","533169-3365",11),
("90817183713","588681-0034",9),
("96945305380","998757-5991",46),
("99251300121","375163-6428",81);

ALTER TABLE Order_Details
ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

CREATE TABLE `Buyers` (
  `BuyerID` varchar(11) NOT NULL,
  `TelNumber` varchar(100) default NULL,
  `Email` varchar(255) default NULL,
  `UserName` varchar(255) default NULL,
  `Password` varchar(255),
  `ShipAdress` varchar(255) default NULL,
  `ShipCity` varchar(255) default NULL,
  `ShipState` varchar(50) default NULL,
  `ShipCountry` varchar(255),
  `ShipZipcode` varchar(10) default NULL,
   PRIMARY KEY (`BuyerID`));

INSERT INTO `Buyers` (`BuyerID`,`TelNumber`,`Email`,`UserName`,`Password`,`ShipAdress`,`ShipCity`,`ShipState`,`ShipCountry`,`ShipZipcode`) VALUES 
("94908631679","1-772-737-2701","molestie@idantedictum.ca","Clark","JFA79CQJ8XU","P.O. Box 504, 7630 Lacus Rd.","Viransehir","Sanliurfa","Liberia","65242"),
("89264121725","1-905-188-8108","mi.pede@non.edu","Noble","AOF35ISM0QN","2510 Tellus Avenue","Joliet","IL","Christmas Island","86876"),
("50345881058","1-850-899-9543","euismod.Etiam@etultrices.edu","Tashya","PDE87LWL3PY","8200 Quis, Street","Vezirköprü","Samsun","Guinea-Bissau","M5Y 1Z0"),
("81921795835","1-583-615-6760","velit.dui@sapien.org","Aretha","ANP81YWC9CU","Ap #516-795 Nisi Road","Mildura","VIC","Singapore","4505"),
("26350935579","1-865-217-7844","ac.mattis@felispurus.org","Abbot","VSR52BPA7OY","951-727 A Street","Laramie","WY","Morocco","007708"),
("12714972662","1-102-293-5153","Quisque@elitdictumeu.net","Vance","RST79SIK9CB","1341 In St.","Jerez de la Frontera","AN","Singapore","53506"),
("75521050479","1-959-804-3019","id.libero.Donec@gmail.com","Matthew","PWN64YUG3AJ","253-4847 Rutrum Ave","Callander","PE","Mongolia","ZN53 8TG"),
("72330070747","1-184-195-5645","gravida.sagittis.Duis@magnaa.ca","Dominic","OFX66VPY2TS","Ap #976-802 Dignissim Street","Islahiye","Gaz","Finland","33067"),
("42711312958","1-317-594-7754","Nunc.ac@molestieSedid.ca","Lynn","JEE58NSU1DO","7377 Cras Rd.","Gotzis","Vbg","Seychelles","C5E 9C8"),
("67711139299","1-632-629-5645","gravida.non@urnasuscipitnonummy.net","Dustin","BSW81VNC4BY","Ap #972-7019 Nulla Street","Orangeville","ON","Marshall Islands","113921");

