-- Créer une base de données appelée sales

CREATE DATABASE sales;
USE sales;

--  Créer une table appelée telephones avec les colonnes suivantes 
--  name : chaine de caractères qui représente le modèle du téléphone
--  manufacturer : chaine de caractères qui représente le fabricant
--  price : un nombre qui représente le prix UHT
--  units_sold : nombre qui représente la quantité vendue


CREATE TABLE telephones(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL,
    units_sold INTEGER NOT NUll
);

--  Insertionles données suivantes

INSERT INTO telephones (name, manufacturer, price, units_sold) VALUES
("N1280", "Nokia", 199, 1925),
("Iphone 4", "Apple", 399, 9436),
("Galaxy S 5", "Samsung", 299, 2359),
("S5620 Monte", "Samsung", 250, 2385),
("N8", "Nokia", 150, 7543),
("Droid", "Motorola", 150, 8395),
("Iphone 13 Pro Max", "Apple", 1300, 12849),
("Galaxy Note 20", "Samsung", 1100, 10353);

--  Ecrire une requete pour liste tous les modeles de téléphones

SELECT name FROM telephones;

-- Ecrire une requete pour lister tous les 
-- telephone(name, manufacturer) de tous les
-- téléphone dont le prix est supérieur à 200€

SELECT name, manufacturer FROM telephones where price > 200;

-- Ecrire une requete pour lister tous les 
-- telephone(name, manufacturer) de tous les
-- téléphone dont le prix est varie entre 150€ et 200€

SELECT name, manufacturer FROM telephones WHERE price >= 150 AND price <= 200 ;
SELECT name, manufacturer FROM telephone WHERE price BETWEEN 150 AND 200;

-- Lister tous les téléphones de marque samsung et Apple

SELECT * FROM telephones WHERE manufacturer="Apple" OR manufacturer="Samsung"; 