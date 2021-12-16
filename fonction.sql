/* -------------------------------------*/


/*FONCTION qui retourne l'argent qu'à dépensé un client dans l'achat de marchandises*/

CREATE or REPLACE FUNCTION argentByClient( v_ID_CLIENT IN CLIENT.ID_CLIENT%TYPE)
RETURN NUMBER is

v_sum NUMBER;

BEGIN

SELECT SUM(PRIX) INTO v_sum
FROM VENTE JOIN CLIENT ON VENTE.ID_CLIENT=CLIENT
WHERE ID_CLIENT = v_ID_CLIENT
GROUP BY ID_CLIENT;

RETURN v_sum;

END;


/* -------------------------------------*/


/*La procédure j'y reflechie*/