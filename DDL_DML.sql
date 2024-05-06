--create passenger table
create table Passenger (
    passenger_ID int primary key,
    first_name varchar2(100),
    last_name varchar2 (100),
    gender varchar2(20),
    age int,
    contact varchar2 (100) unique not null
);
--create train_info table
create table Train_info (
    train_name varchar2(100) primary key,
    arrival_time TIME,
    departure_time TIME,
    destination varchar2 (100)
);

--create ticket table
create table Ticket (
    ticket_ID int primary key,
    passenger_ID int,
    train_name varchar2 (100),
    date DATE,
    coach_name varchar2 (50),
    departure_time TIME,
    total_seat_booked INT,
    destination varchar2 (100),
    foreign key (passenger_ID) references Passenger(passenger_ID),
    foreign key (train_name) references Train_info(train_name)
);

--create transaction table
create table Transaction (
    transaction_ID int primary key,
    passenger_ID int,
    ticket_ID int,
    transaction_date DATE,
    total_amount deciamal(10, 2),
    foreign key (passenger_ID) references Passenger(passenger_ID),
    foreign key (ticket_ID) references Ticket(ticket_ID)
);

--insert data into passenger table
insert into Passenger values (1, 'Farhan', 'Miraz', 'M', 24, '+8801746549501');
insert into Passenger values (2, 'Swapnil', 'Kundu', 'M', 23, '+880174654395');
insert into Passenger values (3, 'Anto', 'Paul', 'M', 30, '+8801746512301');
insert into Passenger values (4, 'Sumaiya', 'Rahim', 'F', 25, '+8801773549501');
insert into Passenger values (5, 'Amit', 'Paul', 'M', 17, '+8801749375501');
insert into Passenger values (6, 'Prova', 'Paul', 'F', 18, '+8801746549001');
insert into Passenger values (7, 'Arefin', 'Nahid', 'M', 28'+8801746549001');
insert into Passenger values (8, 'Jany', 'Khan', 'F', 20, '+8801746512385');
insert into Passenger values (9, 'Tahsinur', 'Rahman', 'M', 21'+880171389001');
insert into Passenger values (10, 'Fatema', 'Khanom', 'F', 24, '+8801743956201');


--insert data into train_info table
INSERT INTO Train_info (train_name, arrival_time, departure_time, destination)
VALUES
('Sundarban Express', '08:00:00', '08:30:00', 'Khulna'),
('Chitra Express', '09:00:00', '09:30:00', 'Rajshahi'),
('Drutojan Express', '10:00:00', '10:30:00', 'Dinajpur'),
('Subarna Express', '11:00:00', '11:30:00', 'Chittagong'),
('Ekota Express', '12:00:00', '12:30:00', 'Panchagarh');

--insert data into ticket table
Insert into Passenger values (1, 'Farhan', 'Miraz', 'M', 24, '+8801746549501');
INSERT INTO Passenger VALUES (2, 'Swapnil', 'Kundu', 'M', 23, '+880174654395');
INSERT INTO Passenger VALUES (3, 'Anto', 'Paul', 'M', 30, '+8801746512301');
INSERT INTO Passenger VALUES (4, 'Sumaiya', 'Rahim', 'F', 25, '+8801773549501');
INSERT INTO Passenger VALUES (5, 'Amit', 'Paul', 'M', 17, '+8801749375501');
INSERT INTO Passenger VALUES (6, 'Prova', 'Paul', 'F', 18, '+8801746549001');
INSERT INTO Passenger VALUES (7, 'Arefin', 'Nahid', 'M', 28'+8801746549001');
INSERT INTO Passenger VALUES (8, 'Jany', 'Khan', 'F', 20, '+8801746512385');
INSERT INTO Passenger VALUES (9, 'Tahsinur', 'Rahman', 'M', 21'+880171389001');
INSERT INTO Passenger VALUES (10, 'Fatema', 'Khanom', 'F', 24, '+8801743956201');


--insert data into ticket table
INSERT INTO Train_info (train_name, arrival_time, departure_time, destination)
VALUES
('Sundarban Express', '08:00:00', '08:30:00', 'Khulna'),
('Chitra Express', '09:00:00', '09:30:00', 'Rajshahi'),
('Drutojan Express', '10:00:00', '10:30:00', 'Dinajpur'),
('Subarna Express', '11:00:00', '11:30:00', 'Chittagong'),
('Ekota Express', '12:00:00', '12:30:00', 'Panchagarh');


--insert data into ticket table
Insert into Ticket (ticket_ID, passenger_ID, train_name, date, coach_name, departure_time, total_seat_booked, destination)
values
(1, 1, 'Sundarban Express', '2024-04-25', 'First Class', '08:30:00', 2, 'Khulna'),
(2, 2, 'Chitra Express', '2024-04-25', 'First Class AC', '09:30:00', 3, 'Rajshahi'),
(3, 3, 'Drutojan Express', '2024-04-25', 'First Class Chair', '10:30:00', 1, 'Dinajpur'),
(4, 4, 'Subarna Express', '2024-04-25', '2nd Class - Shovon Chair', '11:30:00', 4, 'Chittagong'),
(5, 5, 'Ekota Express', '2024-04-25', '2nd Class Shovon', '12:30:00', 2, 'Panchagarh'),
(6, 6, 'Sundarban Express', '2024-04-25', 'First Class', '08:30:00', 2, 'Khulna'),
(7, 7, 'Chitra Express', '2024-04-25', 'First Class AC', '09:30:00', 3, 'Rajshahi'),
(8, 8, 'Drutojan Express', '2024-04-25', 'First Class Chair', '10:30:00', 1, 'Dinajpur'),
(9, 9, 'Subarna Express', '2024-04-25', '2nd Class - Shovon Chair', '11:30:00', 4, 'Chittagong'),
(10, 10, 'Ekota Express', '2024-04-25', '2nd Class Shovon', '12:30:00', 2, 'Panchagarh');

--insert data into transaction table
Insert into Transaction (transaction_ID, passenger_ID, ticket_ID, transaction_date, total_amount)
values
(1, 1, 1, '2024-04-21', 500),
(2, 2, 2, '2024-04-21', 750),
(3, 3, 3, '2024-04-21', 200),
(4, 4, 4, '2024-04-21', 880),
(5, 5, 5, '2024-04-21',360),
(6, 6, 6, '2024-04-21',500),
(7, 7, 7, '2024-04-21',500), 
(8, 8, 8, '2024-04-21', 200),
(9, 9, 9, '2024-04-21', 220),
(10, 10, 10, '2024-04-21', 180);


--How do you insert a new passenger record into the passenger table?
insert into Passenger values (11, 'Rahim', 'Khan', 'M', 30, '+8801746549501');

--How to add a column for email to the passenger table?
alter table passenger add (email varchar2(150) unique);

--How to modify the total_amount column in the transaction table to support larger amounts and include more decimal places?
alter table transaction modify (total_amount decimal(15, 4));

--What SQL command to use to drop the train_info table?
drop table Train_info;

--How to update the destination field in the ticket table for a specific ticket ID.
update Ticket set destination = 'Dhaka' where ticket_ID = 1;

--How to delete a transaction from the transaction table with a specific transaction ID?
delete from transaction where transaction_ID = 1;

--How to rename the contact column in passenger table to email?
alter table passenger rename column contact to email;

--find passengers older than 25years
select * from passenger where age > 25;

--increment total_seat_booked by 1 for ticket_ID 1
update ticket set total_seat_booked = total_seat_booked + 1 where ticket_ID = 1;

--delete a passenger record with passenger_ID 2
delete from passenger where passenger_ID = 2;

--select distinct first name from the passenger table where the gender is 'Male' or age is less than 30.
select first_name from passenger where gender = 'Male'
union
select first_name from passenger where age < 30;

--select the passenger name and ticket ID from the passenger and ticket table where the passenger ID is the same in both tables.
select p.first_name, t.ticket_ID

--count the number of tickets where the destination is Dhaka.
select count(*) from ticket where destination = 'Dhaka';

--from passenger table use the sql to find passenger age greater than 20 and name is like %m% 
select * from passenger 
where age > 20 and 
      (lower(first_name) like '%m%' or lower(last_name) like '%m%');

