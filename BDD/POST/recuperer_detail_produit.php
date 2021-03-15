<?php
// Connexio à la BDD
$pdo = new PDO('mysql:host=localhost;dbname=boutique', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));

$idProduit = $_GET["toto"];
$stmt = $pdo->query("SELECT * FROM produit WHERE id_produit = '$id_produit'");
$produit = $stmt->fetch(PDO::FETCH_ASSOC);
echo json_encode($produit);
