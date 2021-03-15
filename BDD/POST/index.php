<?php

// Connexio à la BDD
$pdo = new PDO('mysql:host=localhost;dbname=boutique', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
$stmt = $pdo->query("SELECT * FROM produit");

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AJAX POST</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>

<body>

    <div class="container row">

        <div class="col-md-4">

            <div class="form-group">
                <label for="mySelect">Example select</label>
                <select class="form-control" name="mySelect" id="mySelect">
                    <!-- Je veux afficher mes produits en BDD -->
                    <!-- Quand je vais sélectionner un produit -->
                    <!-- Ca m'affiche dynamiquement en AJAX la fiche produit à côté -->
                    <option value="" selected disabled>Veuillez sélectionner unproduit</option>
                    <?php while ($produit = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    ?>
                        <option value="<?= $produit["id_produit"]; ?>"><?= $produit["titre"]; ?></option>

                    <?php } ?>
                </select>
            </div>

        </div>

        <div class="col-md-8" id="card-parent">
            <div class='card' style='width: 18rem;'>
                <img id="photo" src='' class='card-img-top' alt='...'>
                <div class='card-body'>
                    <h5 class='card-title' id="titre"></h5>
                    <h6 class='card-title' id="couleur"></h6>
                    <h6 class='card-title' id="reference"></h6>
                    <p class='card-text' id="description"></p>
                </div>
                <ul class='list-group list-group-flush'>
                    <li class='list-group-item' id="categorie"></li>
                    <li class='list-group-item' id="public"></li>
                    <li class='list-group-item' id="taille"></li>
                    <li class='list-group-item' id="stock"></li>
                </ul>
                <div class='card-body'>
                    <a href='#' class='card-link' id="prix"></a>
                    <a href='#' class='card-link'></a>
                </div>
            </div>

        </div>

    </div>


    <script src="app.js"></script>
</body>

</html>