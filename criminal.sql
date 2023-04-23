create database management;
use management;
show tables;
desc prisoner;
desc crime;

CREATE TABLE `prisoner`(
 prisoner_id VARCHAR(45)  NOT NULL,
 Name VARCHAR(45) NOT NULL ,
 Address text NULL ,
 age int(16) NULL ,
 Jail_id int(20) NOT NULL,
  PRIMARY KEY (`prisoner_id`),
  FOREIGN KEY (Jail_id) references Jail(Jail_id));
  

CREATE TABLE login (
  `userid` VARCHAR(10) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`userid`));

CREATE TABLE Crime(
   prisoner_id VARCHAR(45),
   crime_id int(16) NOT NULL,
   Type VARCHAR(40) NOT NULL,
   Crime_details longtext NULL,
   Location text NULL,
   PRIMARY KEY (crime_id),
   FOREIGN KEY (prisoner_id) references prisoner(prisoner_id));

CREATE TABLE Jail(
   Jail_id int(20) NOT NULL,
   Jail_name VARCHAR(40) NOT NULL,
   Jail_Address text NULL,
   Prisoners_count int(20) NULL,
   PRIMARY KEY (Jail_id));
   
CREATE TABLE staff(
   Name VARCHAR(45) NOT NULL,
   Age int(10) NOT NULL,
   Gender varchar(30) NULL,
   Designation varchar(45) NOT NULL,
   staff_id int(16) NOT NULL,
   Jail_id int(16) NOT NULL,
   FOREIGN KEY (Jail_id) references Jail(Jail_id),
   PRIMARY KEY(Jail_id,staff_id));
   
CREATE TABLE Punsishments(
   Type varchar(45) NOT NULL,
   Details longtext NULL,
   Duration VARCHAR(45) NULL,
   IPC_Rule text NOT NULL,
   prisoner_id VARCHAR(45) NOT NULL,
   FOREIGN KEY (prisoner_id) references prisoner(prisoner_id));
   

insert into login values("root","Aniket@62");
SELECT * FROM login;
select * from prisoner;
insert into jail values(21,"California Jail","California",23);
insert into prisoner values(5,"John","LA",45,21);
insert into prisoner values(6,"Davies","LA",43,21);
