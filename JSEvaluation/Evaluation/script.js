
    class Client {
        constructor(id, nom, prenom,message,email) {
            this.id = id;
            this.nom = nom;
            this.prenom = prenom;
            this.adresse = message;
            this.email = email;
        }
    }
    
    function renseignerClient(id, nom, prenom, message, email) {
        const client = new Client(id, nom, prenom, message, email);
    
        // Ajoutez ici le code pour mettre à jour les champs du formulaire avec les informations du client
        document.getElementById('id').value = client.id;
        document.getElementById('nom').value = client.nom;
        document.getElementById('prenom').value = client.prenom;
        document.getElementById('message').value = client.message;
        document.getElementById('email').value = client.email;
    }

    console.log(Client)

    function AfficheImage(){
        var choix = document.getElementById("select").value;
        document.getElementById("image").src = choix;
    }