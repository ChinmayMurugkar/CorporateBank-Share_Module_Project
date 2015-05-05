Create table user_info
(user_name varchar(30),
honours varchar(4),
login_id VARCHAR(20),
password VARCHAR(20),
start_date date
,expiry_date date,
active char(1),
question varchar(30),
answer varchar (20),
password_change_date date,
primary key (login_id));



Create table Shareholder
(mem_id NUMBER (13),
 mem_name varchar(30),
 mem_mname varchar(30),
 mem_sname varchar(30),
 mem_addr varchar(130),
 mem_city varchar(15),
 mem_state varchar(15),
 mem_gender char(8),
 mem_bldgrp varchar(8),
 mem_dob date,
 mem_occup varchar(20),
 primary key (mem_id));



Create table Nominee
(mem_id NUMBER (13),
 nom_id NUMBER(1),
 nom_name varchar(30),
 nom_mname varchar(30),
 nom_sname varchar(30),
 nom_addr varchar(130),
 nom_city varchar(15),
 nom_state varchar(15),
 nom_gender char(1),
 nom_dob date,
 nom_rel varchar(10),
 primary key (mem_id,nom_id));



Create table shr_nom
(mem_id NUMBER (13),
 nom_id NUMBER(1),
 primary key (mem_id,nom_id));




Create table BANK_Session
(session_id NUMBER (13),
 name NUMBER(8),
 from_date date,
 to_date date,
 primary key (session_id));




Create table dividend
(mem_id NUMBER (13),
 session_id NUMBER (13),
 amount NUMBER(13),
 paid_unpaid char(1),
 payment_date date,
 primary key (mem_id));




Create table share_value
(val_id NUMBER(3),
 shr_val NUMBER(4),
 from_date date,
 to_date date,
 primary key (val_id));




Create table share_allot
(mem_id NUMBER(13),
 val_id NUMBER(3),
 no_shr NUMBER(3),
 ALLOT_date date,
 ALLOT_mode char(1),
 cert_no NUMBER(10),
 primary key (mem_id));