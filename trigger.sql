--DELIMITER //
CREATE TRIGGER tr_travaille_max_add
BEFORE INSERT ON TRAVAILLE

DECLARE
v_nb NUMBER (7);

BEGIN
    SELECT COUNT(*) INTO v_nb
    FROM TRAVAILLE
    WHERE ID_EMPLOYE= NEW.ID_EMPLOYE and ID_HORAIRE IN (SELECT h2.ID_HORAIRE
                                                        FROM HORAIRE h2
                                                        WHERE h2.NUMERO_SEMAINE IN ( SELECT H.NUMERO_SEMAINE AS nmr_sem
                                                                                     FROM HORAIRE H
                                                                                     WHERE ID_HORAIRE = NEW.ID_HORAIRE));
    IF cpt_h*8 >=  40 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Le salarié ebosse déjà assez khoya');
    END IF;
END;
/
--//

--SHOW ERROR
/*---------QUESTION 9--------------*/
