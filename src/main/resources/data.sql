create database flights;
use flights;
CREATE TABLE USER
(
ID INT NOT NULL AUTO_INCREMENT,PRIMARY KEY(ID),
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
EMAIL VARCHAR(20),
PASSWORD VARCHAR(255),
UNIQUE KEY(EMAIL)
)

select * from user;

CREATE TABLE FLIGHT 
(
ID INT NOT NULL AUTO_INCREMENT,PRIMARY KEY (ID),
FLIGHT_NUMBER VARCHAR(20) NOT NULL,
OPERATING_AIRLINES VARCHAR(20) NOT NULL,
DEPARTURE_CITY VARCHAR(20) NOT NULL,
ARRIVAL_CITY VARCHAR(20) NOT NULL,
DATE_OF_DEPARTURE DATE NOT NULL,
ESTIMATED_DEPARTURE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

select * from FLIGHT; 

CREATE TABLE PASSANGER
(
ID      INT NOT NULL AUTO_INCREMENT,
FIRST_NAME   VARCHAR(255),
LAST_NAME    VARCHAR(255),
MIDDLE_NAME  VARCHAR(255),
EMAIL VARCHAR(50),
PHONE VARCHAR(10),
PRIMARY KEY(ID)
)
select * from passanger;

create table RESERVATION 
(
ID INT NOT NULL auto_increment,
CHECKED_IN tinyint,
NUMBER_OF_BAGS int,
PASSANGER_ID int,
FLIGHT_ID int,
CREATED timestamp default current_timestamp,
primary key(ID),
foreign key(PASSANGER_ID) REFERENCES PASSANGER(ID)ON DELETE CASCADE,
FOREIGN KEY(FLIGHT_ID)references flight(ID)
)

select * from reservation;

insert into flight values(1,'AB2','Indian Airlines','DEL',
'CCU',STR_TO_DATE('02-06-2023', '%m-%d-%Y'),'2023-02-06 03:17:07');

insert into flight values(2,'AA1','Indian Airlines','BLR',
'IXC',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 05:10:12');

insert into flight values(3,'AA2','Indian Airlines','BLR',
'BOM',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 04:18:05');

insert into flight values(4,'AA3','Indian Airlines','BLR',
'CCU',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 04:18:27');

insert into flight values(5,'UA1','Indian Airlines','BLR',
'CCU',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 10:35:08');

insert into flight values(6,'FJZ','Indian Airlines','DEL',
'CCU',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 11:43:43');

insert into flight values(7,'AA4','Indian Airlines','DEL',
'BLR',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 01:11:11');

insert into flight values(8,'AA1','JET AIRWAYS','DEL',
'BOM',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 04:18:05');

insert into flight values(9,'AA1','JET AIRWAYS','BLR',
'GOX',STR_TO_DATE('02-06-2023','%m-%d-%Y'),'2023-02-06 02:18:22');

insert into flight values(10,'AB3','American Airlines','AUS',
'NYC',STR_TO_DATE('02-06-2023', '%m-%d-%Y'),'2023-02-06 03:17:07');

insert into flight values(11,'AB2','Indian Airlines','DEL',
'CCU',STR_TO_DATE('02-06-2023', '%m-%d-%Y'),'2023-02-06 04:17:07');

insert into flight values(12,'AB5','Indian Airlines','DEL',
'CCU',STR_TO_DATE('02-06-2023', '%m-%d-%Y'),'2023-02-06 05:10:07');

insert into flight values(13,'AB6','Indian Airlines','DEL',
'CCU',STR_TO_DATE('02-06-2023', '%m-%d-%Y'),'2023-02-06 03:00:07');

insert into flight values(14,'AB7','Indian Airlines','DEL',
'CCU',STR_TO_DATE('02-06-2023', '%m-%d-%Y'),'2023-02-06 05:00:07');