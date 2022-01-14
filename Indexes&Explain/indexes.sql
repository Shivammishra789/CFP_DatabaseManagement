mysql> EXPLAIN SELECT user_name FROM temporary_mis WHERE technology= 'java';
+----+-------------+---------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table         | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+---------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | temporary_mis | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 1698 |    10.00 | Using where |
+----+-------------+---------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0.00 sec)

mysql> CREATE INDEX tech_index ON temporary_mis(technology);
Query OK, 0 rows affected (2.24 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> EXPLAIN SELECT user_name FROM temporary_mis WHERE technology= 'java';
+----+-------------+---------------+------------+------+---------------+------------+---------+-------+------+----------+-------+
| id | select_type | table         | partitions | type | possible_keys | key        | key_len | ref   | rows | filtered | Extra |
+----+-------------+---------------+------------+------+---------------+------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | temporary_mis | NULL       | ref  | tech_index    | tech_index | 402     | const |  485 |   100.00 | NULL  |
+----+-------------+---------------+------------+------+---------------+------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

mysql> DROP INDEX tech_index on temporary_mis;
Query OK, 0 rows affected (0.69 sec)
Records: 0  Duplicates: 0  Warnings: 0

