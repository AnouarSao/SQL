
-- Ordre descendant
SELECT id, name, manufacturer, price FROM telephones ORDER BY price DESC;

-- Ordre ascendant
SELECT id, name, manufacturer, price FROM telephones ORDER BY price ASC;
SELECT id, name, manufacturer, price FROM telephones ORDER BY price;

-- Ordre multiple ( on écrit une seule fois ORDER BY)
SELECT id, name, manufacturer, price FROM telephones ORDER BY price DESC, manufacturer DESC;

-- Calcul chiffre d'affaires ( price*units_sold)
SELECT name, manufacturer, price, units_sold, price * units_sold FROM telephones;

-- Renommer le nom de la colonne au moment de l'affichage ( Alias)
SELECT name AS modele , manufacturer AS constructeur , price AS prix, units_sold AS unites_vendues , (price * units_sold) AS chiffre_affaire FROM telephones;
SELECT name AS modele , manufacturer AS constructeur , price AS prix, units_sold AS unites_vendues , (price * units_sold) AS "chiffre d'affaires" FROM telephones;

-- Concatenation
SELECT CONCAT(manufacturer," ", name) as nom, CONCAT(price," €") AS prix FROM telephones;
SELECT CONCAT(manufacturer," ", name) as nom, CONCAT ((price * units_sold), " €") AS CA FROM telephones;

-- Création d'une vue
CREATE VIEW v_revenu_total AS SELECT name AS modele, manufacturer AS constructeur, price AS prix, units_sold AS unites_vendues, (price*units_sold) AS chiffre_affaire FROM telephones;

-- Requete sur une vue
SELECT * FROM v_revenu_total;

-- Selection distincte ( Eliminer les duplicats)
SELECT DISTINCT (manufacturer) FROM telephones;

-- Compter
SELECT COUNT(*) FROM telephones;
SELECT COUNT(*) FROM telephones WHERE manufacturer = "Apple";

-- Total des ventes
SELECT SUM(units_sold)AS total_ventes FROM telephones;

-- Moyenne vente
SELECT AVG(units_sold)AS moyenne_ventes FROM telephones;

-- Ventes les plus elevées
SELECT MAX(units_sold)AS ventes_plus_elevee FROM telephones;

-- Ventes les moins elevées
SELECT MIN(units_sold)AS ventes_moins_elevee FROM telephones;

