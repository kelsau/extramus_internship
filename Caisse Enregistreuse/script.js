function calculerMonnaie() {
    // Saisie du montant du ticket à payer
    let montantTicket = prompt("Veuillez saisir le montant du ticket à payer : ");
  
    // Saisie de la somme que le client a donné
    let montantClient = prompt("Veuillez saisir la somme que le client a donné : ");
  
    // Vérification que les montants sont des entiers
    if (!Number.isInteger(montantTicket)) {
      console.log("Le montant du ticket doit être un entier.");
      return;
    }
  
    if (!Number.isInteger(montantClient)) {
      console.log("La somme donnée par le client doit être un entier.");
      return;
    }
  
    // Calcul de la monnaie à rendre
    let monnaie = montantClient - montantTicket;
  
    // Calcul du nombre de billets de 10 euros
    let billets10 = Math.floor(monnaie / 10);
    monnaie -= billets10 * 10;
  
    // Calcul du nombre de billets de 5 euros
    let billets5 = Math.floor(monnaie / 5);
    monnaie -= billets5 * 5;
  
    // Calcul du nombre de pièces de 1 euro
    let pieces1 = monnaie;
  
    // Affichage de la monnaie à rendre
    console.log("Nombre de billets de 10 euros : " + billets10);
    console.log("Nombre de billets de 5 euros : " + billets5);
    console.log("Nombre de pièces de 1 euro : " + pieces1);
  }
  
  // Lancement de l'application
  calculerMonnaie();

  console.log 