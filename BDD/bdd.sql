CREATE DATABASE guantanasso

USE DATABASE guantanasso

CREATE TABLE 'Personne'(
	'idPersonne' INT NOT NULL auto_increment,
	'nom' VARCHAR(30),
	'prenom' VARCHAR(20),
	'adresse' VARCHAR(30),
	'telephone' VARCHAR(20),
	PRIMARY KEY('idPersonne')
)ENGINE=INNODB;

CREATE TABLE 'Membre'(
	'idMembre' INT NOT NULL auto_increment,
	'mot_de_passe' VARCHAR(10),
	'date_naissance' DATE,
	'email' VARCHAR(30),
	'idPole' INT NOT NULL auto_increment
	PRIMARY KEY('idMembre'),
	FOREIGN KEY('idMembre') REFERENCES Personne('idPersonne'),
	FOREIGN KEY('idPole') REFERENCES Pole('idPole'),
)ENGINE=INNODB;

CREATE TABLE 'Client'(
	'idClient' INT NOT NULL auto_increment,
	'carte_asso' BOOLEAN,
	PRIMARY KEY('idClient'),
	FOREIGN KEY('idClient') REFERENCES Personne('idPersonne'),
)ENGINE=INNODB;

CREATE TABLE 'Partenaire'(
	'idPartenaire' INT NOT NULL auto_increment,
	'nomMarque' VARCHAR(20),
	'email' VARCHAR(30),
	'type' VARCHAR(20),
	PRIMARY KEY('idPartenaire'),
	FOREIGN KEY('idPartenaire') REFERENCES Personne('idPersonne'),
)ENGINE=INNODB;

CREATE TABLE 'Activite'(
	'idActivite' INT NOT NULL auto_increment,
	'nomActivite' VARCHAR(30),
	'date' DATETIME,
	'duree' TIME,
	'idResponsable' INT NOT NULL auto_increment,
	PRIMARY KEY('idActivite'),
	FOREIGN KEY('idResponsable') REFERENCES Membre('idMembre')
)ENGINE=INNODB

CREATE TABLE 'Pole'(
	'idPole' INT NOT NULL auto_increment,
	'nomPole' VARCHAR(50),
	'idResponsable' INT,
	PRIMARY KEY('idPole')
	FOREIGN KEY ('idResponsable') REFERENCES Membre('idMembre')
)ENGINE=INNODB;

CREATE TABLE 'Repas'(
	'idCommande' INT NOT NULL auto_increment,
	'nomRepas' VARCHAR(40),
	'dateDispo' DATE,
	'idResponsable' INT, 
	PRIMARY KEY('idCommande')
	FOREIGN KEY ('idCommande') REFERENCES Commande('idCommande')
	FOREIGN KEY ('idResponsable') REFERENCES Membre('idMembre')
)ENGINE=INNODB;

CREATE TABLE 'Commande'(
	'idCommande' INT NOT NULL auto_increment,
	'heureLivraison' DATETIME,
	'lieuLivraison' VARCHAR(40),
	'idClient' INT,
	PRIMARY KEY('idCommande')
	FOREIGN KEY ('idClient') REFERENCES Client('idClient')
)ENGINE=INNODB;

CREATE TABLE 'Boisson'(
	'idCommande' INT NOT NULL auto_increment,
	'typeBoisson' VARCHAR(40),
	PRIMARY KEY('idCommande')
	FOREIGN KEY ('idCommande') REFERENCES Commande('idCommande')
)ENGINE=INNODB;

CREATE TABLE 'Taxi'(
	'idCommande' INT NOT NULL auto_increment,
	'lieuDestination' VARCHAR(40),
	PRIMARY KEY('idCommande')
	FOREIGN KEY ('idCommande') REFERENCES Commande('idCommande')
)ENGINE=INNODB;

CREATE TABLE 'Service'(
	'idCommande' INT NOT NULL auto_increment,
	'typeService' VARCHAR(40),
	PRIMARY KEY('idCommande')
	FOREIGN KEY ('idCommande') REFERENCES Commande('idCommande')
)ENGINE=INNODB;




	
