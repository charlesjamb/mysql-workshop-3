mysql> show tables;
+---------------------------------+
| Tables_in_decodemtl_addressbook |
+---------------------------------+
| Account                         |
| Address                         |
| AddressBook                     |
| ElectronicMail                  |
| Entry                           |
| Phone                           |
+---------------------------------+
6 rows in set (0,00 sec)

mysql> describe Account;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| email      | varchar(255) | YES  |     | NULL    |                |
| password   | varchar(40)  | YES  |     | NULL    |                |
| createdOn  | datetime     | YES  |     | NULL    |                |
| modifiedOn | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
5 rows in set (0,00 sec)

mysql> describe Address;
+--------------+-----------------------------+------+-----+---------+----------------+
| Field        | Type                        | Null | Key | Default | Extra          |
+--------------+-----------------------------+------+-----+---------+----------------+
| id           | int(11)                     | NO   | PRI | NULL    | auto_increment |
| entryId      | int(11)                     | YES  |     | NULL    |                |
| type         | enum('home','work','other') | YES  |     | NULL    |                |
| addressLine1 | varchar(255)                | YES  |     | NULL    |                |
| addressLine2 | varchar(255)                | YES  |     | NULL    |                |
| city         | varchar(255)                | YES  |     | NULL    |                |
| province     | varchar(128)                | YES  |     | NULL    |                |
| country      | varchar(128)                | YES  |     | NULL    |                |
| postalCode   | varchar(10)                 | YES  |     | NULL    |                |
+--------------+-----------------------------+------+-----+---------+----------------+
9 rows in set (0,00 sec)

mysql> describe AddressBook;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| accountId  | int(11)      | YES  |     | NULL    |                |
| name       | varchar(255) | YES  |     | NULL    |                |
| createdOn  | datetime     | YES  |     | NULL    |                |
| modifiedOn | datetime     | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
5 rows in set (0,00 sec)

mysql> describe ElectronicMail;
+---------+-----------------------------+------+-----+---------+----------------+
| Field   | Type                        | Null | Key | Default | Extra          |
+---------+-----------------------------+------+-----+---------+----------------+
| id      | int(11)                     | NO   | PRI | NULL    | auto_increment |
| entryId | int(11)                     | YES  |     | NULL    |                |
| type    | enum('home','work','other') | YES  |     | NULL    |                |
| content | varchar(255)                | YES  |     | NULL    |                |
+---------+-----------------------------+------+-----+---------+----------------+
4 rows in set (0,00 sec)

mysql> describe Entry;
+---------------+-------------------------------------------+------+-----+---------+----------------+
| Field         | Type                                      | Null | Key | Default | Extra          |
+---------------+-------------------------------------------+------+-----+---------+----------------+
| id            | int(11)                                   | NO   | PRI | NULL    | auto_increment |
| addressbookId | int(11)                                   | YES  |     | NULL    |                |
| firstName     | varchar(255)                              | YES  |     | NULL    |                |
| lastName      | varchar(255)                              | YES  |     | NULL    |                |
| birthday      | datetime                                  | YES  |     | NULL    |                |
| type          | enum('phone','address','electronic-mail') | YES  |     | NULL    |                |
+---------------+-------------------------------------------+------+-----+---------+----------------+
6 rows in set (0,00 sec)

mysql> describe Phone;
+---------+-----------------------------------+------+-----+---------+----------------+
| Field   | Type                              | Null | Key | Default | Extra          |
+---------+-----------------------------------+------+-----+---------+----------------+
| id      | int(11)                           | NO   | PRI | NULL    | auto_increment |
| entryId | int(11)                           | YES  |     | NULL    |                |
| type    | enum('home','work','other')       | YES  |     | NULL    |                |
| content | varchar(255)                      | YES  |     | NULL    |                |
| subtype | enum('landline','cellular','fax') | YES  |     | NULL    |                |
+---------+-----------------------------------+------+-----+---------+----------------+
5 rows in set (0,00 sec)
