// Constantes
const SeuilMajorationSalaire = 1800;
const MajorationBasSalaire = 0.1;
const TauxCelibataire = 0.2;
const TauxNonCelibataire = 0.25;
const TauxParEnfant = 0.15;
const TauxMaximalPart = 0.5;

// Variables
let NombreEnfants;
let EstCélibataire;
let Rémunération;
let TauxParticipation;

// Acquisition des données
do {
  EstCélibataire = prompt("L'employé est-il célibataire ?, O POUR Oui, N POUR Non");
  if(EstCélibataire !== "O" && EstCélibataire !== "N"){
    alert(`Veuillez ecrire O pour oui en majuscule ou ecrire N pour non en majuscule `);
  }
} while (EstCélibataire !== "O" && EstCélibataire !== "N");

do {
  NombreEnfants = parseInt(prompt("Nombre d'enfants de l'employé ?"));
  if(NombreEnfants !== "O" && NombreEnfants !== "N"){
    alert(`Veuillez ecrire un NOMBRE `); 
  }
} while (NombreEnfants < 0);


do {
  Rémunération = parseFloat(prompt("Montant du salaire de l'employé ?"));
  if(Rémunération !== "O" && Rémunération !== "N"){
    alert(`Veuillez ecrire un NOMBRE`);
  }
} while (Rémunération < 0);

// Calculs
if (EstCélibataire === "O") {
  TauxParticipation = TauxCelibataire;
} else {
  TauxParticipation = TauxNonCelibataire;
}

TauxParticipation += NombreEnfants * TauxParEnfant;

if (Rémunération < SeuilMajorationSalaire) {
  TauxParticipation += MajorationBasSalaire;
}

TauxParticipation = Math.min(TauxParticipation, TauxMaximalPart);

// Affichage des résultats
alert("Le taux de participation est " + TauxParticipation * 100 + "%");

// Boucle de calculs
do {
  // Demande de calcul
  let reponse = prompt("Autre taux à calculer ? O pour Oui, N pour Non");

  // Fin de la boucle
  if (reponse === "N") {
    break;
  }

  // Réinitialisation des variables
  NombreEnfants = 0;
  EstCélibataire = "";
  Rémunération = 0;

  // Acquisition des données
  do {
    EstCélibataire = prompt("L'employé est-il célibataire ?, O pour Oui, N pour Non");
  } while (EstCélibataire !== "O" && EstCélibataire !== "N");

  do {
    NombreEnfants = parseInt(prompt("Nombre d'enfants de l'employé ?"));
  } while (NombreEnfants < 0);

  do {
    Rémunération = parseFloat(prompt("Montant du salaire de l'employé ?"));
  } while (Rémunération < 0);

  // Calculs
  if (EstCélibataire === "O") {
    TauxParticipation = TauxCelibataire;
  } else {
    TauxParticipation = TauxNonCelibataire;
  }

  TauxParticipation += NombreEnfants * TauxParEnfant;

  if (Rémunération < SeuilMajorationSalaire) {
    TauxParticipation += MajorationBasSalaire;
  }

  TauxParticipation = Math.min(TauxParticipation, TauxMaximalPart);

  // Affichage des résultats
  alert("Le taux de participation est " + TauxParticipation * 100 + "%");
} while (true);