function estImposable(age, sexe) {
    // Si l'habitant est un homme de plus de 20 ans, il est imposable.
  
    if (sexe === "homme" && age > 20) {
      return true;
    }
  
    // Si l'habitant est une femme entre 18 et 35 ans, elle est imposable.
  
    else if (sexe === "femme" && 18 <= age <= 35) {
      return true;
    }
  
    // Dans tous les autres cas, l'habitant n'est pas imposable.
  
    else {
      return false;
    }
  }
  
  function main() {
    // On demande à l'utilisateur de saisir l'âge et le sexe du Zorglubien.
  
    age = prompt("Quel est l'âge du Zorglubien ? ");
    sexe = prompt("Quel est le sexe du Zorglubien ? (homme/femme) ");
  
    // On appelle la fonction `estImposable()` pour déterminer si l'habitant est imposable.
  
    estImposable = estImposable(age, sexe);
  
    // On affiche le résultat.
  
    if (estImposable) {
      document.write("L'habitant est imposable.");
    } else {
      document.write("L'habitant n'est pas imposable.");
    }
  }
  
  main();