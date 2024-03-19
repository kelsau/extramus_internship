
            function updatePhoto() {
                var photoSelect = document.getElementById("photo");
                var selectedPhoto = document.getElementById("selectedPhoto");
                var selectedOptionValue = photoSelect.options[photoSelect.selectedIndex].value;
              
           
              }
            // Ajoutez ici la logique pour afficher la photo correspondante
            // en fonction de l'option sélectionnée dans le menu déroulant.
    

        function validateForm() {
            // Ajoutez ici la logique de validation du formulaire.
            // Assurez-vous de renvoyer true uniquement si le formulaire est valide.
            return true;
        }
    

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