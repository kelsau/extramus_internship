<?php


class Voiture {
    private $immatriculation;
    private $couleur;
    private $poids;
    private $puissance;
    private $capaciteReservoir;
    private $niveauEssence;
    private $nombrePlaces;
    private $assure;
    private $messageTableauBord;

    public function __construct($immatriculation, $couleur, $poids, $puissance, $capaciteReservoir, $nombrePlaces) {
        $this->immatriculation = $immatriculation;
        $this->couleur = $couleur;
        $this->poids = $poids;
        $this->puissance = $puissance;
        $this->capaciteReservoir = $capaciteReservoir;
        $this->niveauEssence = 5.0; 
        $this->nombrePlaces = $nombrePlaces;
        $this->assure = false; 
        $this->messageTableauBord = "Bienvenue dans votre nouvelle voiture !";
    }

    public function getImmatriculation() {
        return $this->immatriculation;
    }

    public function getCouleur() {
        return $this->couleur;
    }

    public function setAssure($assure) {
        $this->assure = $assure;
        $this->messageTableauBord = $assure ? "Votre voiture est maintenant assurée." : "Votre voiture n'est plus assurée.";
    }

    public function repeindre($nouvelleCouleur) {
        if ($this->couleur === $nouvelleCouleur) {
            $this->messageTableauBord = "Merci pour ce rafraîchissement de couleur !";
        } else {
            $this->couleur = $nouvelleCouleur;
            $this->messageTableauBord = "Votre voiture a été repeinte en $nouvelleCouleur."; 
        }
        return $this->messageTableauBord;
    }

    public function mettreEssence($quantite) {
        if ($quantite <= 0) {
            return "La quantité d'essence doit être supérieure à zéro.";
        }
        $nouveauNiveauEssence = $this->niveauEssence + $quantite;
        if ($nouveauNiveauEssence <= $this->capaciteReservoir) {
            $this->niveauEssence = $nouveauNiveauEssence;
            return "Ajout de $quantite litres d'essence effectué."; 
        } else {
            return "Le réservoir ne peut contenir autant d'essence.";
        }
    }

    public function seDeplacer($distance, $vitesseMoyenne) {

        $consommation = $this->calculerConsommation($vitesseMoyenne);


        if ($this->niveauEssence >= $consommation) {
        
            $this->niveauEssence -= $consommation;
            return "Le trajet de $distance km a été effectué avec succès. Consommation: $consommation litres.";
        } else {
            return "Niveau d'essence insuffisant pour effectuer ce trajet.";
        }
    }

    private function calculerConsommation($vitesseMoyenne) {
        if ($vitesseMoyenne < 50) {
            return ($this->poids / 1000) * 10;
        } elseif ($vitesseMoyenne >= 50 && $vitesseMoyenne < 90) {
            return ($this->poids / 1000) * 5;
        } elseif ($vitesseMoyenne >= 90 && $vitesseMoyenne < 130) {
            return ($this->poids / 1000) * 8;
        } else {
            return ($this->poids / 1000) * 12; 
        }
    }

    public function __toString() {
        return sprintf("Immatriculation: %s, Puissance: %d ch, Couleur: %s, Niveau d'essence: %.2f litres", 
            $this->immatriculation, $this->puissance, $this->couleur, $this->niveauEssence);
    }
}




$maVoiture = new Voiture("ABC123", "Rouge", 1500, 100, 60.0, 5);


$maVoiture->setAssure(true);


echo $maVoiture->repeindre("jaune");


echo $maVoiture->mettreEssence(10);


echo $maVoiture->seDeplacer(100, 60);


echo $maVoiture;

?>
