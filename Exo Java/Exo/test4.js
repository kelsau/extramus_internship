function nombreDeGrainsDeRiz(nbCases) {
    // Initialisation
    let grains = 1;
  
    // Calcul du nombre de grains de riz
    grains = Math.pow(2, nbCases);
  
    // Retourne le résultat
    return grains;
  }
  
  console.log(nombreDeGrainsDeRiz(64)); // 18 446 744 073 709 551 615