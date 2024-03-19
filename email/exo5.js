function verifierEmail() {

    let email = document.getElementById('email').value;


    let arobaseIndex = email.indexOf('@');
    let pointIndex = email.lastIndexOf('.');

 
    let message = document.getElementById('message');
    if (arobaseIndex > 0 && pointIndex > arobaseIndex + 1 && pointIndex < email.length - 1) {
        message.style.color = 'green';
        message.innerHTML = 'Adresse email valide.';
    } else {
        message.style.color = 'red';
        message.innerHTML = 'Adresse email non valide.';
    }
}