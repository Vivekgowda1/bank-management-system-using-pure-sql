-- creating bank_management_system database 
CREATE DATABASE IF NOT EXISTS bank_management_system;
-- using bank_management_system
use bank_management_system;


-- creating bank table 
CREATE TABLE BANK(
bank_ID numeric primary key,
bank_name varchar(20) not null,
bank_address varchar(20)
); 
-- inserting valus into table bank
INSERT INTO BANK VALUES(001,'SBI','Godha colony');
INSERT INTO BANK VALUES(002,'PNB','Rajwada');
INSERT INTO BANK VALUES(003,'MET','Geeta colony');
INSERT INTO BANK VALUES(004,'SWISS','Baker street');
INSERT INTO BANK VALUES(005,'NXI','Putin Hall');
SELECT * FROM BANK ;
 
 
 -- creating baranch table 
 CREATE TABLE BRANCH(
bank_ID numeric,
branch_ID numeric primary key,
branch_name varchar(20) not null,
branch_address varchar(20), FOREIGN KEY(bank_ID) REFERENCES BANK);
-- inserting valus into branch table 
INSERT INTO BRANCH VALUES(001,101,'Delhi','Gandhi Nagar');
INSERT INTO BRANCH VALUES(002,102,'Punjab','Chandigarh');
INSERT INTO BRANCH VALUES(003,103,'M.P','Vijay Nagar');
INSERT INTO BRANCH VALUES(004,104,'Bangalore','Thullianadammm');
INSERT INTO BRANCH VALUES(005,105,'Assam','Kaziranga');
SELECT * FROM BRANCH ;


-- creating account table
CREATE TABLE ACCOUNT(
account_ID numeric primary key,
branch_ID numeric,
name varchar(20) not null,
account_type varchar(20) not null,
FOREIGN KEY(branch_ID) REFERENCES BRANCH); 
-- inserting valuesinto account table 
INSERT INTO ACCOUNT VALUES(201,101,'Rajeev','Salary account');
INSERT INTO ACCOUNT VALUES(202,102,'Ravnish','Saving account');
INSERT INTO ACCOUNT VALUES(203,103,'Naseeb','Fixed deposit account');
INSERT INTO ACCOUNT VALUES(204,104,'Ashish','Recurring deposit account');
INSERT INTO ACCOUNT VALUES(205,105,'Tanmay','NRI account');
SELECT * FROM ACCOUNT ;


-- creating loan table
CREATE TABLE LOAN(
account_ID numeric,
loan_ID numeric primary key,
name varchar(20) not null,
loan_type varchar(20) not null,
loan_amount numeric,
FOREIGN KEY(account_ID) REFERENCES ACCOUNT); 
-- inserting values into loan table
INSERT INTO LOAN VALUES(201,301,'Rajeev','Personal loan',10000);
INSERT INTO LOAN VALUES(202,302,'Ravnish','Home loan',20000);
INSERT INTO LOAN VALUES(203,303,'Naseeb','Car loan',15000);
INSERT INTO LOAN VALUES(204,304,'Ashish','Education loan',25000);
INSERT INTO LOAN VALUES(205,305,'Tanmay','Business loan',30000);
SELECT * FROM LOAN ;


-- creating clint table 
CREATE TABLE CLIENT(
account_ID numeric,
client_ID numeric primary key,
name varchar(20) not null,
client_address varchar(500) not null,
FOREIGN KEY(account_ID) REFERENCES ACCOUNT); 
-- inserting values into clints table
INSERT INTO CLIENT VALUES(201,401,'Rajeev','21,Gandhi Nagar');
INSERT INTO CLIENT VALUES(202,402,'Ravnish','16,Vijay Nagar');
INSERT INTO CLIENT VALUES(203,403,'Sumit','13,Geeta colony');
INSERT INTO CLIENT VALUES(204,404,'Naseeb','11, Savedh Nagar');
INSERT INTO CLIENT VALUES(205,405,'Tanmay','07,godha colony');
SELECT * FROM CLIENT ;