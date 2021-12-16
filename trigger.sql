/* -------------------------------------*/


/* VERFIFIE QUE LE SALARIE NE BOSSE PAS TROP TU CONNAIS*/

CREATE TRIGGER tr_travaille_max_add
BEFORE INSERT ON TRAVAILLE

DECLARE
v_nb NUMBER;

BEGIN
    SELECT COUNT(*) INTO v_nb
    FROM TRAVAILLE
    WHERE ID_EMPLOYE=:NEW.ID_EMPLOYE and ID_HORAIRE IN (SELECT h2.ID_HORAIRE
                                                        FROM HORAIRE h2
                                                        WHERE h2.NUMERO_SEMAINE IN ( SELECT H.NUMERO_SEMAINE AS nmr_sem
                                                                                     FROM HORAIRE H
                                                                                     WHERE ID_HORAIRE = NEW.ID_HORAIRE));
    IF cpt_h*8 >=  40 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Le salarié ebosse déjà assez khoya');
    END IF;
END;
/


/* -------------------------------------*/


/*Et faut mettre un autre trigger qui vérifie le nombre de personnes qui travaille un tel jour, pour pas dépasser 2 ou 3 jsais plus on a mis quoi*/

CREATE OR REPLACE TRIGGER nb_salarieSametime_max
BEFORE INSERT ON TRAVAILLE
DECLARE
v_nbpersonne NUMBER;

BEGIN
    SELECT COUNT(*) INTO v_nbpersonne
    FROM TRAVAILLE
    WHERE ID_HORAIRE=:NEW.ID_HORAIRE ;

    IF v_nbpersonne>=3 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Il y a deja 3 salariés qui bosse ce jour là');
    END IF;

END;
/


/* -------------------------------------*/


/*On peut mettre un autre trigger pour dire que on peut pas vendre une marchandise sans prescription, si le produit En question nécessite une prescription*/

CREATE OR REPLACE TRIGGER produit_prerscri
BEFORE INSERT ON VENTE
DECLARE
v_prescri CHAR(1);

BEGIN
    
    IF NEW.PRESCRIPTION='0' THEN    
        SELECT PRODUIT.PRESCRIPTION INTO v_prescri
        FROM PRODUIT JOIN MARCHANDISE ON PRODUIT.ID_PRODUIT=MARCHANDISE.ID_PRODUIT
        WHERE ID_MARCH =:NEW.ID_MARCH;

        IF v_prescri = '0' THEN
            RAISE_APPLICATION_ERROR(-20001, 'CE PRODUIT NEP EUT ETRE VENDU SANS PRESCRIPTION');
        END IF;
    END IF;
END;
/