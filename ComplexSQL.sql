// 2nd project


1. Table created

 Create Table todos (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details TEXT,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP  NULL );





1. 20 insert into todos (title, details, priority, created_at, completed_at)

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('clean room','clean under bed mom ' ||
 'found your stuff' , 7, '2017-08-28 10:23:54', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('wash car', 'your chick puked in your
car' ||, 3, '2017-08-28 10:23:54’,’2017-08-28 12:00:54');

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('wash dishes','your dishes are growing
 mold' ,2,'2017-08-29 10:23:54',null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ( 'clean your dogs butt','the dog is
sliding his dingleberries on the carpet', 9, '2017-08-26 10:23:52', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('help mom','dont argue with her' , 4,
'2017-08-31 10:23:54', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('do java hw','you need to graduate' ,
                                                                               5, '2017-08-31 10:23:54' , null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('do spring hw', 'you need to graduate'
 , 3, '2017-08-31 10:23:54');

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('dont worry about distractions','you ' ||
                                                                                                               'need ' ||
                                                                                                               'to ' ||
                                                                                                               'graduate' , 5, '2017-08-31 10:23:54', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('complete robots','graduation is ' ||
                                                                                                 'important' , 3,
                                                                               '2017-08-31 10:23:54', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('fold the clothes','they are getting ' ||
                                                                                                  'wrinkled' , 3,
                                                                               '2017-08-31 10:23:54', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('Be nice to your sister','even though ' ||
                                                                                                        'she is a' ,
                                                                               3, '2017-08-31 10:23:54', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('Bring back the blockbuster card','but' ||
                                                                                                                 ' ' ||
                                                                                                                 'not' ||
                                                                                                                 ' ' ||
                                                                                                                 'the' ||
                                                                                                                 ' ' ||
                                                                                                                 'late fees' , 3, '2017-08-31 10:23:54', null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('Chick fil a cooks with jesues juice',
                                                                               'Spread the good word of the lord ' ||
                                                                               'accross the land' , 3, '2017-08-31 ' ||
                                                                                                       '10:23:54',
                                                                               null);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('Go to chrurch','ask for forgiveness' , 5, '2017-08-31 10:23:54','2017-09-01 10:25:30');

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES ('do not get behind','work it work it' , 3, '2017-08-31 10:23:54');

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES (‘No diggity’,’back it up’ , 3, ‘2017-08-31 10:23:54’);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES (‘Find out who let the dogs out ’,’The baja men did’ , 3, ‘2017-08-31 10:23:54’);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES (‘Find the penaut ’,’Mr. Planters wont take no for an answer’ , 3, ‘2017-08-31 10:23:54’);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES (‘9/11 was not a inside job’,’make tin foil hats’ , 3, ‘2017-08-31 10:23:54’);

Insert INTO todos (title, details, priority, created_at, completed_at) VALUES (‘You are not special nothing matters’,’so why worry’ , 5, ‘2017-08-31 10:23:54’);


2. Write a SELECT statement to find all incomplete todos with priority 3.
select * from todos where completed_at is null and priority = 3;


3.Write a SELECT statement to find the number of incomplete todos by priority.

select * from todos where completed_at is null order by priority asc;

4. Write a SELECT statement to find the number of todos by priority created in the last 30 days.

select * from todos where created_at > current_timestamp - interval '30 days' order by priority asc;

5. Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.


select * from todos where priority = 1 and created_at = (select min(created_at) from todos where priority =1);


