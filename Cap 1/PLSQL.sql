SET SERVEROUTPUT ON
DECLARE
    v_client_name VARCHAR(40) := 'Juan Savedra dos Santos';
    v_burger_price CONSTANT NUMBER(4, 2) := 25.50;
    v_requested_burgers NUMBER(3) := 4;
    v_total_price NUMBER(7, 2) := 0.00;
    v_discount NUMBER(7, 2) := 0.00;
BEGIN
    v_total_price := v_requested_burgers * v_burger_price;

    IF v_requested_burgers > 3 THEN 
        -- 10% de desconto
        v_discount := (10 / 100) * v_total_price;
        v_total_price := v_total_price - v_discount;
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_client_name);
    DBMS_OUTPUT.PUT_LINE(v_requested_burgers);
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(v_total_price));
END;