<?php
// variables
$host = 'localhost';
$dbname = 'test';
$dbuser = 'root'; 
$dbpwd = ''; 

try
{
    $bdd = new PDO('mysql:host='.$host.';dbname='.$dbname.';charset=utf8', $dbuser, $dbpwd);
   /* $bdd = new PDO('mysql:host=localhost;dbname=glossary;charset=utf8', 'root', '');*/
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
?>