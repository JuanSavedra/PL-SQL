SET SERVEROUTPUT ON;
DECLARE
    v_female BOOLEAN;
    v_message VARCHAR(70);
    v_date_of_birth VARCHAR2(20) := to_char(to_date('15042006', 'ddmmyyyy'), 'day');
BEGIN
    v_female := TRUE;
    
    IF v_female THEN
        v_message := 'Feminino / ';
    ELSE
        v_message := 'Masculino / ';
    END IF;
    
    -- SUB-BLOCO
    DECLARE 
        v_showComplete BOOLEAN := TRUE;
        v_counter NUMBER := 0;
    BEGIN
        IF v_showComplete THEN
            v_counter := v_counter + 1;
            v_message := v_message || 'Nasceu em: ' || v_date_of_birth;
        END IF;
    END;
    
    dbms_output.put_line(v_message);
END;