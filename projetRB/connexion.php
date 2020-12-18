<?php
// variables
$host = 'localhost';
$dbname = 'test';
$dbuser = 'root';
$dbpwd = '';

try
{
    $bdd = new PDO('mysql:host='.$host.';dbname='.$dbname.';charset=utf8', $dbuser, $dbpwd);
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
?>