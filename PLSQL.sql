SET SERVEROUTPUT ON;
DECLARE
    v_message varchar(40);
BEGIN
    v_message := 'Hello World'; /* Aspas simples devido ao varchar */
    DBMS_OUTPUT.PUT_LINE ( v_message );
END;