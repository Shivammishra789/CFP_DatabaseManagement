use candidate_management;

CREATE TABLE hired_engineers(
	id int NOT NULL,
	first_name varchar(100) NOT NULL,
	middle_name varchar(100) DEFAULT NULL,
	last_name varchar(100) NOT NULL,
	email varchar(50) NOT NULL,
	mobile_num bigint NOT NULL,
	hired_city varchar(50) NOT NULL,
	hired_date datetime NOT NULL,
	degree varchar(100) NOT NULL,
	permanent_pincode int DEFAULT NULL,
	hired_lab varchar(20) DEFAULT NULL,
	attitude_remark varchar(15) DEFAULT NULL,
	communication_remark varchar(15) DEFAULT NULL,
	knowledge_remark varchar(15) DEFAULT NULL,
	aggregate_remark varchar(15) DEFAULT NULL,
	status varchar(20) NOT NULL,
	creator_stamp datetime DEFAULT NULL,
	creator_user int DEFAULT NULL,
	PRIMARY KEY (id,hired_date)
)
PARTITION BY RANGE ( YEAR(hired_date) ) (
	PARTITION p2014 VALUES LESS THAN (2015),
	PARTITION p2015 VALUES LESS THAN (2016),
	PARTITION p2016 VALUES LESS THAN (2017),
	PARTITION p2017 VALUES LESS THAN (2018),
	PARTITION p_max_year VALUES LESS THAN MAXVALUE
);


INSERT INTO hired_engineers (id, first_name, middle_name, last_name, email, mobile_num, hired_city, hired_date, degree, permanent_pincode, 
                             hired_lab, attitude_remark, communication_remark, knowledge_remark,
                             aggregate_remark, status,creator_stamp,creator_user )
VALUES 
	(101,"Mukul",Null, "Jain", "mk@gmail.com", 8847994455, "Gudgoan", "2015-05-05 14:20:56","Btech", 442255, 
	"EasyRewarz", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-01-01 12:20:56",1),
	(102,"Dibyesh",Null, "Mishra", "dm@gmail.com", 8007994455, "Gudgoan", "2016-01-08 12:20:56","MCA", 448255, 
	"EasyRewarz", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-01-08 12:20:56",3),
	(103,"Ashok",null, "Pathak", "ap@gmail.com", 9977994455, "Mumbai", "2017-04-03 14:20:56","Btech", 442255, 
	"Bifin", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-03 14:20:56",4),
	(104,"Manali",null, "Wani", "mw@gmail.com", 8577994455, "Jaipur", "2015-04-07 14:20:56","Btech", 222255, 
	"Happiest Minds", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5),
	(105,"SHivam",null, "Mishra", "sm@gmail.com", 8877994455, "Pune", "2017-04-07 14:20:56","Btech", 222255, 
	"Happiest Minds", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5),
	(106,"Sam",null, "Mishra", "sm@gmail.com", 8878894455, "Pune", "2016-04-07 14:20:56","Btech", 245255, 
	"Bifin Minds", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5);
    

EXPLAIN SELECT * FROM hired_engineers WHERE hired_date = '2015-05-05 14:20:56';
+----+-------------+-----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table           | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-----------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | hired_engineers | p2015      | ALL  | NULL          | NULL | NULL    | NULL |    2 |    50.00 | Using where |
+----+-------------+-----------------+------------+------+---------------+------+---------+------+------+----------+-------------+

