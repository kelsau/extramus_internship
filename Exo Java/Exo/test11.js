let n = 5;
let html = '';
for(let i = 1;i <= 10;i++) {
   html = html + n + ' x ' + i + ' = ' + (n * i) + ' <br />';
}
document.body.innerHTML = html;