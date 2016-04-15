DROP database IF EXISTS scheduler;

create database scheduler ;

DROP TABLE IF EXISTS usertypes;

CREATE  TABLE usertypes (

  usertypeid SERIAL,
  usertype character varying(45) NOT NULL ,
  usertypedescr character varying(45) NULL ,
  createddate DATE NOT NULL,
  active BOOLEAN NOT NULL,

  PRIMARY KEY (usertypeid) );

INSERT INTO usertypes
(usertype, createddate, active)
select 'System Admin', now(),TRUE ;
;


DROP TABLE IF EXISTS users;

CREATE  TABLE users (

  userid SERIAL  ,
  username character varying(45) NOT NULL ,
  password character varying(45) NOT NULL ,
  email character varying(100) NOT NULL ,
  createddate DATE NOT NULL,
  active BOOLEAN NOT NULL ,

  PRIMARY KEY (userid) );

INSERT INTO users
(username, password, email, createddate, active)
select 'admin', 'admin', 'admin@com', now(),TRUE union
select 'sampleuser', 'sampleuser', 'sampleuser@com', now(),TRUE;


DROP TABLE IF EXISTS taskcategories;

CREATE  TABLE taskcategories (

  taskcategoryid SERIAL  ,
  taskcategoryname character varying(45) NOT NULL ,
  taskcategorydescr character varying(45) NULL ,
  createddate DATE NOT NULL,
  active BOOLEAN NOT NULL ,

  PRIMARY KEY (taskcategoryid) );

INSERT INTO taskcategories
(taskcategoryname,createddate, active)
select 'TFGW',  now(),TRUE union
select 'AYTTFM',  now(),TRUE union
select 'LAC', now(),TRUE ;
;



DROP TABLE IF EXISTS tasks;

CREATE  TABLE tasks (

  taskid SERIAL  ,
  taskname character varying(45) NOT NULL ,
  taskdescr character varying(45) NULL ,
  taskcategoryid int null,
  createddate DATE NOT NULL,
  active BOOLEAN NOT NULL,

  PRIMARY KEY (taskid) );

INSERT INTO tasks
(taskname, taskcategoryid, createddate,  active)
select 'DFSG', 1, now(),TRUE union
select 'BR',  1, now(),TRUE 
;

DROP TABLE IF EXISTS persons;

DROP TABLE IF EXISTS genders;

CREATE  TABLE genders (

  genderid SERIAL  ,
  gender character varying(45) NOT NULL ,
  createddate DATE NOT NULL,
  PRIMARY KEY (genderid) 
  );  
  
  INSERT INTO genders
(gender, createddate)
select 'Male',  now()  union
select 'Female', now() 
;

CREATE  TABLE persons (

  personid SERIAL  ,
  firstname character varying(45) NOT NULL ,
  lastname character varying(45) NOT NULL,
  genderid int not null,
  createddate DATE NOT NULL,
  active BOOLEAN NOT NULL ,

  PRIMARY KEY (personid) );

ALTER TABLE persons 
ADD CONSTRAINT FK_gender
FOREIGN KEY (genderid) REFERENCES genders(genderid) 
;

INSERT INTO persons(firstname, lastname, genderid, createddate,  active)
select 'Caesar', 'Nimrod', 2, now(),TRUE union
select 'Junta', 'Overthrown',1, now(),TRUE;

DROP TABLE IF EXISTS buildings;

CREATE  TABLE buildings (

  buildingid SERIAL  ,
  buildingname character varying(45) NOT NULL ,
  createddate DATE NOT NULL,
  active BOOLEAN NOT NULL ,

  PRIMARY KEY (buildingid) );

INSERT INTO buildings
(buildingname, createddate,  active)
select 'Arena Hall', now(),TRUE union
select 'ComQuest', now(),TRUE union
select 'Quest', now(),TRUE union
select 'Jazz Alley', now(),TRUE  
;



DROP TABLE IF EXISTS rooms;

CREATE  TABLE rooms (

  roomid SERIAL  ,
  roomname character varying(45) NOT NULL ,
  createddate DATE NOT NULL,
  active BOOLEAN NOT NULL ,

  PRIMARY KEY (roomid) );

INSERT INTO rooms(roomname,createddate, active)
select 'Main Hall', now(),TRUE union
select 'Second Hall', now(),TRUE union
select 'Rainier', now(),TRUE union
select 'Mt Shazzam', now(),TRUE
;


DROP TABLE IF EXISTS sales;

CREATE  TABLE sales (

  year INT NOT NULL ,
  age INT NOT NULL ,
  sex int NOT NULL,
  people int NOT NULL 

 );

INSERT INTO sales(year,age, sex, people)
select 1850,0,1,1483789 union
select 1850,0,2,1450376 union
select 1850,5,1,1411067 union
select 1850,5,2,1359668 union
select 1850,10,1,1260099 ;