use candidate_management;

/* Inserting data into tables*/

INSERT INTO hired_candidates (id, first_name, middle_name, last_name, email, mobile_num, hired_city, hired_date, degree, permanent_pincode, 
							  hired_lab, attitude_remark, communication_remark, knowledge_remark, aggregate_remark, status,creator_stamp, creator_user )
VALUES (101,"Mukul",Null, "Jain", "mk@gmail.com", 8847994455, "Gudgoan", "2022-05-05 14:20:56","Btech", 442255, 
		"EasyRewarz", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-01-01 12:20:56",1),
        (102,"Dibyesh",Null, "Mishra", "dm@gmail.com", 8007994455, "Gudgoan", "2022-01-08 12:20:56","MCA", 448255, 
		"EasyRewarz", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-01-08 12:20:56",3),
		(103,"Ashok",null, "Pathak", "ap@gmail.com", 9977994455, "Mumbai", "2022-04-03 14:20:56","Btech", 442255, 
		"Bifin", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-03 14:20:56",4),
        (104,"Manali",null, "Wani", "mw@gmail.com", 8577994455, "Jaipur", "2022-04-07 14:20:56","Btech", 222255, 
		"Happiest Minds", "Great Vision", "Excellent", "Excellent", "Excellent", "active","2022-04-07 14:20:56",5);
        
 select * from hired_candidates;
  
INSERT INTO fellowship_candidates
 VALUES (1,'deepak','Kiran','Patil','deepak.63584@gmail.com ',8956748596,'Pune','2019-12-13 00:00:00','B.E',75.25,5245,5478,
		 'Mumbai','Good','Good','Good','1999-12-13',1,'Kiran','Farmer',7584962547,300000,'Pune','Pune','photo_path',
         '2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),
          (2,'Arun','Deepak','Roy','Arundr@gmail.com',8889996660,'Mumbai','2018-11-05 00:00:00','B.E',79.35,5289,5436,
          'Pune','Good','Good','Good','1998-07-18',1,'Ketan','Farmer',77774441112,250000,'Mumbai','Mumbai','Codeme',
          '2018-11-05','Good',1,1,1,'Correct','Good',NULL,1),
          (3,'Shivam','Vijaynarayan','Mishra','sm@gmail.com ',855748596,'Pune','2022-02-13 00:00:00','B.E',87.25,5245,5478,
		 'Mumbai','Good','Good','Good','1999-12-13',1,'Vijaynarayan','Manager',7584962547,300000,'Pune','Pune','photo_path',
         '2020-12-13','Good',1,1,1,'Correct','Good',NULL,1);
         
INSERT INTO fellowship_candidates
VALUES (4,'Mukul','Kiran','Jain','mukul.3584@gmail.com ',8787848784,'London','2019-12-13 00:00:00','B.E',75.25,5245,5478,
		 'London','Good','Good','Good','1999-12-13',1,'Kiran','Engineer',7584962547,300000,'Pune','Pune','photo_path',
         '2019-12-13','Good',1,1,1,'Correct','Good',NULL,1),
         (5,'Dibyesh','Kiran','Mishra','dibyesh.684@gmail.com ',9898989898,'Tokyo','2019-12-13 00:00:00','B.E',75.25,5245,5478,
		 'London','Good','Good','Good','1999-12-13',1,'Kiran','Engineer',7584962547,300000,'Pune','Pune','photo_path',
         '2019-12-13','Good',1,1,1,'Correct','Good',NULL,1);
         
select * from fellowship_candidates; 

INSERT INTO candidates_personal_det_check
VALUES (1, 1, 10, 1, '2019-12-13', 10, '2018-12-13', 002),
		(2, 2, 10, 1, '2019-12-13', 10, '2018-12-12', 003),
        (3, 3, 10, 1, '2019-12-13', 10, '2017-12-13', 004),
        (4, 4, 10, 1, '2019-12-13', 10, '2017-12-23', 005),
        (5, 5, 10, 1, '2019-12-13', 10, '2015-12-03', 006);
        
INSERT INTO candidate_bank_det
VALUES (1,1,'deepak', 22447955, 1 ,'RRWEFG45F1DG', 1, 'SQDERT444', 1, 78488967, 1, '2022-01-09', 10),
		(2,2,'Arun', 9945544, 1 ,'RRSQAG45F1DG', 1, 'SQDEECD', 1, 7848967, 1, '2022-01-09', 10),
        (3,3,'Shivam', 82495544, 1 ,'RR1DFG45F1DG', 1, 'SQDE5SD2CD', 1, 56847967, 1, '2022-01-09', 10),
        (4,4,'Mukul', 27447744, 1 ,'RRSAFGS4F1DG', 1, 'SQDEESD2CD', 1, 78458967, 1, '2022-01-09', 10),
        (5,5,'Dibyesh', 69445544, 1 ,'RRSX1G45F1DG', 1, 'SQDEEDD2CD', 1, 71758967, 1, '2022-01-09', 10);

select * from candidate_bank_det;

      
