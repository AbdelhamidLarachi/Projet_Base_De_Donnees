DROP DATABASE IF EXISTS Projet;
Create DATABASE Projet;
Use Projet;

DROP USER IF EXISTS 'employees'@'localhost';
DROP USER IF EXISTS 'customers'@'localhost';

GRANT ALL PRIVILEGES ON Projet.* TO 'Gisele'@'localhost' IDENTIFIED BY 'testuser';

CREATE USER 'employees'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'customers'@'localhost' IDENTIFIED BY '';


DROP TABLE IF EXISTS Fournisseur;
DROP TABLE IF EXISTS Ingredient;
DROP TABLE IF EXISTS Recette;
DROP TABLE IF EXISTS Personne;
DROP TABLE IF EXISTS Commande;
DROP TABLE IF EXISTS DetailCommande;
DROP TABLE IF EXISTS Recipient;
DROP TABLE IF EXISTS Stock;
DROP TABLE IF EXISTS Produit;
DROP TABLE IF EXISTS Fournir;
DROP TABLE IF EXISTS Constituer;


CREATE TABLE Produit (
    idProduit SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    nomProduit varchar(30),
    prixProduit INT (3),
    CONSTRAINT PRIMARY KEY (idProduit)
)
ENGINE=INNODB;

INSERT INTO Produit (idProduit) VALUES (1000),(1001),(1002),(1003),(1004),(1005),(1006),
(1007),(1008),(1009),(1010),(1011),(1012),(1013),(1014),(1015),(1016),(1017),(1018),(1019),
(1020);

CREATE TABLE Fournisseur (
    idFournisseur SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    nomFournisseur varchar(30) NOT NULL,
    CONSTRAINT PRIMARY KEY (idFournisseur)
)
ENGINE=INNODB;

INSERT INTO Fournisseur VALUES (1, 'Natura Given'),(2, 'Reflora Popula'),(3, 'Corpus Dolum'),(4, 'Compsane');

CREATE TABLE Ingredient (
    idIngredient SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    nomIngredient VARCHAR(30) NOT NULL,
    prixIngredient INT(3) DEFAULT NULL,
    FraicheurMinIngredient INT(3) NOT NULL,
    FraicheurMaxIngredient INT(3) NOT NULL,
    CONSTRAINT PRIMARY KEY (idIngredient)
)
ENGINE=INNODB;

INSERT INTO Ingredient VALUES (1,'Achillée millefeuille','2','0','9'),(2,'Alcahest','12','25','380'),(3,'Alcool de Temeria','25','12','380'),(4,'Balisse','8','0','14'),(5,'Bryone','7','0','58'),
(6,'Calcium Equum','11','0','650'),(7,'Cerveau de noyeur','20','0','18'),(8,'Chélidoine','6','0','84'),(9,'Chèvrefeuille','6','0','50'),(10,'Cinquième essence','23','0','880'),
(11,'Cœur de koshchey','32','0','8'),(12,'Cœur de nekker','30','0','8'),(13,'Cœur de strige','55','0','8'),(14,'Cœur d obsidienne','32','0','8'),(15,'Crocs de monstre','8','0','920'),
(16,'Dent de dévoreur','12','0','920'),(17,'Éclats lunaires','82','0','9999'),(18,'Élixir Courroux de kikimorrhe','38','0','48'),(19,'Élixir de sécrétions de Dagon','50','0','48'),
(20,'Élixir Ire de loup-garou','56','0','52'),(21,'Emanation de la Chasse Sauvage','125','0','5'),(22,'Éther','3','0','147'),(23,'Exelcio','29','0','12'),(24,'Feainnewedd','31','0','21'),
(25,'Fisstech','5','0','457'),(26,'Foie de bête','6','0','4'),(27,'Fruit de balisse','2','0','11'),(28,'Fruit de berbéris','3','1','10'),(29,'Glande à venin','58','12','18'),
(30,'Glouton','21','4','32'),(31,'Graines d ergot','4','15','162'),(32,'Graisse d ours','11','0','80'),(33,'Griffe d epouvanteur','8','0','880'),
(34,'Griffes de Kikimorrhe','18','0','880'),(35,'Gui','15','2','90'),(36,'Han','17','3','9'),(37,'Huile brune','12','45','350'),(38,'Huile de Crinfrid','25','104','563'),
(39,'Jus d ekinoppyre','32','0','51'),(40,'Lapis Lazuli','28','0','999'),(41,'Larme de Dragon','188','0','2'),(42,'Limoncello niflgardien','18','45','410'),
(43,'Liqueur de cerise','15','30','410'),(44,'Liseron','11','4','80'),(45,'Longrube','23','5','87'),(46,'Mâchoire de décharneur','29','1','8'),(47,'Membrane d aile','14','0','23'),
(48,'Moelle d algoule','38','0','12'),(49,'Mouette Immaculée','18','0','25'),(50,'Nerf de kikimorhee royale','28','0','19'),(51,'Œil-de-corneille','23','0','10'),
(52,'Œil de crapaud','8','0','11'),(53,'Œil d epouvanteur','28','0','11'),(54,'Ombelle de houblon','4','13','35'),(55,'Optima Mater','41','45','125'),(56,'Os de graveir','14','0','632'),
(57,'Pâte alchimique','5','0','35'),(58,'Pétales de myrte blanc','1','0','8'),(59,'Petite ciguë','48','0','999'),(60,'Philtre de Petri','21','5','39'),(61,'Phosphore','17','0','245'),
(62,'Pie-Grèche','33','28','119'),(63,'Pierre de vin','25','1','145'),(64,'Plume de cocatrix','29','25','39'),(65,'Poil de loup-garou','26','0','999'),(66,'Poudre de Diamant','55','0','999'),
(67,'Poudre de pierre rouge','39','0','999'),(68,'Poudre d or','45','0','999'),(69,'Poussière de Stammelford','41','0','999'),(70,'Pyrite','50','0','999'),
(71,'Quebrith','29','3','56'),(72,'Racine de pimenta dioica','9','3','48'),(73,'Roche Rouge','55','0','999'),(74,'Salpètre','17','32','144'),(75,'Sang de Bloedzuiger','29','0','35'),
(76,'Sang de goule','24','0','30'),(77,'Sécrétions de Dago','12','2','42'),(78,'Serre de tête-de-mort','18','0','999'),(79,'Simoun','9','1','72'),(80,'Soleil de Zerrikania','354','0','56'),
(81,'Solution de mercure','24','1','241'),(82,'Souffle de Dragon','78','0','20'),(83,'Soufre','20','0','999'),(84,'Suif de chien','9','0','12'),(85,'Tendons','14','2','8'),
(86,'Toxine','24','1','25'),(87,'Trace de l au delà','322','0','1'),(88,'Trachée','22','0','8'),(89,'Venin de Zeugle','24','0','12'),(90,'Venin du pendu','29','3','29'),
(91,'Verveine','6','3','123'),(92,'Vesse-de-loup','14','0','9'),(93,'Vinaigre blanc','4','1','289'),(94,'Vitriocybe','39','0','54'),(95,'Vitriol','51','2','16');

CREATE TABLE Recette (
    idRecette SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    nomRecette VARCHAR(50) NOT NULL,
    temperatureRecette VARCHAR(40) NOT NULL,
    idInventeur SMALLINT(5) DEFAULT NULL,
    CONSTRAINT PRIMARY KEY (idRecette)
)
ENGINE=INNODB;

INSERT INTO Recette (idRecette, nomRecette, temperatureRecette) VALUES (1000,'Essence de vie supérieure','51'),(1001,'Poison Inférieur','58'),(1002,'Potion de guérison','32'),(1003,'Essence purificatrice','27'),(1004,'Alcool Sellou','21'),
(1005,'Essence de putréfaction','43'),(1006,'Alcool Diflore','31'),(1007,'Poison contre vampire','86'),(1008,'Détergent','135'),(1009,'Elixir de puissance','113'),(1010,'Remonte Poisson','61'),
(1011,'Huile contre les morts-vivants','78'),(1012,'Elixir Nilfgardien','83'),(1013,'Soin estomac','61'),(1014,'Insectiside','87'),(1015,'Philaktaby','66'),(1016,'Potion de détermination','38'),
(1017,'Huile supérieure contre les vampires','30'),(1018,'Pastis 2000','51'),(1019,'Régénération de Mana','39'),(1020,'Alcool de soin','68');

CREATE TABLE Personne (
    idPersonne SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    prenomPersonne VARCHAR(30) NOT NULL,
    nomPersonne VARCHAR(30) NOT NULL,
    CONSTRAINT PRIMARY KEY (idPersonne)
)
ENGINE=INNODB;

INSERT INTO Personne VALUES (1, 'Jean', 'Dupont'),(2, 'John', 'Wick'),(3, 'Yves', 'Hitra'),(4, 'Delphine','Dronger'),(5,'Steven','Lideau');

CREATE TABLE Commande (
    idCommande SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    prixTotal INT(7) NOT NULL,
    confirmationCommande TINYINT DEFAULT "0" ,
    idPersonne SMALLINT(5) UNSIGNED NOT NULL,
    CONSTRAINT FOREIGN KEY (idPersonne) REFERENCES Personne(idPersonne),
    CONSTRAINT PRIMARY KEY (idCommande)
)
ENGINE=INNODB;

INSERT INTO Commande VALUES (1, 80, 0, 1);

CREATE TABLE Recipient (
    idRecipient SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    prixRecipient INT(3) NOT NULL,
    nomRecipient VARCHAR(20) NOT NULL,
    CONSTRAINT PRIMARY KEY (idRecipient)
)
ENGINE=INNODB;

INSERT INTO Recipient VALUES (5000, 6, 'Fiole'),(5001, 30, 'Jarre'),(5002, 1, 'Tube'),(5003, 15, 'bouteille'),(5004, 8, 'bol'),(5005, 13, 'flasque');

CREATE TABLE DetailCommande (
    idDetail SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    quantiteDetailCommande INT(5) NOT NULL,
    prixDetailCommande INT(5) NOT NULL,
	idCommande SMALLINT(5) UNSIGNED NOT NULL,
	idProduit SMALLINT(5) UNSIGNED NOT NULL,
	idRecipient SMALLINT(5) UNSIGNED NOT NULL,
    CONSTRAINT FOREIGN KEY (idCommande) REFERENCES Commande(idCommande),
    CONSTRAINT FOREIGN KEY (idProduit) REFERENCES Produit(idProduit),
    CONSTRAINT FOREIGN KEY (idRecipient) REFERENCES Recipient(idRecipient),
    CONSTRAINT PRIMARY KEY (idDetail)
)
ENGINE=INNODB;

INSERT INTO DetailCommande VALUES (1, 1, 80, 1, 1000, 5000);

CREATE TABLE Stock (
    idDStock INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    idElement INT(5) UNSIGNED NOT NULL,
    nomProduitStock VARCHAR(20),
	quantiteProduit INT(3) NOT NULL,
    dateMiseEnStock DATE DEFAULT NULL,
    fraicheurActuelle INT(3) NOT NULL,
    CONSTRAINT PRIMARY KEY (idDStock)
)
ENGINE=INNODB;

INSERT INTO Stock(idDStock, idElement, quantiteProduit, fraicheurActuelle) VALUES (1,46,3,2),(2,46,2,8),(3,9,2,10),(4,44,8,19),(5,22,4,18);

CREATE TABLE Fournir (
	idIngredient SMALLINT(5) UNSIGNED NOT NULL,
    idFournisseur SMALLINT(5) UNSIGNED NOT NULL,
    CONSTRAINT FOREIGN KEY (idIngredient) REFERENCES Ingredient(idIngredient),
    CONSTRAINT FOREIGN KEY (idFournisseur) REFERENCES Fournisseur(idFournisseur)
)	
ENGINE=INNODB;

INSERT INTO Fournir VALUES (1,4),(35,4),(91,2),(48,1),(87,2),(19,3),(36,1),(40,2),(78,2),(49,1),(81,4),
(28,3),(51,3),(58,3),(48,3),(85,2),(91,4),(75,4),(59,4),(20,3),(54,1),(84,3),(36,4),(57,4),(9,3),(79,2),(5,4),(45,2),(76,2),(9,4),(24,1),
(43,1),(36,4),(6,4),(46,4),(88,2),(88,1),(38,4),(19,2),(24,1),(90,3),(74,3),(90,2),(44,2),(36,1),(64,2),(47,1),(95,4),(60,2),(56,1),(63,1),
(33,4),(40,4),(37,1),(31,1),(6,3),(76,1),(13,4),(22,4),(92,2),(6,1),(32,1),(26,4),(45,2),(19,2),(15,3),(78,2),(11,2),(90,4),(83,4),(21,2),
(5,4),(73,1),(13,4),(43,3),(63,4),(32,4),(8,1),(86,3),(40,1),(64,3),(88,2),(5,1),(28,2),(19,2),(56,2),(7,2),(41,1),(49,2),(35,4),(40,3),
(14,3),(20,2),(23,3),(87,1);

CREATE TABLE Constituer (
	idIngredient SMALLINT(5) UNSIGNED NOT NULL,
    idRecette SMALLINT(5) UNSIGNED NOT NULL,
    ordreIngredient SMALLINT (1) UNSIGNED NOT NULL,
    CONSTRAINT FOREIGN KEY (idRecette) REFERENCES Recette(idRecette),
    CONSTRAINT FOREIGN KEY (idIngredient) REFERENCES Ingredient(idIngredient)
)
ENGINE=INNODB;

INSERT INTO Constituer VALUES ("46","1000","1"),("9","1000","2"),("44","1000","3"),("22","1000","4"),("51","1001","1"),("55","1001","2"),("57","1001","3"),
("81","1001","4"),("11","1002","1"),(27,1002,2),(74,1002,3),(39,1002,4),(43,1003,1),(17,1003,2),(89,1003,3),(19,1003,4),(62,1004,1),(5,1004,2),(56,1004,3),(22,1004,4),(69,1005,1),(9,1005,2),
(45,1005,3),(22,1005,3),(61,1006,1),(77,1006,2),(36,1006,3),(3,1006,4),(67,1007,1),(40,1007,2),(26,1007,3),(39,1007,4),(26,1008,1),(25,1008,2),(9,1008,3),(93,1008,4),(80,1009,1),(6,1009,2),(55,1009,3),(19,1009,4),
(85,1010,1),(65,1010,2),(53,1010,3),(81,1010,4),(70,1011,1),(15,1011,2),(44,1011,3),(81,1011,4),(95,1012,1),(2,1012,2),(75,1012,3),(19,1012,4),
(24,1013,1),(88,1013,2),(45,1013,3),(76,1013,4),(61,1014,1),(78,1014,2),(6,1014,3),(39,1014,4),(53,1015,1),(6,1015,2),(50,1015,3),(93,1015,4),
(28,1016,1),(71,1016,2),(33,1016,3),(22,1016,4),(63,1017,1),(49,1017,2),(55,1017,3),(38,1017,4),(74,1018,1),(73,1018,2),(68,1018,3),
(3,1018,4),(27,1019,1),(29,1019,2),(87,1019,3),(22,1019,4),(25,1020,1),(41,1020,2),(48,1020,3),(22,1020,4);


DROP PROCEDURE IF EXISTS affiche_commande_non_confirmee;
DROP PROCEDURE IF EXISTS affiche_recettes;
DROP PROCEDURE IF EXISTS affiche_Fournisseurs_Ingredient;
DROP PROCEDURE IF EXISTS affiche_potion_temperature;
DROP PROCEDURE IF EXISTS trouve_potion_ingredient;
DROP PROCEDURE IF EXISTS consultation_commande;
DROP PROCEDURE IF EXISTS trouve_potion_onguent_ingredient;
DROP PROCEDURE IF EXISTS mise_a_jour_stock;


DELIMITER |
CREATE PROCEDURE affiche_commande_non_confirmee()
BEGIN
	SELECT commande.idCommande, commande.idPersonne, commande.prixTotal
    FROM commande
    WHERE commande.confirmationCommande = 0;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE affiche_recettes()
BEGIN
	SELECT recette.idRecette, recette.temperatureRecette, ingredient.idIngredient, ingredient.nomIngredient
    FROM recette
    INNER JOIN constituer on recette.idRecette = constituer.idRecette
    INNER JOIN ingredient on constituer.idIngredient = ingredient.idIngredient;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE affiche_Fournisseurs_Ingredient()
BEGIN
	SELECT fournisseur.nomFournisseur, ingredient.nomIngredient, ingredient.prixIngredient 
    FROM fournisseur
    INNER JOIN fournir on fournir.idFournisseur = fournisseur.idFournisseur
    INNER JOIN ingredient on fournir.idIngredient = ingredient.idIngredient;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE affiche_potion_temperature()
BEGIN
	SELECT produit.idProduit, produit.nomProduit, recette.temperatureRecette
    FROM produit
    INNER JOIN recette on produit.nomProduit = recette.nomRecette AND produit.idProduit = recette.idRecette
    ORDER BY recette.temperatureRecette;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE trouve_potion_ingredient (In Trouver_Ingredient VARCHAR(30))
BEGIN
	SELECT recette.nomRecette, ingredient.nomIngredient
    FROM recette
    INNER JOIN constituer on recette.idRecette = constituer.idRecette
    INNER JOIN ingredient on constituer.idIngredient = ingredient.idIngredient
    WHERE ingredient.nomIngredient = Trouver_Ingredient;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE consultation_commande (In Trouver_Personne VARCHAR(20))
BEGIN
	SELECT commande.idCommande, commande.prixTotal, commande.confirmationCommande, personne.idPersonne, personne.prenomPersonne, personne.nomPersonne
    FROM commande
    INNER JOIN personne on commande.idPersonne = personne.idPersonne
    WHERE personne.nomPersonne = Trouver_Personne;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE trouve_potion_onguent_ingredient (In Ingredient1 VARCHAR(20), IN Ingredient2 VARCHAR(20))
BEGIN
	SELECT recette.nomRecette, ingredient.nomIngredient 
    FROM recette
    INNER JOIN constituer on recette.idRecette = constituer.idRecette
    INNER JOIN ingredient on constituer.idIngredient = ingredient.idIngredient
    WHERE ingredient.nomIngredient = Ingredient1 AND ingredient.nomIngredient = Ingredient2;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE mise_a_jour_stock()
BEGIN
	Update stock Set fraicheurActuelle=fraicheurActuelle+1;
END |
DELIMITER ;

DELIMITER |
CREATE PROCEDURE Afficher_stock()
BEGIN
	SELECT stock.idDstock, stock.idElement, stock.nomProduitStock, stock.quantiteProduit, stock.fraicheurActuelle
	FROM Stock;
END |
DELIMITER ;

#DELIMITER |
#CREATE PROCEDURE Envoi_Commande (IN Num_Commande INT(5))
#BEGIN
#	UPDATE Commande set commande.confirmationCommande = commande.confirmationCommande+1 WHERE commande.idCommande = Num_Commande;
	#SELECT detailcommande.quantiteDetailCommande FROM detailcommande ;
    
    #UPDATE Stock set stock.quantiteProduit = (stock.quantiteProduit -1 ) WHERE detailcommande.idCommande = Num_Commande AND detailcommande.idProduit = Stock.idElement ;
    #IF detailcommande.idRecipient IS NOT NULL THEN UPDATE Stock set stock.quantiteProduit = stock.quantiteProduit - detailcommande.quantiteDetailCommande WHERE detailcommande.idCommande = Num_Commande AND detailcommande.idRecipient = Stock.idElement;
#END |
#DELIMITER ;



GRANT SELECT
	ON Produit
    TO 'customers'@'localhost';
    
GRANT SELECT
	ON Recipient
	TO 'customers'@'localhost';
    
GRANT SELECT
	ON Ingredient
	TO 'customers'@'localhost';

GRANT EXECUTE ON PROCEDURE projet.consultation_commande 
	TO 'customers'@'localhost';


GRANT 	SELECT,
		UPDATE,
        INSERT
	ON Stock
    TO 'employees'@'localhost';
GRANT 	SELECT,
		UPDATE,
        INSERT
	ON Ingredient
    TO 'employees'@'localhost';
GRANT 	SELECT,
		UPDATE,
        INSERT
	ON Produit
    TO 'employees'@'localhost';
    
    
GRANT EXECUTE ON PROCEDURE projet.affiche_commande_non_confirmee 
	TO 'employees'@'localhost';
    
GRANT EXECUTE ON PROCEDURE projet.consultation_commande
	TO 'employees'@'localhost';
    
GRANT EXECUTE ON PROCEDURE projet.trouve_potion_ingredient
	TO 'employees'@'localhost';

GRANT EXECUTE ON PROCEDURE projet.trouve_potion_ingredient
	TO 'employees'@'localhost';

GRANT EXECUTE ON PROCEDURE projet.consultation_commande
	TO 'employees'@'localhost';

GRANT EXECUTE ON PROCEDURE projet.mise_a_jour_stock
	TO 'employees'@'localhost';