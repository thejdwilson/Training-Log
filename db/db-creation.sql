-- drop schema if exists TrainingApp; 
-- create schema TrainingApp;
use TrainingApp;

-------------------------------------------
-- Table TrainingApp.Techniques
-------------------------------------------
create table if not exists TrainingApp.Techniques
(
  id int not null auto_increment
, name varchar(200) not null
, primary key (id)
)
engine = InnoDB
auto_increment = 1;

-------------------------------------------
-- Table TrainingApp.Locations
-------------------------------------------
create table if not exists TrainingApp.Locations
(
  id int not null auto_increment
, name varchar(200) not null
, primary key (id)
)
engine = InnoDB
auto_increment = 1;


-------------------------------------------
-- Table TrainingApp.Sessions
-------------------------------------------
create table if not exists TrainingApp.Sessions
(
  id int not null auto_increment
, date date not null
, length time 
, gi boolean not null
, location int not null
, primary key (id)
, index fk_location (location)
, foreign key (location) references TrainingApp.Locations(id)
)
engine = InnoDB
auto_increment = 1;



-------------------------------------------
-- Table TrainingApp.SessionTechniques
-------------------------------------------
create table if not exists TrainingApp.SessionTechniques
(
  id int not null auto_increment
, session int not null
, technique int not null
, details varchar(1000)
, primary key (id)
, key fk_session (session)
, constraint fk_session foreign key (session) references TrainingApp.Sessions(id)
, index fk_technique (technique)
, foreign key (technique) references TrainingApp.Techniques(id)
)
engine = InnoDB
auto_increment = 1;

-------------------------------------------
-- Table TrainingApp.SessionNotes
-------------------------------------------
create table if not exists TrainingApp.SessionNotes
(
  id int not null auto_increment
, session int not null
, details varchar(8000)
, primary key (id)
, index fk_session (session)
, foreign key (session) references TrainingApp.Sessions(id)
)
engine = InnoDB
auto_increment = 1;