// Fonction pour évaluer la force du mot de passe
function evaluerMotDePasse(motDePasse) {
    // Initialiser le compteur de force du mot de passe
    let forceMotDePasse = 0;

    // Vérifier si le mot de passe contient des chiffres et des lettres
    if (/\d/.test(motDePasse) && /[a-zA-Z]/.test(motDePasse)) {
        forceMotDePasse += 1;
    }

    // Vérifier si le mot de passe contient des minuscules
    if (/[a-z]/.test(motDePasse)) {
        forceMotDePasse += 1;
    }

    // Vérifier si le mot de passe contient des majuscules
    if (/[A-Z]/.test(motDePasse)) {
        forceMotDePasse += 1;
    }

    // Vérifier si le mot de passe contient des caractères spéciaux
    if (/[^a-zA-Z0-9]/.test(motDePasse)) {
        forceMotDePasse += 1;
    }

    // Vérifier si la longueur du mot de passe est inférieure à 8
    if (motDePasse.length < 8) {
        forceMotDePasse -= 1;
    }

    // Évaluer la force du mot de passe
    if (forceMotDePasse === 4) {
        return "Très sécurisé";
    } else if (forceMotDePasse === 3) {
        return "Sécurisé";
    } else if (forceMotDePasse === 2) {
        return "Moyen";
    } else {
        return "Dangereux";
    }
}

// Demander à l'utilisateur de saisir un mot de passe
let motDePasseUtilisateur = prompt("Veuillez saisir votre mot de passe :");

// Évaluer le mot de passe et afficher le résultat avec alert
let resultatEvaluation = evaluerMotDePasse(motDePasseUtilisateur);
alert("Force du mot de passe: " + resultatEvaluation);