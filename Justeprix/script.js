// Tableau d'objets avec leur nom et image
var objets = [
    { nom: "Télévision", image: "tv.jpg" },
    { nom: "Ordinateur portable", image: "laptop.jpg" },
    { nom: "Smartphone", image: "phone.jpg" },
    { nom: "Console de jeu", image: "console.jpg" },
    { nom: "Montre connectée", image: "watch.jpg" }
];

// Fonction pour obtenir un nombre aléatoire dans une fourchette donnée
function getRandomPrice(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Choix aléatoire d'un objet du tableau
var objetChoisi = objets[Math.floor(Math.random() * objets.length)];

// Prix aléatoire entre 1 et 100 euros
var prixObjet = getRandomPrice(1, 100);

// Nombre de tentatives
var tentativesRestantes = 10;

// Fonction principale du jeu
+
function jouerAuJustePrix() {
    while (tentativesRestantes > 0) {
        // Demander à l'utilisateur de deviner le prix
        var propositionUtilisateur = parseInt(prompt("Devinez le prix de l'objet '" + objetChoisi.nom + "' (entre 1 et 100 euros) :"));

        // Vérifier la proposition de l'utilisateur
        if (propositionUtilisateur === prixObjet) {
            alert("Félicitations ! Vous avez deviné le juste prix. Vous remportez " + objetChoisi.nom + " !");
            return;
        } else {
            // Décrémenter le nombre de tentatives restantes
            tentativesRestantes--;

            // Afficher un message d'indication
            if (propositionUtilisateur < prixObjet) {
                alert("Trop bas ! Il vous reste " + tentativesRestantes + " tentatives.");
            } else {
                alert("Trop haut ! Il vous reste " + tentativesRestantes + " tentatives.");
            }
        }
    }

    // Message en cas d'échec
    alert("Dommage ! Vous n'avez pas réussi à deviner le juste prix. L'objet était " + objetChoisi.nom + " et son prix était de " + prixObjet + " euros.");
}

// Appeler la fonction principale pour démarrer le jeu
jouerAuJustePrix();