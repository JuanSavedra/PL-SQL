SET SERVEROUTPUT ON
DECLARE
    v_message VARCHAR(40) := 'PI: ' ;

    -- Variável constante que não pode ser alterada
    v_pi CONSTANT NUMBER(5, 4) := 3.1415;
BEGIN
    v_message := v_message || TO_CHAR(v_pi, '9D9999');
    DBMS_OUTPUT.PUT_LINE(v_message);
END;