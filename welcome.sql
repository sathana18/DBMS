CREATE PROCEDURE welcome_message(your_name TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
RAISE NOTICE 'Welcome %', your_name;
END;
$$;