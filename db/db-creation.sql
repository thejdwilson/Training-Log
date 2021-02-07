-- drop schema if exists TrainingApp; 
-- create schema TrainingApp;
use TrainingApp;

-------------------------------------------
-- Table TrainingApp.Techniques
-------------------------------------------
create table if not exists TrainingApp.Techniques
(
  techniqueId int not null auto_increment
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
  locationId int not null auto_increment
, name varchar(200) not null
, primary key (locationId)
)
engine = InnoDB
auto_increment = 1;


-------------------------------------------
-- Table TrainingApp.Sessions
-------------------------------------------
create table if not exists TrainingApp.Sessions
(
  sessionId int not null auto_increment
, date date not null
, length time 
, gi boolean not null
, location int not null
, primary key (sessionId)
, index fk_location (location)
, foreign key (location) references TrainingApp.Locations(locationId)
)
engine = InnoDB
auto_increment = 1;



-------------------------------------------
-- Table TrainingApp.SessionTechniques
-------------------------------------------
create table if not exists TrainingApp.SessionTechniques
(
  sessionTechniqueId int not null auto_increment
, session int not null
, technique int not null
, details varchar(1000)
, primary key (sessionTechniqueId)
, key fk_session (session)
, constraint fk_session foreign key (session) references TrainingApp.Sessions(sessionId)
, index fk_technique (technique)
, foreign key (technique) references TrainingApp.Techniques(techniqueId)
)
engine = InnoDB
auto_increment = 1;

-------------------------------------------
-- Table TrainingApp.SessionNotes
-------------------------------------------
create table if not exists TrainingApp.SessionNotes
(
  sessionNoteId int not null auto_increment
, session int not null
, details varchar(8000)
, primary key (sessionNoteId)
, index fk_session (session)
, foreign key (session) references TrainingApp.Sessions(sessionId)
)
engine = InnoDB
auto_increment = 1;
