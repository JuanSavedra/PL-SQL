/*
Como descobrir qual é a forma de pagamento
mais utilizada pelo cliente?
*/ 

-- Exibe a forma de pagamento mais utilizada do cliente (SQL)
select  fp.ds_forma_pagto, count(*) qtd_utilizadas
from    db_forma_pagamento fp inner join db_pedido p
on (fp.cd_forma_pagto = p.cd_forma_pagto)
where   p.nr_cliente = &informe_numero_cliente
group by fp.ds_forma_pagto
order by 2 desc
fetch  first 1 rows only;

-- Exibe a forma de pagamento mais utilizada do cliente (PL/SQL)
SET SERVEROUTPUT ON;
DECLARE
    v_nr_cliente db_pedido.nr_cliente %TYPE;
    v_ds_forma_pagto db_forma_pagamento.ds_forma_pagto%TYPE;
    v_qt_vezes_utilizada INTEGER := 0;
BEGIN
    v_nr_cliente := '&informe_numero_cliente';
    
    SELECT fp.ds_forma_pagto, count(*) qtd_utilizadas
    INTO v_ds_forma_pagto, v_qt_vezes_utilizada
    FROM DB_FORMA_PAGAMENTO fp INNER JOIN DB_PEDIDO p
    ON (fp.cd_forma_pagto = p.cd_forma_pagto)
    WHERE p.nr_cliente = v_nr_cliente
    GROUP BY fp.ds_forma_pagto
    ORDER BY 2 DESC
    FETCH FIRST 1 ROWS ONLY;
    
    DBMS_OUTPUT.PUT_LINE('O cliente ' || v_nr_cliente || 
        ' utilizou a forma de pagamento ' || v_ds_forma_pagto  || ' por ' || 
        v_qt_vezes_utilizada ||  ' vezes.'
    );
END;