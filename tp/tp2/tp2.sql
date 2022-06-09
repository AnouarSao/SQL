-- Creation de la base de données TP2

CREATE DATABASE TP2;
USE TP2;

-- Creation de la table orders
CREATE TABLE orders(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    typePresta VARCHAR (50) NOT NULL,
    designation VARCHAR (50) NOT NULL,                                                                                                   
    clientId INTEGER NOT NULL,
    nbDays INTEGER NOT NULL,
    unitPrice INTEGER NOT NULL,
    state INTEGER NOT NULL
);

-- Insertion des données orders
INSERT INTO orders(typePresta, designation, clientId, nbDays, unitPrice, state) values
            ("Formation", "Angular init", 2, 3, 1200, 0),
            ("Formation", "React avancé", 2, 3, 1000, 2),
            ("Coaching", "React Techlead", 1, 20, 900, 2),
            ("Coaching", "Nest.js Techlead", 1, 50, 800, 1),
            ("Coaching", "React Techlead", 3, 20, 900, 2),
            ("Coaching", "Jakarta EE", 3, 20, 700, 1),
            ("Coaching", "Angular Techlead", 4, 20, 1500, 2),
            ("Formation", "React Teaclead", 1, 3, 1300, 0),
            ("Formation", "Jakarta EE", 2, 3, 1400, 1),
            ("Formation", "Nest.js Techlead", 1, 3, 1000, 2);


-- Creation de la table clients
CREATE TABLE clients(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    companyName VARCHAR (50) NOT NULL,
    firstName VARCHAR (50) NOT NULL,
    lastName VARCHAR (50) NOT NULL,
    email VARCHAR (70) NOT NULL,
    phone VARCHAR (20) NOT NULL,  
    address VARCHAR (100) NOT NULL,
    zipCode VARCHAR (20) NOT NULL,
    city VARCHAR (20) NOT NULL,
    country VARCHAR (50) NOT NULL,
    state INTEGER NOT NULL                                                                                                  
);

-- Insertion des données clients
INSERT INTO clients (companyName, firstName, lastName, email, phone, address, zipCode, city, country, state) values
                    ("Capgemini", "Fabrice", "Martin", "martin@mail.com", "06 56 85 84 33", "abc", "xyz", "Nantes", "France", 0),
                    ("M2I Formation", "Julien", "Lamard", "lamardn@mail.com", "06 11 22 33 44", "abc", "xyz", "Paris", "France", 1),
                    ("ATOS", "Jerome", "Schmidt", "schmidt@mail.com", "06 57 58 59 60", "abc", "xyz", "Lyon", "France", 0),
                    ("SOPRA STERIA", "Guillaume", "Sahel", "sahel@mail.com", "07 12 13 14 15", "abc", "xyz", "Toulouse", "France", 1);


ALTER TABLE orders ADD FOREIGN KEY (clientId) REFERENCES client (id) ON DELETE RESTRICT;

-- Création de la vue prix HT et prix TTC
CREATE VIEW prix_UHT_TTC AS SELECT typePresta, designation, (unitPrice * nbDays) AS totalExcludeTaxe, (1.2 * unitPrice * nbDays) AS totalWithTaxe FROM orders;

-- Ecrire une requête pour créer ces 2 tables en prenant en compte la jointure
SELECT * FROM clients JOIN orders ON clients.id = orders.clientId;

CREATE TABLE JoinTable AS SELECT * FROM clients JOIN orders ON clients.id = orders.clientId;

-- Remplissez la base de données au travers des insertions

-- Afficher toutes les formations sollicités par le client M2i formation
SELECT companyName, typePresta, designation FROM clients JOIN orders ON clients.id = orders.clientId WHERE companyName = "M2I Formation" AND typePresta = "Formation";

-- Afficher les noms et contacts de tous les contacts des clients qui ont sollicité un coaching
SELECT DISTINCT clients.firstName, clients.lastName, clients.email, clients.phone FROM clients JOIN orders ON clients.id = orders.clientId WHERE typePresta ="Coaching";

-- Afficher les noms et contacts de tous les contacts des clients qui ont sollicité un coaching pour les accompagnements React.js
SELECT DISTINCT clients.firstName, clients.lastName, clients.email, clients.phone FROM clients JOIN orders ON clients.id = orders.clientId WHERE typePresta ="Coaching" AND designation = "React.js"; 

-- Pour chacune des demandes de formation afficher le prix UHT et prix TTC 
SELECT typePresta, designation, (unitPrice * nbDays) AS prix_UHT, (1.2 * unitPrice * nbDays) AS prix_TTC FROM clients JOIN orders ON clients.id=orders.clientId WHERE orders.typePresta="formation";

-- Lister toutes les prestations qui sont confirmer et qui vont rapporter plus de 30.000€
SELECT typePresta, designation, (1.2 * unitPrice * nbDays) AS prix_TTC FROM clients JOIN orders ON clients.id = orders.clientId WHERE (1.2 * unitPrice * nbDays) > 30000 AND orders.state = 2;

--autre
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `typePresta` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `nbDays` int(11) NOT NULL,
  `unitPrice` float NOT NULL,
  `state` tinyint(1) NOT NULL,
  `totalExcludeTaxe` float GENERATED ALWAYS AS (`nbDays` * `unitPrice`) STORED,
  `totalWithTaxe` float GENERATED ALWAYS AS (`nbDays` * `unitPrice` * 1.2) STORED
) 