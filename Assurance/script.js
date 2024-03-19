// Fonction pour calculer la prime d'assurance en fonction des critères
function calculerPrime(age, anneesPermis, nbAccidents, dureeFidelite) {
    if (nbAccidents > 3) {
        return "Refusé"; // On refuse un conducteur avec plus de 3 accidents
    }

    if (age < 25) {
        if (anneesPermis < 2) {
            if (nbAccidents === 0) {
                return "Tarif Rouge";
            } else {
                return "Refusé";
            }
        } else {
            if (nbAccidents === 0) {
                return "Tarif Orange";
            } else if (nbAccidents === 1) {
                return "Tarif Rouge";
            } else {
                return "Refusé";
            }
        }
    } else {
        if (anneesPermis < 2) {
            return "Refusé";
        } else {
            if (nbAccidents === 0) {
                if (dureeFidelite > 1) {
                    return "Tarif Bleu"; // Contrat de la couleur immédiatement la plus avantageuse s'il est entré depuis plus d'un an
                } else {
                    return "Tarif Vert";
                }
            } else if (nbAccidents === 1) {
                return "Tarif Orange";
            } else if (nbAccidents === 2) {
                return "Tarif Rouge";
            } else {
                return "Refusé";
            }
        }
    }
}

// Exemple d'utilisation de la fonction
var ageClient = prompt("Entrez l'âge du conducteur :");
var anneesPermisClient = prompt("Entrez le nombre d'années de permis du conducteur :");
var nbAccidentsClient = prompt("Entrez le nombre d'accidents du conducteur :");
var dureeFideliteClient = prompt("Entrez la durée de fidélité du client en années :");

var primeAssurance = calculerPrime(parseInt(ageClient), parseInt(anneesPermisClient), parseInt(nbAccidentsClient), parseInt(dureeFideliteClient));

alert("La prime d'assurance est : " + primeAssurance);