use candidate_management;

/*
Q1. modify the password column to default value and then insert a user 
with no password specified and then do select statement
*/

DELIMITER $$
CREATE PROCEDURE sp_new_user(user_id int, emailId varchar(200), firstName varchar(100), lastName varchar(100),contact bigint)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		ROLLBACK;
		SELECT 'TRANSACTION FAILED: ROLLBACK';
	END;
	START TRANSACTION;
		ALTER TABLE user_details ALTER COLUMN password SET DEFAULT 'abc@123';
		INSERT INTO user_details(id, email, first_name, last_name, contact_number)
		VALUES(user_id, emailId, firstName, lastName, contact);
		SELECT * FROM user_details WHERE id = user_id;
	COMMIT;
	SELECT 'TRANSACTION SUCCESSFUl';
END$$
DELIMITER ;

CALL sp_new_user(14,'asqik@123.com', 'JK', 'KK', 2645967489);


/*
Q2. insert new company and do insert in all other tables which are interlinked to this
*/
DELIMITER $$
CREATE PROCEDURE sp_new_company(sp_id int, sp_name varchar(150), sp_address varchar(500), sp_location varchar(300),
                                sp_comp_req int, sp_cand_id int, sp_requested_month varchar(50), sp_city varchar(200),
                                sp_no_of_engg int, sp_tech_stack_id int, sp_tech_type_id int, sp_maker_programs_id int, sp_lead_id int)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		ROLLBACK;
		SELECT 'TRANSACTION FAILED: ROLLBACK';
	END;
	START TRANSACTION;
		INSERT INTO company(id, name, address, location)
		VALUES (sp_id, sp_name, sp_address, sp_location);
		INSERT INTO company_requirement(id, company_id, candidate_id, requested_month, city, no_of_engg, 
	                                    tech_stack_id, tech_type_id, maker_programs_id, lead_id)
		VALUES (sp_comp_req, sp_id, sp_cand_id, sp_requested_month, sp_city, sp_no_of_engg, sp_tech_stack_id,
	            sp_tech_type_id, sp_maker_programs_id, sp_lead_id );
	COMMIT;
	SELECT 'TRANSACTION SUCCESSFUl';
END$$
DELIMITER ;

call sp_new_company(997,'SAMSUNG','Ahemdabad','Gujrat', 01287, 9,'jan', 'Gurgaon', 20, 2, 3, 3, 1);