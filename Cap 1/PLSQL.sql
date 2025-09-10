SET SERVEROUTPUT ON;
DECLARE
    v_bread_type VARCHAR(20) := 'Brioche';
    v_amount_of_meat NUMBER(1) := 2;
    v_extra_cheese BOOLEAN := TRUE;
    v_extra_bacon BOOLEAN := TRUE;
    v_price NUMBER(5, 2) := 20.00;
BEGIN   
    IF v_amount_of_meat > 1 THEN
        v_price := v_price + ((v_amount_of_meat * 6.00) - 6.00);
    END IF;
    
    IF v_extra_cheese THEN
        v_price := v_price + 3.50;
    END IF;
    
    IF v_extra_bacon THEN
        v_price := v_price + 4.50;
    END IF;
    
    IF v_extra_cheese AND v_extra_bacon THEN
        v_price := v_price - 1.00;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Tipo de pão: ' || v_bread_type);
    DBMS_OUTPUT.PUT_LINE('Quantidade de carnes: ' || v_amount_of_meat);
    
    IF v_extra_cheese THEN
        DBMS_OUTPUT.PUT_LINE('Adicionou queijo extra.');
    END IF;
    
    IF v_extra_bacon THEN
        DBMS_OUTPUT.PUT_LINE('Adicionou bacon extra.');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Preço final: ' || TO_CHAR(v_price, 'FM999D00'));
END;