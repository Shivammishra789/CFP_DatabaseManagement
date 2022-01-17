/* Define a stored procedure to get a list of company names from the company table using cursor*/

DELIMITER $$
CREATE PROCEDURE proc_comp_list()
BEGIN
	DECLARE company_name varchar(100);
	DECLARE comp_list varchar(500) DEFAULT '';
	DECLARE finish INTEGER DEFAULT 0;
	DECLARE C1 CURSOR FOR SELECT name FROM company;
	DECLARE CONTINUE HANDLER for NOT FOUND set finish = 1;
	OPEN C1;
		get_company: LOOP
			FETCH c1 INTO company_name;
				IF finish = 1 THEN
					LEAVE get_company;
				END IF;
			SET comp_list = CONCAT(company_name,',',comp_list);
		END LOOP get_company;
		SELECT comp_list;
	CLOSE c1;
END$$
DELIMITER ;

CALL proc_comp_list;

/*define a procedure to get a list of distinct email-ids from the cpu log table with with technology=android */
DELIMITER $$
CREATE PROCEDURE proc_email_ids_of_android_persons(INOUT email_list varchar(1000))
BEGIN
	DECLARE email_id varchar(100);
	DECLARE finish INTEGER DEFAULT 0;
	DECLARE C1 CURSOR FOR SELECT DISTINCT user_name FROM temporary_mis WHERE technology = 'android';
	DECLARE CONTINUE HANDLER for NOT FOUND set finish = 1;
	OPEN C1;
		get_email: LOOP
			FETCH c1 INTO email_id;
				IF finish = 1 THEN
					LEAVE get_email;
				END IF;
			SET email_list = CONCAT(email_id,',',email_list);
		END LOOP get_email;
	CLOSE c1;
END$$
DELIMITER ;

SET @email_list = '';
CALL proc_email_ids_of_android_persons(@email_list);
SELECT @email_list;
