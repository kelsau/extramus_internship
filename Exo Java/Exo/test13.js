let html = '';
let a = 0;

while(a <= 20) {
   html = html + a + '<br />';
   a = a + 2;
}
document.body.innerHTML = html;