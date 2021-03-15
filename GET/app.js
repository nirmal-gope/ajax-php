// Quand le DOM est entièrrement chargé
// Je capte l'événement click sur le bouton
// J'effectue une requête ajax pour lire et récupérer les données dans le fichier ajax_info.txt
// Je récupère les données et je les affecte à mon H1

$(document).ready(function () {

    $('#chargeText').on('click', function () {

        $.ajax({
            url: "ajax_info.txt",
            //type: "GET",
            dataType: "text",
            success : (data, statut) => {
                document.write(data);
                console.log(data);
                $("#demo h1").html(data);
            },

            error : (resultat, statut, erreur) => {

            },

        });
    });

});