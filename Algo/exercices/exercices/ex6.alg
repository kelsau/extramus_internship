<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="tarifs PREND_LA_VALEUR 2" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#accidents" algoitem="accidents EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#permis" algoitem="permis EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#fidelité" algoitem="fidelité EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tarifs" algoitem="tarifs EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#quel age avez vous ?#1" algoitem="AFFICHER &quot;quel age avez vous ?&quot;"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="4#depuis combien de temps avez vous le permis ?#1" algoitem="AFFICHER &quot;depuis combien de temps avez vous le permis ?&quot;"/>
        <item code="2#permis#pasliste" algoitem="LIRE permis"/>
        <item code="4#combien avez vous eu d'accidents responsable ?#1" algoitem="AFFICHER &quot;combien avez vous eu d'accidents responsable ?&quot;"/>
        <item code="2#accidents#pasliste" algoitem="LIRE accidents"/>
        <item code="4#Depuis combien de temps êtes vous assuré ?#1" algoitem="AFFICHER &quot;Depuis combien de temps êtes vous assuré ?&quot;"/>
        <item code="2#fidelité#pasliste" algoitem="LIRE fidelité"/>
        <item code="6#age&lt;25" algoitem="SI (age&lt;25) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="6#permis&lt;=2" algoitem="SI (permis&lt;=2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="6#accidents==0" algoitem="SI (accidents==0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#4#pasliste" algoitem="tarifs PREND_LA_VALEUR 4"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#3#pasliste" algoitem="tarifs PREND_LA_VALEUR 3"/>
                        <item code="4#assuré tarif orange#1" algoitem="AFFICHER &quot;assuré tarif orange&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif rouge#1" algoitem="AFFICHER &quot;assuré tarif rouge&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="4#pas d'assurance#1" algoitem="AFFICHER &quot;pas d'assurance&quot;"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#permis>2" algoitem="SI (permis>2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="6#accidents==0" algoitem="SI (accidents==0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#3#pasliste" algoitem="tarifs PREND_LA_VALEUR 3"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#2#pasliste" algoitem="tarifs PREND_LA_VALEUR 2"/>
                        <item code="4#assuré tarif vert#1" algoitem="AFFICHER &quot;assuré tarif vert&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif orange#1" algoitem="AFFICHER &quot;assuré tarif orange&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents==1" algoitem="SI (accidents==1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#4#pasliste" algoitem="tarifs PREND_LA_VALEUR 4"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#3#pasliste" algoitem="tarifs PREND_LA_VALEUR 3"/>
                        <item code="4#assuré tarif orange#1" algoitem="AFFICHER &quot;assuré tarif orange&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif rouge#1" algoitem="AFFICHER &quot;assuré tarif rouge&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents>=2" algoitem="SI (accidents>=2) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#pas d'assurance#1" algoitem="AFFICHER &quot;pas d'assurance&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#age>=25" algoitem="SI (age>=25) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="6#permis&lt;=2" algoitem="SI (permis&lt;=2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="6#accidents==0" algoitem="SI (accidents==0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#2#pasliste" algoitem="tarifs PREND_LA_VALEUR 2"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#1#pasliste" algoitem="tarifs PREND_LA_VALEUR 1"/>
                        <item code="4#assuré tarif bleu#1" algoitem="AFFICHER &quot;assuré tarif bleu&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif vert#1" algoitem="AFFICHER &quot;assuré tarif vert&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents==1" algoitem="SI (accidents==1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#3#pasliste" algoitem="tarifs PREND_LA_VALEUR 3"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#2#pasliste" algoitem="tarifs PREND_LA_VALEUR 2"/>
                        <item code="4#assuré tarif vert#1" algoitem="AFFICHER &quot;assuré tarif vert&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif orange#1" algoitem="AFFICHER &quot;assuré tarif orange&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents==2" algoitem="SI (accidents==2) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#4#pasliste" algoitem="tarifs PREND_LA_VALEUR 4"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#3#pasliste" algoitem="tarifs PREND_LA_VALEUR 3"/>
                        <item code="4#assuré tarif orange#1" algoitem="AFFICHER &quot;assuré tarif orange&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif rouge#1" algoitem="AFFICHER &quot;assuré tarif rouge&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents>2" algoitem="SI (accidents>2) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#pas d'assurance#1" algoitem="AFFICHER &quot;pas d'assurance&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#permis>2" algoitem="SI (permis>2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="6#accidents==0" algoitem="SI (accidents==0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#2#pasliste" algoitem="tarifs PREND_LA_VALEUR 2"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#1#pasliste" algoitem="tarifs PREND_LA_VALEUR 1"/>
                        <item code="4#assuré tarif bleu#1" algoitem="AFFICHER &quot;assuré tarif bleu&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif vert#1" algoitem="AFFICHER &quot;assuré tarif vert&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents==1" algoitem="SI (accidents==1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#3#pasliste" algoitem="tarifs PREND_LA_VALEUR 3"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#2#pasliste" algoitem="tarifs PREND_LA_VALEUR 2"/>
                        <item code="4#assuré tarif vert#1" algoitem="AFFICHER &quot;assuré tarif vert&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif orange#1" algoitem="AFFICHER &quot;assuré tarif orange&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents==2" algoitem="SI (accidents==2) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tarifs#4#pasliste" algoitem="tarifs PREND_LA_VALEUR 4"/>
                    <item code="6#fidelité>=5" algoitem="SI (fidelité>=5) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#tarifs#3#pasliste" algoitem="tarifs PREND_LA_VALEUR 3"/>
                        <item code="4#assuré tarif orange#1" algoitem="AFFICHER &quot;assuré tarif orange&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="4#assuré tarif rouge#1" algoitem="AFFICHER &quot;assuré tarif rouge&quot;"/>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#accidents>2" algoitem="SI (accidents>2) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#pas d'assurance#1" algoitem="AFFICHER &quot;pas d'assurance&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
