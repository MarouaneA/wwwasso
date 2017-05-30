<?php
include("connexion.php");

connexion();

$sql="CREATE TABLE 'Personne'(
	'idPersonne' INT NOT NULL auto_increment,
	'nom' VARCHAR(30),
	'prenom' VARCHAR(20),
	'adresse' VARCHAR(30),
	'telephone' VARCHAR(20),
	PRIMARY KEY('idPersonne')
)ENGINE=INNODB;"

mysql_query($sql) or die(mysql_error());
?>
