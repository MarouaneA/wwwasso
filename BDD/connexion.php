<?php
$host = "localhost"; /* L'adresse du serveur */
$login = "root"; /* Votre nom d'utilisateur */
$password = "mysql"; /* Votre mot de passe */
$base = "guantanasso"; /* Le nom de la base */

function connexion()
{
    global $host, $login, $password, $base;
    $db = mysql_connect($host, $login, $password);
    mysql_select_db($base,$db);
}
?>
