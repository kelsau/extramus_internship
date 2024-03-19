let html = '';
for(let i = 1;i <= 5;i++) {
   for(let k = 1;k <= i;k++) {
      html = html + i;
   }
   html = html + '<br />';
}
document.body.innerHTML = html;