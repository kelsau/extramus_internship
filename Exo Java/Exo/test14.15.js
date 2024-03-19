let tableau = '<table>';
let lignes = prompt("Combien de lignes voulez vous ?");
let colonnes = prompt("Combien de colonnes voulez vous ?");

for (let a  = 1;a <= lignes ; a++ ) {
    tableau = tableau +  '<tr>';
for (let b = 1; b <= colonnes ; b++ ){
    tableau = tableau + '<td>  Merci JavaScript <td/>'
  }
  tableau = tableau + '</tr>';
}
tableau = tableau + '</table>';

document.body.innerHTML = tableau;