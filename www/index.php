<?php


//print_r(PDO::getAvailableDrivers());

$dsn = 'mysql:host=mysql;dbname=sait';
$username = 'root';
$password = 'password';
$options = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
);

$dbh = new PDO($dsn, $username, $password, $options);

