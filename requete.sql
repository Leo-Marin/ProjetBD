/*REQUETE ID CLEINT PRENOM NOM ARGENTDEPENSE DANS A PHARMACIE GROUP BY*/

SELECT CLIENT.ID_CLIENT,NOM,PRENOM,SUM(PRIX)
FROM VENTE,CLIENT, PRODUIT, MARCHANDISE
WHERE VENTE.ID_CLIENT=CLIENT.ID_CLIENT 
AND MARCHANDISE.ID_MARCH=VENTE.ID_MARCH
AND MARCHANDISE.ID_PRODUIT=PRODUIT.ID_PRODUIT
GROUP BY CLIENT.ID_CLIENT,NOM,PRENOM;


SELECT PRIX
FROM PRODUIT JOIN MARCHANDISE ON PRODUIT.ID_PRODUIT=MARCHANDISE.ID_PRODUIT
    JOIN VENTE ON VENTE.ID_MARCH=MARCHANDISE.ID_MARCH
    JOIN CLIENT ON CLIENT.ID_CLIENT=VENTE.ID_CLIENT
WHERE CLIENT.ID_CLIENT=2001;
/* -------------------------------------*/


/*Une requête avec group by ça serait genre, les commandes groupé par FOURNISSEURs avec un count qui dit combien de commande on été passées chez un tel FOURNISSEUR*/


SELECT NOM_FOURNISSEUR, SUM(PRIX), COUNT(ID_COMMANDE)
FROM COMMANDE
GROUP BY NOM_FOURNISSEUR;



SELECT VENTE.ID_CLIENT, SUM(PRIX)
FROM VENTE JOIN CLIENT ON VENTE.ID_CLIENT=CLIENT.ID_CLIENT
JOIN MARCHANDISE ON VENTE.ID_MARCH=MARCHANDISE.ID_MARCH
JOIN PRODUIT ON PRODUIT.ID_PRODUIT=MARCHANDISE.ID_PRODUIT
WHERE VENTE.ID_CLIENT = 2001
GROUP BY VENTE.ID_CLIENT;

/* -------------------------------------*/

/* moyenne AGE DES CLICLOS*/

SELECT MOY(AGE)
FROM CLIENT


/* -------------------------------------*/



/* -------------------------------------*/
/* -------------------------------------*/
/* -------------------------------------*/
/* -------------------------------------*/
/* -------------------------------------*/
/* -------------------------------------*/

SELECT NOM,CLIENT
FROM VENTE v1,CLIENT
WHERE VENTE.ID_CLIENT=CLIENT.ID_CLIENT AND EXISTS (SELECT * FROM VENTE v2 WHERE v1;ID_MARCH) 

                                                                                 
                                                                              
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
SELECT ID_EMPLOYE FROM EMPLOYE;    
