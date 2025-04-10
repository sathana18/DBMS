CREATE PROCEDURE calculate_operations(a NUMERIC, b NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
RAISE NOTICE 'Sum: %', (a + b);
RAISE NOTICE 'Difference: %', (a - b);
RAISE NOTICE 'Product: %', (a * b);
IF b > 0 THEN
RAISE NOTICE 'Quotient: %', (a / b);
RAISE NOTICE 'Modulo: %', (a % b);
ELSE
RAISE NOTICE 'Quotient Modulo: undefined (division by zero)';
END IF;
END;
$$;