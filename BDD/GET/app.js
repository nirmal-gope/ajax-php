$(document).ready(function () {

    $("#mySelect").change(function () {

        let id_produit = $(this).val();

        $.ajax({
            url: "recuperer_detail_produit.php",
            type: "GET", //optional
            dataType: "json",
            data: {
                toto: id_produit
            }
        }).done(function (data) {

            // let card = "<div class='card' style='width: 18rem;'>" +
            //     "<img src='" + data.photo + "' class='card-img-top' alt='...'>" +
            //     "<div class='card-body'>" +
            //     "<h5 class='card-title'>" + data.titre + "</h5>" +
            //     "<h6 class='card-title'>" + data.reference + "</h6>" +
            //     "<h6 class='card-title'>" + data.couleur + "</h6>" +
            //     "<p class='card-text'>" + data.description + "</p>" +
            //     "</div>" +
            //     "<ul class='list-group list-group-flush'>" +
            //     "<li class='list-group-item'>" + data.categorie + "</li>" +
            //     "<li class='list-group-item'>" + data.public + "</li>" +
            //     "<li class='list-group-item'>" + data.taille + "</li>" +
            //     "<li class='list-group-item'>" + data.stock + "</li>" +
            //     "</ul>" +
            //     "<div class='card-body'>" +
            //     "<a href='#' class='card-link'>" + data.prix + "</a>" +
            //     "<a href='#' class='card-link'>Another link</a>" +
            //     "</div>" +
            //     "</div>";

            //     $("#card-parent").html(card);

            $.each(data, function (key, value) {
                if (key == "photo") {
                    $("#" + key).attr("src", value);
                } else {
                    $("#" + key).html(value);
                }

            });

        });
    });



});