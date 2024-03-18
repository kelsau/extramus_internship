<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="m EST_DU_TYPE NOMBRE"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#h" algoitem="h EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#m" algoitem="m EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#h#pasliste" algoitem="LIRE h"/>
        <item code="2#m#pasliste" algoitem="LIRE m"/>
        <item code="5#m#m+1#pasliste" algoitem="m PREND_LA_VALEUR m+1"/>
        <item code="6#m==60" algoitem="SI (m==60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#m#0#pasliste" algoitem="m PREND_LA_VALEUR 0"/>
            <item code="5#h#h+1#pasliste" algoitem="h PREND_LA_VALEUR h+1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#h==24" algoitem="SI (h==24) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#h#0#pasliste" algoitem="h PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="3#h#1#pasliste" algoitem="AFFICHER h"/>
        <item code="3#m#1#pasliste" algoitem="AFFICHER m"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
