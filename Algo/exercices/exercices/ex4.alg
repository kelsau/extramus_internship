<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="VARIABLES" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#sexe" algoitem="sexe EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#hommes" algoitem="hommes EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#femmes" algoitem="femmes EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#sexe#pasliste" algoitem="LIRE sexe"/>
        <item code="6#sexe==&quot;hommes&quot;" algoitem="SI (sexe==&quot;hommes&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="2#age#pasliste" algoitem="LIRE age"/>
            <item code="6#age>20" algoitem="SI (age>20) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#imposable#1" algoitem="AFFICHER &quot;imposable&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#non imposable#1" algoitem="AFFICHER &quot;non imposable&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#sexe==&quot;femmes&quot;" algoitem="SI (sexe==&quot;femmes&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="2#age#pasliste" algoitem="LIRE age"/>
            <item code="6#age>=18 ET age&lt;=35" algoitem="SI (age>=18 ET age&lt;=35) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#imposable#0" algoitem="AFFICHER &quot;imposable&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#non imposable#0" algoitem="AFFICHER &quot;non imposable&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
