/*REQUETE ID CLEINT PRENOM NOM ARGENTDEPENSE DANS A PHARMACIE GROUP BY*/

SELECT ID_CLIENT,NOM,PRENOM,SUM(PRIX)
FROM VENTE,CLIENT
WHERE VENTE.ID_CLIENT=CLIENT.ID_CLIENT
GROUP BY ID_CLIENT;


/* -------------------------------------*/


/*Une requête avec group by ça serait genre, les commandes groupé par fournisseurs avec un count qui dit combien de commande on été passées chez un tel fournisseur*/

SELECT fournisseur, SUM(PRIX), SUM(ID_COMMANDE)
FROM COMMANDE
GROUP BY fournisseur 


/* -------------------------------------*/


/*La division jsais po*/


/* -------------------------------------*/







SELECT NOM,CLIENT
FROM VENTE v1,CLIENT
WHERE VENTE.ID_CLIENT=CLIENT.ID_CLIENT AND EXISTS (SELECT * FROM VENTE v2 WHERE v1;ID_MARCH) 

                                                                                 
                                                                              
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
SELECT ID_EMPLOYE FROM EMPLOYE;                                                         
