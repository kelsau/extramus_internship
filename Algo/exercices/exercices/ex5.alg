<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (B>50 OU C>50 OU D>50) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param nbDecimales="8" maxBoucle="500000" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#A" algoitem="A EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#B" algoitem="B EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#C" algoitem="C EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#D" algoitem="D EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#Favorable" algoitem="Favorable EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#Défavorable" algoitem="Défavorable EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#A#pasliste" algoitem="LIRE A"/>
        <item code="2#B#pasliste" algoitem="LIRE B"/>
        <item code="2#C#pasliste" algoitem="LIRE C"/>
        <item code="2#D#pasliste" algoitem="LIRE D"/>
        <item code="5#Favorable#&quot;Favorable&quot;#pasliste" algoitem="Favorable PREND_LA_VALEUR &quot;Favorable&quot;"/>
        <item code="5#Défavorable#&quot;Défavorable&quot;#pasliste" algoitem="Défavorable PREND_LA_VALEUR &quot;Défavorable&quot;"/>
        <item code="6#A>50" algoitem="SI (A>50) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#élu#0" algoitem="AFFICHER &quot;élu&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#B>50 OU C>50 OU D>50" algoitem="SI (B>50 OU C>50 OU D>50) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#pas élu#0" algoitem="AFFICHER &quot;pas élu&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#A>B ET A>C ET A>D ET A>12.5 ET A&lt;=50" algoitem="SI (A>B ET A>C ET A>D ET A>12.5 ET A&lt;=50) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="3#Favorable#0#pasliste" algoitem="AFFICHER Favorable"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="6#A&lt;=12.5" algoitem="SI (A&lt;=12.5) ALORS">
                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                    <item code="4#pas élu#0" algoitem="AFFICHER &quot;pas élu&quot;"/>
                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                    <item code="9#sinon" algoitem="SINON">
                                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                        <item code="6#A&lt;B OU A&lt;C OU A&lt;D ET A>12.5" algoitem="SI (A&lt;B OU A&lt;C OU A&lt;D ET A>12.5) ALORS">
                                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                            <item code="3#Défavorable#0#pasliste" algoitem="AFFICHER Défavorable"/>
                                            <item code="8#finsi" algoitem="FIN_SI"/>
                                        </item>
                                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                                    </item>
                                </item>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
