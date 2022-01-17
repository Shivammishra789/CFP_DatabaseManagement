/* 
create a table log_subpart with attributes like
user name, technology, disc write count
partition  by range and subpartition by hash on disc_write_count
*/

CREATE TABLE log_subpart(user_name varchar(300), technology varchar(24), disc_write_count int)
PARTITION BY RANGE (disc_write_count)
SUBPARTITION BY HASH (disc_write_count)
SUBPARTITIONS 3
( 
PARTITION p0_disc_below50k VALUES LESS THAN (50000), 
PARTITION p1_disc_below150k VALUES LESS THAN (150000),
PARTITION p2_disc_below300k VALUES LESS THAN (300000),
PARTITION p3_disc_above300k VALUES LESS THAN MAXVALUE
);
select * from log_subpart;
INSERT INTO log_subpart SELECT user_name, technology, disk_write_count FROM temporary_MIS ORDER BY disk_write_count;

SELECT TABLE_NAME, PARTITION_NAME, SUBPARTITION_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = 'log_subpart';
+-------------+-------------------+----------------------+------------+
| TABLE_NAME  | PARTITION_NAME    | SUBPARTITION_NAME    | TABLE_ROWS |
+-------------+-------------------+----------------------+------------+
| log_subpart | p0_disc_below50k  | p0_disc_below50ksp0  |        291 |
| log_subpart | p0_disc_below50k  | p0_disc_below50ksp1  |        268 |
| log_subpart | p0_disc_below50k  | p0_disc_below50ksp2  |        286 |
| log_subpart | p1_disc_below150k | p1_disc_below150ksp0 |        221 |
| log_subpart | p1_disc_below150k | p1_disc_below150ksp1 |        241 |
| log_subpart | p1_disc_below150k | p1_disc_below150ksp2 |        203 |
| log_subpart | p2_disc_below300k | p2_disc_below300ksp0 |         56 |
| log_subpart | p2_disc_below300k | p2_disc_below300ksp1 |         76 |
| log_subpart | p2_disc_below300k | p2_disc_below300ksp2 |         71 |
| log_subpart | p3_remain         | p3_remainsp0         |         54 |
| log_subpart | p3_remain         | p3_remainsp1         |         45 |
| log_subpart | p3_remain         | p3_remainsp2         |         55 |
+-------------+-------------------+----------------------+------------+

EXPLAIN SELECT * FROM log_subpart WHERE disc_write_count = 432803;
+----+-------------+-------------+------------------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table       | partitions             | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-------------+------------------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | log_subpart | p3_remain_p3_remainsp0 | ALL  | NULL          | NULL | NULL    | NULL |   54 |    10.00 | Using where |
+----+-------------+-------------+------------------------+------+---------------+------+---------+------+------+----------+-------------+

EXPLAIN SELECT * FROM log_subpart WHERE disc_write_count = 271850;
+----+-------------+-------------+----------------------------------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table       | partitions                             | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+-------------+----------------------------------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | log_subpart | p2_disc_below300k_p2_disc_below300ksp0 | ALL  | NULL          | NULL | NULL    | NULL |   56 |    10.00 | Using where |
+----+-------------+-------------+----------------------------------------+------+---------------+------+---------+------+------+----------+-------------+