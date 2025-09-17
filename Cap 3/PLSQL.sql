SET SERVEROUTPUT ON;
DECLARE
    v_nr_nota POSITIVEN NOT NULL := 9; --Positivo e não pode ser nulo
BEGIN   
    DBMS_OUTPUT.PUT_LINE(v_nr_nota);
END;