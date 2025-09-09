SET SERVEROUTPUT ON;
DECLARE
    v_female boolean;
    v_message varchar(70);
BEGIN
    v_female := true;
    
    if v_female then 
        v_message := 'É do sexo feminino.';
    else
        v_message := 'É do sexo masculino.';
    end if;
    
    dbms_output.put_line(v_message);
END;