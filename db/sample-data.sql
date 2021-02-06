-- insert into TrainingApp.Techniques (name)
-- values ('Kimura')
-- , ('Cross Collar Choke')
-- , ('Guard Pass')
-- , ('Triangle Choke')
-- , ('Head and Arm Choke');

select * from TrainingApp.Techniques;

-- insert into TrainingApp.Locations (name)
-- values ('Nishime - Dent, OH')

select * from TrainingApp.Locations; 

--  insert into TrainingApp.Sessions (date, length, gi, location)
--  values ('2020-01-28', '1:45:0', 1, 1);

-- update TrainingApp.Sessions set id = 1 where id = 4;

select * from TrainingApp.Sessions;

-- insert into TrainingApp.SessionTechniques (session, technique, details)
-- values (1, 3, 'Pressure passing drills');

select * from TrainingApp.SessionTechniques;

-- insert into TrainingApp.SessionNotes (session, details)
-- values (1, 'Remember to stand straight up in their guard as if you were a doll being pulled up by a string attached to your head. Be mindful of your feet so they don''t go for the tripod sweep'); 

select s.date
     , s.length
     , case when gi = 1 then 'Gi' else 'Nogi' end as Gi
     , l.name 
  from TrainingApp.Sessions s
  join TrainingApp.Locations l
    on s.location = l.id;
    

select s.date
     , t.name
     , st.details
  from TrainingApp.Sessions s 
  join TrainingApp.SessionTechniques st
    on s.id = st.session
  join TrainingApp.Techniques t
    on st.technique = t.id;
    
select s.date
     , sn.details
  from TrainingApp.Sessions s 
  join TrainingApp.SessionNotes sn
    on s.id = sn.session;
    