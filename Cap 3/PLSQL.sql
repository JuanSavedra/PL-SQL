SET SERVEROUTPUT ON;
DECLARE
    rec_db_funcionario DB_FUNCIONARIO%ROWTYPE;
BEGIN
    SELECT *
    INTO rec_db_funcionario
    FROM DB_FUNCIONARIO
    WHERE NR_MATRICULA_FUNC = 27;
    
    DBMS_OUTPUT.PUT_LINE('O funcionário ' || rec_db_funcionario.nm_funcionario 
        || ' nasceu em ' || rec_db_funcionario.dt_nascimento
        || ' e o seu status é ' || rec_db_funcionario.st_funcionario
    );
END;