--1.Requête de création de la base de données
create DATABASE clone_instagram;

USE clone_instagram;

-- Pour gerer le temps
-- date_creation DATE DEFAULT CURRENT_DATE
-- date_creation DATETIME DEFAULT CURRENT_TIMESTAMP

--2.Requêtes de création de toutes les tables
create table utilisateurs(
    id integer not null auto_increment primary key,
    nom varchar(50) not null,
    prenom varchar(50) not null,
    pseudo varchar(50) not null unique,
    email varchar(50) not null unique,
    avatar varchar(200) not null
);

create table photos (
    id integer not null auto_increment primary key,
    image varchar(200) not null,
    description varchar(200),
    localisation varchar(50),
    date DATE DEFAULT CURRENT_date,
    likecount int,
    commentscount int,
    utilisateurid int not null,
    foreign key (utilisateurid) references utilisateurs(id) on delete CASCADE on update CASCADE 
);


create table commentaires (
    id integer not null auto_increment primary key,
    comments varchar(200) not null,
    date DATE DEFAULT CURRENT_date,
    utilisateurid int not null,
    photoid int not null,
    foreign key (utilisateurid) references utilisateurs(id) on delete CASCADE on update CASCADE,
    foreign key (photoid) references photos(id) on delete CASCADE on update CASCADE
);

create table likes (
    id integer not null auto_increment primary key,
    utilisateurid int not null,
    photoid int not null,
    foreign key (utilisateurid) references utilisateurs(id) on delete CASCADE on update CASCADE,
    foreign key (photoid) references photos(id) on delete CASCADE on update CASCADE
);

--3.Requête d’ajout des utilisateurs, photos, commentaires et likes
--Utilisateurs

--Photos

--Commentaires

--Likes

--4.Pour chaque commentaire, afficher son contenu et l'url de la photo à laquel le commentaire a été ajouté
SELECT 
commentaires.utilisateurid, utilisateurs.pseudo, commentaires.comments 
FROM commentaires 
JOIN utilisateurs 
ON utilisateurs.id = commentaires.utilisateurid;


--5.Afficher l'url de chaque photo et le nom d'utilisateur de l'auteur
SELECT 
commentaires.comments, photos.image
FROM commentaires 
JOIN photos 
ON photos.id = commentaires.photoid;

--6.Afficher l'url de chaque photo et le nom d'utilisateur de l'auteur
SELECT 
photos.id, photos.image, utilisateurs.pseudo
FROM photos 
JOIN utilisateurs 
ON photos.utilisateurid = utilisateurs.id ORDER BY photos.id;

--7.Trouver tous les commentaires pour la photo d'id 3, avec le username de l'utilisateur qui a commenté

SELECT photos.id AS 'photo.id', commentaires.id AS 'commentaire.id', utilisateurs.id AS 'utilisateurs.id', utilisateurs.pseudo AS 'Auteur_du_commentaire'
FROM photos
JOIN commentaires
ON photos.id = commentaires.photoid
JOIN utilisateurs 
ON utilisateurs.id = commentaires.utilisateurid  WHERE photos.id = 3;

--8.Trouver tous les url des photos ainsi que tous les commentaire qui ont été posté par l'auteur de la photo
SELECT 
utilisateurs.id AS 'utilisateur.id',
photos.id AS 'photo.id',
commentaires.id AS 'commentaires.id',
photos.image as 'url',
commentaires.comments as 'commentaire'
FROM
photos 
JOIN utilisateurs
ON utilisateurs.id = photos.utilisateurid
JOIN commentaires
ON commentaires.utilisateurid = utilisateurs.id
WHERE commentaires.photoid = photos.id;

--9.A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos
SELECT 
utilisateurs.id AS 'utilisateur.id',
photos.id AS 'photo.id',
commentaires.id AS 'commentaires.id',
photos.image as 'url',
commentaires.comments as 'commentaire'
utilisateurs.pseudo as 'utilsateur'
FROM
photos 
JOIN utilisateurs
ON utilisateurs.id = photos.utilisateurid
JOIN commentaires
ON commentaires.utilisateurid = utilisateurs.id
WHERE commentaires.photoid = photos.id;

--10.Le nombre de likes pour la photo d’ID 4
SELECT COUNT(*) FROM
photos
JOIN
likes
ON photos.id = likes.photoid
WHERE photos.id = 4;

--11.Dépôt Github(personnel) bien documenté avec toutes les requêtes précédentes et bien documentées 