function Entiers () {

    let entier;

    do  {

        reponse = prompt ('donnez un nombre entier :')
        entier = parseInt (reponse);
        if (isNaN(entier)) {

            alert('la réponse ${reponse} n\'est pas correcte.Saisir un nombre entier');

        }
    } while ( isNaN(entier));
    return entier;
}
   




function test() {
    // Test du PGCD de 221 et 782
    let dividend = 221;
    let diviseur = 782;
    let expected = 17;
    let actual = pgcd(dividend, diviseur);
    assert.equal(actual, expected);
  
    // Test du PGCD de 590 et 30
    dividend = 590;
    diviseur = 30;
    expected = 10;
    actual = pgcd(dividement, diviseur);
    assert.equal(actual, expected);
  
    // Test du PGCD de -21 et -7
    dividend = -21;
    diviseur = -7;
    expected = -7;
    actual = pgcd(dividend, diviseur);
    assert.equal(actual, expected);
  }
//   if (dividend === 0 || diviseur === 0) {
//     throw new Error("Le dividende ou le diviseur ne peut pas être nul.");
//   }
//   function pgcd(dividend, diviseur) {
//     // Si le dividende ou le diviseur est nul, on lève une erreur
//     if (dividend === 0 || diviseur === 0) {
//       throw new Error("Le dividende ou le diviseur ne peut pas être nul.");
//     }
  
//     // Sinon, on applique la logique du PGCD
//     // ...
//   }