use candidate_management;

/* create view for selecting student name and its company name he is assigned to*/
CREATE VIEW companyAssigned AS
SELECT fellowship_candidates.id, fellowship_candidates.first_name, company.name as companyAssigned
FROM fellowship_candidates
INNER JOIN company_requirement ON fellowship_candidates.id = company_requirement.candidate_id
INNER JOIN company ON company_requirement.company_id = company.id;

SELECT * FROM companyAssigned;

/* select all details from the maker plan */
CREATE VIEW makerPlan AS
SELECT * FROM maker_program;

SELECT * FROM makerPlan;

/*  list candidates personal info whose education check has been verified */
CREATE VIEW candidateInfo AS
SELECT fellowship_candidates.id, first_name, last_name, joining_date FROM fellowship_candidates
INNER JOIN  candidates_education_det_check ON fellowship_candidates.id = candidates_education_det_check.candidate_id
WHERE is_verified = 1;

SELECT * FROM candidateInfo;
