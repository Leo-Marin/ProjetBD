-- SELECT ID_HORAIRE
-- FROM HORAIRE h2
-- WHERE h2.NUMERO_SEMAINE IN ( SELECT H.NUMERO_SEMAINE AS nmr_sem
--                              FROM HORAIRE H JOIN TRAVAILLE T on H.ID_HORAIRE = T.ID_HORAIRE
--                              WHERE T.ID_HORAIRE = new.ID_HORAIRE);





SELECT COUNT(*)
FROM TRAVAILLE
WHERE ID_EMPLOYE= NEW.ID_EMPLOYE and ID_HORAIRE IN (SELECT h2.ID_HORAIRE
                                                    FROM HORAIRE h2
                                                    WHERE h2.NUMERO_SEMAINE IN ( SELECT H.NUMERO_SEMAINE AS nmr_sem
                                                                                 FROM HORAIRE H
                                                                                 WHERE ID_HORAIRE = NEW.ID_HORAIRE));