use candidate_management;

/* handling exception while calling displayFullName function in a procedure */
DELIMITER //
CREATE PROCEDURE getFullName( IN f_id varchar(100))
BEGIN
	declare incorrectFormat condition for 1366;
	declare exit handler for incorrectFormat
	signal sqlstate '45000' set message_text='please enter integer format for id'; 
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
