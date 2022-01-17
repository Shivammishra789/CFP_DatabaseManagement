use candidate_management;

/* handling exception while calling displayFullName function in a procedure */
DELIMITER //
CREATE PROCEDURE getFullName( IN f_id varchar(100))
BEGIN
	DECLARE incorrectFormat CONDITION FOR 1366;
	DECLARE EXIT HANDLER FOR incorrectFormat
	SIGNAL SQLSTATE '45000' SET message_text='please enter integer format for id'; 
	SELECT fun_FullName(f_id);
END //
DELIMITER ;

call getFullName('id');

DELIMITER //
CREATE PROCEDURE proc_getview()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SELECT 'EXCEPTION OCCURED';
		END;
	SELECT * FROM candidateInfo;
END//
DELIMITER ;
	
CALL proc_getview;
