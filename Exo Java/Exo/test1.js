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
EstCélibataire = prompt("L'employé est-il célibataire ?, O pour Oui, N pour Non");
NombreEnfants = parseInt(prompt("Nombre d'enfants de l'employé ?"));
Rémunération = parseFloat(prompt("Montant du salaire de l'employé ?"));

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