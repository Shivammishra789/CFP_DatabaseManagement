/* 
To update valid password , trigger will be invoked before update to 
check the new value of password if its empty sql error message will be singled. 
*/
DELIMITER $$
	CREATE TRIGGER before_update_password
	BEFORE UPDATE ON user_details FOR EACH ROW
	BEGIN
		DECLARE error_msg1 VARCHAR(600);
        DECLARE error_msg2 VARCHAR(600);
		SET error_msg1=('Password cannot be empty');
		SET error_msg2=('New Password Should Be Defferent From Old Password.');
			IF
				new.password = '' THEN signal sqlstate '45000' set message_text=error_msg1;
			ELSEIF
				new.password = old.password THEN signal sqlstate '44000' set message_text=error_msg2;
			END IF;
	END$$
  DELIMITER ;      
  
  UPDATE user_details set password = '' where id = 3;
  
  /*
  Delete Trigger:- After deleting a row from company table, trigger will be 
  invoked to insert the company name and date_deleted in another table named as company_trash
  */
  DELIMITER $$
	CREATE TRIGGER after_company_delete
	AFTER DELETE ON company FOR EACH ROW
	BEGIN
		IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES
				    WHERE TABLE_NAME = N'company_trash')
			THEN 	INSERT INTO company_trash
					VALUES (old.name, CURDATE());
		ELSE CREATE TABLE compant_trash(comapany_name VARCHAR(80) NOT NULL, deleted_date DATE NOT NULL);
		END IF;
	END$$
  DELIMITER ;