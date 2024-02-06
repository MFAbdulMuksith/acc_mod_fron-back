sudo mysql -u -p
PASSWORD

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| accounts_module_db |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.22 sec)

mysql> USE accounts_module_db;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> SHOW TABLES;
+------------------------------+
| Tables_in_accounts_module_db |
+------------------------------+
| credit_income                |
| credits                      |
| customers                    |
| expense                      |
| income                       |
| lender_repayment             |
| lenders                      |
| lending                      |
| users                        |
+------------------------------+
9 rows in set (0.22 sec)

mysql> DESCRIBE users;
+------------+-----------------+------+-----+---------+--------------------------+
| Field      | Type            | Null | Key | Default | Extra                    |
+------------+-----------------+------+-----+---------+--------------------------+
| my_row_id  | bigint unsigned | NO   | PRI | NULL    | auto_increment INVISIBLE |
| id         | int             | NO   |     | NULL    |                          |
| username   | varchar(100)    | NO   |     | NULL    |                          |
| email      | varchar(150)    | NO   |     | NULL    |                          |
| password   | varchar(150)    | NO   |     | NULL    |                          |
| repassword | varchar(255)    | YES  |     | NULL    |                          |
+------------+-----------------+------+-----+---------+--------------------------+
6 rows in set (0.22 sec)

mysql> SELECT * FROM users;
+----+----------+----------------+----------+------------+
| id | username | email          | password | repassword |
+----+----------+----------------+----------+------------+
|  9 | test     | test@gmail.com | test     | test       |
|  9 | test     | test@gmail.com | test     | test       |
+----+----------+----------------+----------+------------+
2 rows in set (0.22 sec)

mysql> exit