/*SELECT ID_HORAIRE
FROM HORAIRE h2
WHERE h2.NUMERO_SEMAINE IN ( SELECT H.NUMERO_SEMAINE AS nmr_sem
                            FROM HORAIRE H JOIN TRAVAILLE T on H.ID_HORAIRE = T.ID_HORAIRE
                             WHERE T.ID_HORAIRE = new.ID_HORAIRE);



*/

/*SELECT COUNT(*)
FROM TRAVAILLE
WHERE ID_EMPLOYE= NEW.ID_EMPLOYE and ID_HORAIRE IN (SELECT h2.ID_HORAIRE
                                                    FROM HORAIRE h2
                                                    WHERE h2.NUMERO_SEMAINE IN ( SELECT H.NUMERO_SEMAINE AS nmr_sem
                                                                                 FROM HORAIRE H
                                                                                 WHERE ID_HORAIRE = NEW.ID_HORAIRE));
*/                                                                                 







SELECT ID_CLIENT,NOM,PRENOM,SUM(PRIX)
FROM VENTE,CLIENT
WHERE VENTE.ID_CLIENT=CLIENT.ID_CLIENT
GROUP BY ID_CLIENT;


SELECT NOM,CLIENT
FROM VENTE v1,CLIENT
WHERE VENTE.ID_CLIENT=CLIENT.ID_CLIENT AND EXISTS (SELECT * FROM VENTE v2 WHERE v1;ID_MARCH) 

                                                                                 
                                                                              
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
SELECT ID_EMPLOYE FROM EMPLOYE;                                                         
