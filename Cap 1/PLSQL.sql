SET SERVEROUTPUT ON;
DECLARE
    v_accompaniment CONSTANT VARCHAR(50) := 'Batata frita';
    v_portion CHAR(1) := 'P';
    v_base_price NUMBER(6, 2) := 15.00;
BEGIN
    IF v_portion = 'M' THEN
        v_base_price := v_base_price + 3.00;
    ELSIF v_portion = 'G' THEN
        v_base_price := v_base_price + 5.00;
    ELSE
        v_base_price := v_base_price;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE(v_accompaniment);
    DBMS_OUTPUT.PUT_LINE(v_portion);
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(v_base_price, 'FM999D00'));
END;