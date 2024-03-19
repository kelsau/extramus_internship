function calculerFacture(nombrePhotocopies) {
    let prixTotal = 0;

    if (nombrePhotocopies <= 10) {
        prixTotal = nombrePhotocopies * 0.10;
    } else if (nombrePhotocopies <= 30) {
        prixTotal = 10 * 0.10 + (nombrePhotocopies - 10) * 0.09;
    } else {
        prixTotal = 10 * 0.10 + 20 * 0.09 + (nombrePhotocopies - 30) * 0.08;
    }

    return prixTotal.toFixed(2);
}


let nombrePhotocopies = prompt("Entrez le nombre de photocopies que vous souhaitez effectuer:");


nombrePhotocopies = parseInt(nombrePhotocopies);


if (!isNaN(nombrePhotocopies) && nombrePhotocopies >= 0) {
 
    let facture = calculerFacture(nombrePhotocopies);


    document.body.innerHTML = "<h2>Facture de reprographie</h2>" +
                              "<p>Nombre de photocopies : " + nombrePhotocopies + "</p>" +
                              "<p>Montant de la facture : " + facture + " €</p>";
} else {
    alert("Veuillez entrer un nombre valide de photocopies.");
}