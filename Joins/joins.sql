use candidate_management;

/*Select mentor details and its tech name using inner join*/
SELECT mentor.name, mentor.mentor_type, tech_stack.tech_name
FROM mentor
INNER JOIN mentor_techstack ON mentor.id = mentor_techstack.mentor_id
INNER JOIN tech_stack ON mentor_techstack.tech_stack_id = tech_stack.id;

/* select first name, last name ,password and contact number by doing 
   outer join on candidate_fellowship and user_details table */
SELECT fellowship_candidates.first_name, fellowship_candidates.last_name ,user_details.contact_number, user_details.password
FROM fellowship_candidates
LEFT JOIN user_details ON fellowship_candidates.id = user_details.id;

/* self join */
SELECT b.first_name AS Name, b.mobile_num AS MobileNo, b.hired_city AS City, b.joining_date AS 'Joining Date'
FROM fellowship_candidates a
INNER JOIN fellowship_candidates b
WHERE a.hired_city = b.hired_city AND b.first_name = 'Shivam';
