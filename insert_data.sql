use candidate_management;

/* Inserting data into tables*/

INSERT INTO hired_candidates (id, first_name, middle_name, last_name, email, mobile_num, hired_city, hired_date, degree, permanent_pincode, 
							  hired_lab, attitude_remark, communication_remark, knowledge_remark,
                              aggregate_remark, status,creator_stamp,creator_user )
VALUES 
	(101,"Mukul",Null, "Jain", "mk@gmail.com", 8847994455, "Gudgoan", "2022-05-05 14:20:56","Btech", 442255, 
	"EasyRewarz", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-01-01 12:20:56",1),
	(102,"Dibyesh",Null, "Mishra", "dm@gmail.com", 8007994455, "Gudgoan", "2022-01-08 12:20:56","MCA", 448255, 
	"EasyRewarz", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-01-08 12:20:56",3),
	(103,"Ashok",null, "Pathak", "ap@gmail.com", 9977994455, "Mumbai", "2022-04-03 14:20:56","Btech", 442255, 
	"Bifin", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-03 14:20:56",4),
	(104,"Manali",null, "Wani", "mw@gmail.com", 8577994455, "Jaipur", "2022-04-07 14:20:56","Btech", 222255, 
	"Happiest Minds", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5);
        
 select * from hired_candidates;
  
INSERT INTO fellowship_candidates
 VALUES 
	(1,'deepak','Kiran','Patil','deepak.63584@gmail.com ',8956748596,'Pune','2019-12-13 00:00:00','B.E',75.25,5245,5478,
	'Mumbai','Good','Good','Good','1999-12-13',1,'Kiran','Farmer',7584962547,300000,'Pune','Pune','photo_path',
	'2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),
	(2,'Arun','Deepak','Roy','Arundr@gmail.com',8889996660,'Mumbai','2018-11-05 00:00:00','B.E',79.35,5289,5436,
	'Pune','Good','Good','Good','1998-07-18',1,'Ketan','Farmer',77774441112,250000,'Mumbai','Mumbai','Codeme',
	'2018-11-05','Good',1,1,1,'Correct','Good',NULL,1),
	(3,'Shivam','Vijaynarayan','Mishra','sm@gmail.com ',855748596,'Pune','2022-02-13 00:00:00','B.E',87.25,5245,5478,
	'Mumbai','Good','Good','Good','1999-12-13',1,'Vijaynarayan','Manager',7584962547,300000,'Pune','Pune','photo_path',
	'2020-12-13','Good',1,1,1,'Correct','Good',NULL,1);
         
INSERT INTO fellowship_candidates
VALUES 
	(4,'Mukul','Kiran','Jain','mukul.3584@gmail.com ',8787848784,'London','2019-12-13 00:00:00','B.E',75.25,5245,5478,
	'London','Good','Good','Good','1999-12-13',1,'Kiran','Engineer',7584962547,300000,'Pune','Pune','photo_path',
	'2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),
	(5,'Dibyesh','Kiran','Mishra','dibyesh.684@gmail.com ',9898989898,'Tokyo','2019-12-13 00:00:00','B.E',75.25,5245,5478,
	'London','Good','Good','Good','1999-12-13',1,'Kiran','Engineer',7584962547,300000,'Pune','Pune','photo_path',
	'2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
         
select * from fellowship_candidates; 
describe fellowship_candidates;

INSERT INTO candidates_personal_det_check
VALUES 
(1, 1, 10, 1, '2019-12-13', 10, '2018-12-13', 002),
(2, 2, 10, 1, '2019-12-13', 10, '2018-12-12', 003),
(3, 3, 10, 1, '2019-12-13', 10, '2017-12-13', 004),
(4, 4, 10, 1, '2019-12-13', 10, '2017-12-23', 005),
(5, 5, 10, 1, '2019-12-13', 10, '2015-12-03', 006);
        
INSERT INTO candidate_bank_det
VALUES 
	(1,1,'deepak', 22447955, 1 ,'RRWEFG45F1DG', 1, 'SQDERT444', 1, 78488967, 1, '2022-01-09', 10),
	(2,2,'Arun', 9945544, 1 ,'RRSQAG45F1DG', 1, 'SQDEECD', 1, 7848967, 1, '2022-01-09', 10),
	(3,3,'Shivam', 82495544, 1 ,'RR1DFG45F1DG', 1, 'SQDE5SD2CD', 1, 56847967, 1, '2022-01-09', 10),
	(4,4,'Mukul', 27447744, 1 ,'RRSAFGS4F1DG', 1, 'SQDEESD2CD', 1, 78458967, 1, '2022-01-09', 10),
	(5,5,'Dibyesh', 69445544, 1 ,'RRSX1G45F1DG', 1, 'SQDEEDD2CD', 1, 71758967, 1, '2022-01-09', 10);

select * from candidate_bank_det;

INSERT INTO candidates_education_det_check
VALUES 
	(1,1,1012,1,'2022-01-09',10,'2022-01-09',10),
	(2,2,1013,1,'2022-02-09',10,'2022-01-09',10),
	(3,3,1014,1,'2022-03-09',10,'2022-01-09',10),
	(4,4,1015,1,'2022-04-09',10,'2022-01-09',10),
	(5,5,1016,1,'2022-05-09',10,'2022-01-09',10);
 
select * from candidates_education_det_check;

INSERT INTO candidate_docs
VALUES
	(1,1,'adhaar','sswdf.jpg',1,'2022-01-09',10),
	(2,2,'adhaar','df52df.jpg',1,'2022-02-09',10),
	(3,3,'adhaar','wesdc5.jpg',1,'2022-03-09',10),
	(4,4,'adhaar','dsfd412.jpg',1,'2022-04-09',10),
	(5,5,'adhaar','sad4xc4.jpg',1,'2022-05-09',10);
       
select * from candidate_docs;

INSERT INTO user_details
VALUES 
(101,'qwe@.gmail.com','Sam','Boby','12345678',9988778844,1),
(102,'qaae@.gmail.com','Man','Boby','12345678',9985678844,0),
(103,'zxcc@.gmail.com','Can','Shaw','12345678',9989678844,null),
(104,'sacxzc@.gmail.com','Van','Kohli','12345678',9854778844,1),
(105,'gthghg@.gmail.com','Gang','Nan','12345678',9547878844,0);

INSERT INTO user_details  
VALUES  
	(3, 'shivam.mishra@gmail.com', 'Shivam', 'Mishra', 'shivam@123', 9232121321, 1),
	(4, 'mukul.jain@gmail.com', 'Mukul', 'Jain', 'mukul@123', 9854215621, 1),
	(5, 'dibyesh.mishra@gmail.com', 'Dibyesh', 'Mishra', 'dibyesh@123', 9215684562, 1);
	    

select * from user_details;

INSERT INTO user_roles
VALUES 
	(1212,'Sales'),
	(1213,'Developer'),
	(1214,'Developer'),
	(1215,'Marketing'),
	(1216,'HR');
       
select * from user_roles;

INSERT INTO company
VALUES 
	(991,'BRIDGELABZ','Pune','Maharashtra',1,'2015-10-12',20225),
	(992,'BIFIN','Mumbai','Maharashtra',1,'2014-10-12',20229),
	(995,'EASYREWARDZ','Jaipur','Rajasthan',1,'2016-10-12',20224),
	(951,'KPIT','Pune','Maharashtra',1,'2018-10-12',20226),
	(911,'TCS','Noida','UP',1,'2019-10-12',20221);
       
select * from company;

INSERT INTO tech_stack 
VALUES 
	(0001,'java','angular','P',null,'2022-01-01',2202),
	(0002,'java','angular','P',null,'2022-01-01',2203),
	(0003,'java','angular','P',null,'2022-01-01',2204),
	(0004,'python','pandas','P',null,'2022-01-01',2205),
	(0005,'c','.net','P',null,'2022-01-01',2206);

select * from tech_stack;

INSERT INTO tech_type
VALUES 
	(0001,'CFP','P','2022-01-01',2202),
	(0002,'CFP','P','2022-01-01',2203),
	(0003,'CFP','P','2022-01-01',2204),
	(0004,'CFP','P','2022-01-01',2205),
	(0005,'CFP','P','2022-01-01',2206);

select * from tech_type;

INSERT INTO maker_program
VALUES 
	(878,551,'Paid','Student',0001,0001,1,'approved by team',1,'2022-02-05',22584),
	(879,555,'Paid','Student',0002,0001,1,'approved by team',1,'2022-02-05',22584),
	(880,556,'Paid','Student',0003,0003,1,'approved by team',1,'2022-02-05',22584),
	(890,557,'Paid','Teacher',0004,0004,1,'approved by team',1,'2022-02-05',22584),
	(891,559,'Paid','Student',0005,0005,1,'approved by team',1,'2022-02-05',22584);

select * from maker_program;

INSERT INTO lab
VALUES 
	(222,'lab1','India','Pune',1,'2022-02-05',2278),
	(230,'lab2','India','Mumbai',1,'2022-01-05',2278),
	(231,'lab3','India','Noida',1,'2022-03-05',2278),
	(254,'lab4','India','Chennai',1,'2022-05-25',2278),
	(289,'lab5','India','Nagpur',1,'2022-01-15',2278);

select * from lab;

INSERT INTO lab_threshold
VALUES 
	(445,222,'2500',11,22,90,1,'2022-03-12',2255),
	(446,254,'2100',11,22,90,1,'2022-02-12',2255),
	(447,230,'3000',11,22,90,0,'2022-01-12',2255),
	(448,231,'7000',11,22,90,0,'2022-04-12',2255),
	(450,289,'1000',11,22,90,1,'2022-05-12',2255);
       
select * from lab_threshold;
    
INSERT INTO app_parameters
VALUES 
	(020,'private','qq784w','sample','R',2635,'2022-02-22','2021-01-22',122,10),
	(030,'public','awxx4w','sample','R',2635,'2022-02-22','2021-01-22',122,20),
	(040,'public','a45sd84w','sample','R',2635,'2022-02-22','2021-01-22',122,30),
	(050,'protected','dsv784w','sample','R',2635,'2022-02-22','2021-01-22',122,40),
	(060,'private','qq7vv5','sample','R',2635,'2022-02-22','2021-01-22',122,50);
       
select * from app_parameters;

insert mentor 
values  
	(230, 'Shankar Arabhavi', 'Mentor', 230, 1, null, 1),
	(231, 'Avatar', 'Buddy Mentor', 231, 1, null, 1),
	(254, 'Vinayak', 'Mentor', 254, 1, null, 1),
	(289, 'Sunil Patil', 'Lead Mentor', 289, 1, null, 1),
	(222, 'Gunjan Sharma', 'Lead Mentor', 222, 1, null, 1);
        
select * from mentor;

INSERT INTO mentor_ideation_map 
VALUES  
	(1, 230, 1, null, 1),
	(2, 230, 1, null, 1),
	(3, 231, 1, null, 1),
	(4, 254, 1, null, 1),
	(5, 222, 1, null, 1);
 
select * from mentor_ideation_map;

INSERT INTO mentor_techstack 
VALUES
	(011, 230, 0001, 1, null, 1),
	(012, 231, 0004, 1, null, 1),
	(013, 254, 0001, 1,null, 1),
	(014, 222, 0003, 1, null, 1),
	(015, 289, 0005, 1, null, 1);
    
select * from mentor_techstack;

INSERT INTO company_requirement
VALUES  
	(0121, 991, 1,'jan', 'Gurgaon', 1, 'path of doc', 20, 2, 3, 3, 1, 1, 1, 'good', 1, null, 1),
	(0122, 992, 2,'march', 'Bangalore', 1, 'path of doc', 15, 3, 2, 3, 1, 1, 1, 'good', 1, null, 1),
	(01233, 991, 3,'march', 'Mumbai', 1, 'path of doc', 10, 1, 1, 2, 1, 1, 1, 'good', 1,null, 1),
	(01224, 995, 4,'march', 'Mumbai' ,1, 'path of doc', 25, 1, 1, 2, 1, 1, 1, 'good', 1, null, 1),
	(01225, 995, 5,'april', 'Pune' ,1, 'path of doc', 30, 5, 4, 1, 1, 1, 1, 'good', 1, null, 1);
        
select * from company_requirement;

INSERT INTO candidate_techstack_assignment 
VALUES  
	(51, 0121, 1, '2022-02-12 00:00:00', 'true',null,1),
	(52, 0122, 2, '2022-02-21 00:00:00', 'true',null,2),
	(53, 0122, 3, '2022-02-15 00:00:00', 'true',null,3),
	(54, 01224, 4, '2022-02-18 00:00:00', 'true',null,4),
	(55, 01225, 5, '2022-02-08 00:00:00', 'true',null,5);

select * from candidate_techstack_assignment;
      
