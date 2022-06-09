
-- Authentification/Connexion
mysql -u root -- Si l'utilisateur n'a pas de mot de passe
mysql -u root -p -- Si l'utilisateur a un mot de passe

-- 1. Lister toutes les bases de données
SHOW DATABASES;

-- 2. Création de la base de données
CREATE DATABASE ventes;

-- 3. Utiliser/Sélectionner une base de données
-- USE <nom_base_de_données>
USE ventes;

-- 4. Lister les tables de la base de données
SHOW TABLES;

-- 5. Création de la table clients
-- INTEGER : c'est le type entier
-- NOT NULL : cette colonne doit toujours contenir une information
-- AUTO_INCREMENT : dire à MySQL de fournir des valurs en incrémentant automatiquement les clés
-- PRIMARY KEY : marquer la colonne comme étant la clé primaire
-- UNIQUE : appliquer une contrainte d'unicité
CREATE TABLE clients(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR (50) NOT NULL,
    prenom VARCHAR (50) NOT NULL,                                                                                                   
    email VARCHAR (70),
    telephone VARCHAR(20) NOT NULL
);

CREATE TABLE telephones(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(20) NOT NULL,
    id_client INTEGER,
    FOREIGN KEY(id_client) REFERENCES clients(id) on DELETE CASCADE
);

-- Voir la description de la table
-- DESC <nom_table> ou DESCRIBE <nom_table>
DESC clients;

-- Modifier une table en ajoutant une nouvelle colonne
ALTER TABLE clients ADD COLUMN postnom VARCHAR(50);


-- Modifier une table en ajoutant une nouvelle colonne après une autre
-- On rajoute la colonne "postnom" après la colonne "prenom"
ALTER TABLE clients MODIFY COLUMN postnom VARCHAR(50) AFTER prenom;

-- LMD : Langage de Manipulation de Données

-- Lister (SELECT) les informations de toutes(*) les colonnes de la table (FROM) client
SELECT * FROM clients;

-- Insertion des données
INSERT INTO clients(nom,prenom,email,telephone) values
        ("OURO-SAO", "Anouar", "anouarourosao@gmail.com", "06 98 42 46 34"),
        ("LISANGOLA", "Christian", "christian.lisagola@gmail.com", "07 47 77 88 99"),
        ("PEREZ", "Marion", "marion.oceane.perez@gmail.com", "07 86 84 26 76"),
        ("RAULIN","Ludovic","lraulin843@gmail.com","06 21 46 19 41");

-- ajouter la colonne age dans le tableau clients
ALTER TABLE clients ADD COLUMN age INTEGER(3);

-- Mise à jour des données
UPDATE clients SET telephone="0698424634" WHERE id=1;

UPDATE clients SET postnom="Magicien", age=24 WHERE id=1;

-- Supprimer un enregistrment
DELETE FROM clients where id=1;

-- Configurer MySQL en mode strict
-- Valeur pour le mode strict : STRICT_TRANS_TABLES

--> Vérifier le mode de transaction
SHOW VARIABLES LIKE "sql_mode";

--> Définir le mode strict pour les transactions
SET sql_mode ='STRICT_TRANS_TABLES';

--> Vérifier le mode de transaction
SHOW VARIABLES LIKE "sql_mode";

-- Pou effacer la console XAMPP
-- \! cls;

-- Supprimer une colonne
ALTER TABLE clients DROP COLUMN telephone;

-- Supprimer une table
-- Ex: DROP TABLE clients;

-- Supprimer une base de données
-- Ex: DROP DATABASE sales;

-- Insérer plusieurs numéros
INSERT INTO telephones(numero,id_client) values("0636363336",1),("0637363336",1),("0736363336",1),("0638863336",2),("0636360946",2),("0636364446",3),("0637380336",4),("0708463336",4),("0636363339",5),("0636222236",6),("0636363333",6),("0788363336",6),("0639993336",6);

-- Join query ( requete de jointure)
-- Afficher tous les numéros de téléphones de tous clients
-- Tables sollicités : clients  et telephones
SELECT clients.prenom, clients.nom, telephones.numero FROM clients JOIN telephones ON clients.id=telephones.id_client;

-- JOinture et concaténation
SELECT CONCAT( clients.prenom," ", clients.nom) AS nom, clients.email, telephones.numero FROM clients JOIN telephones ON clients.id=telephones.id_client;   

-- Jointure, concaténation et condition
SELECT CONCAT( clients.prenom," ", clients.nom) AS nom, clients.email, telephones.numero FROM clients JOIN telephones ON clients.id=telephones.id_client WHERE clients.id=1; 


-- Utilisation des filtres avec LIKE
-- Chaine qui commencent par M2
SELECT * FROM clients WHERE companyName LIKE "M2%";

-- Chaine qui se terminent par formation
SELECT * FROM clients WHERE companyName LIKE "%formation";

-- Rechercher au milieu d'une chaine
-- chris@sopra.com => ok
-- jean@m2i.com
-- sarah@sopra.fr => ok
-- luc@sopra.edu => ok

SELECT * FROM clients WHERE  companyName LIKE "%sopra%";

-- Nombre de ventes pour tous les fabricants
-- SELECT manufacturer, SUM(units_sold) FROM telephones GROUP BY manufacturer;

-- CA par fabricant
-- SELECT manufacturer, SUM(price * units_sold) AS chiffre_affaire FROM telephones GROUP BY manufacturer;

-- CA par fabricant dans l'ordre descendant
-- SELECT manufacturer, SUM(price * units_sold) AS chiffre_affaire FROM telephones GROUP BY manufacturer ORDER BY chiffre_affaire DESC;

-- Toutes les ventes des marques qui ont réalisé un CA de plus de 20000000
-- SELECT manufacturer, SUM(price * units_sold) AS chiffre_affaire FROM telephones GROUP BY manufacturer HAVING chiffre_affaire > 20000000;

-- Mauvaise approche
-- SELECT manufacturer, SUM(price * units_sold) AS chiffre_affaire FROM telephones WHERE chiffre_affaire > 20000000 GROUP BY manufacturer ;

-- Utiliser une query dans une condition
SELECT name, price FROM telephones WHERE price<(SELECT AVG(price) FROM telephones) ORDER BY price DESC;