
/* create a function to calculate age from DOB of candidate */
DELIMITER $$
CREATE FUNCTION fun_getAge(DOB date)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE age int;
	SELECT YEAR(CURDATE()) - YEAR(DOB) INTO year;
	RETURN age;
END$$
DELIMITER ;

SELECT fun_getAge('1998/09/28') as CandidateAge; 
    
/* Get the full name of the candidate by candidate_id */
DELIMITER $$
CREATE FUNCTION fun_FullName(candidate_id INT)
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
	DECLARE fullName varchar(128);
	SELECT CONCAT(first_name,' ', COALESCE(middle_name,''), ' ', last_name) INTO fullName FROM fellowship_candidates WHERE id = candidate_id;
	RETURN fullName;
END$$
DELIMITER ;
  
SELECT fun_FullName(5);

/* Take cpu percent and use case to print cpu percent is high when > 80,  normal<80 and else low */
DELIMITER $$
CREATE FUNCTION fun_cpuCheck(cpu_percent DOUBLE)
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
	CASE
		WHEN cpu_percent > 80 THEN  RETURN 'cpu percent is high';
		WHEN cpu_percent < 80 THEN RETURN 'cpu percent is normal';
		ELSE RETURN 'low';
	END CASE;
END$$
DELIMITER ;

SELECT fun_cpuCheck(42);

/* Get company count by location */
DELIMITER $$
CREATE FUNCTION fun_companyCount(companyLocation varchar(60))
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
	DECLARE get_company_count varchar(160);
	SELECT COUNT(companyLocation) INTO get_company_count FROM company WHERE location = companyLocation;
	RETURN get_company_count;
END$$
DELIMITER ;
    
select fun_companyCount('Maharashtra');