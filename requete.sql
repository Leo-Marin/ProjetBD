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

/*les athlètes + MEDOC qui ont participé uniquement aux épreuves
 de la table EPREUVE =CLIENT et à aucune autre (Division "exacte"), ici Martin.
 PARTICIPER = PRODUIT
 EPREUVE = CLIENT*/
 
/* SELECT ID_PRODUIT, NOM_PRODUIT 
FROM PRODUIT A
WHERE NOT EXISTS (
                SELECT * 
                FROM EPREUVE
                WHERE NOT EXISTS (
                    SELECT * 
                    FROM PARTICIPER B JOIN CLIENT C ON C.ID_CLIENT=B.ID_CLIENT
                    WHERE (A.Athlète = B.Athlète) AND (B.Epreuve = EPREUVE.Epreuve)))
GROUP BY Athlète
HAVING COUNT(*) = (SELECT COUNT (DISTINCT Epreuve) FROM EPREUVE) ;


SELECT *
FROM PILOTE
WHERE NOT EXISTS (SELECT *
    FROM AVION
    WHERE NOT EXISTS (SELECT *
        FROM VOL
        WHERE VOL.Plnum=PILOTE.Plnum
        AND VOL.Avnum=AVION.Avnum));
 */
/* -------------------------------------*/







SELECT NOM,CLIENT
FROM VENTE v1,CLIENT
WHERE VENTE.ID_CLIENT=CLIENT.ID_CLIENT AND EXISTS (SELECT * FROM VENTE v2 WHERE v1;ID_MARCH) 

                                                                                 
                                                                              
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
SELECT ID_EMPLOYE FROM EMPLOYE;                                                         
