--How do you declare a variable for storing passenger names and print its value in PL/SQL?
declare
    passenger_name varchar2(100);
begin
    passenger_name := 'John Doe';
    dbms_output.put_line('Passenger Name: ' || passenger_name);
end;

--How can you insert a new record into the passenger table and set a default value for age if not provided in PL/SQL?
declare
    default_age int := 25;
begin
    insert into passenger (passenger_id, first_name, last_name, age)
    values (2, 'Jane', 'Doe', default_age);
end;

--How do you declare a row type variable for a row in the passenger table and retrieve data into it?
declare
    passenger_rec passenger%rowtype;
begin
    select * into passenger_rec from passenger where passenger_id = 1;
    dbms_output.put_line('Passenger Name: ' || passenger_rec.first_name || ' ' || passenger_rec.last_name);
end;


--How do you declare a cursor for all passengers and display the total number of passengers?
declare
    cursor passenger_cursor is select * from passenger;
    passenger_count int := 0;
begin
    for rec in passenger_cursor loop
        passenger_count := passenger_count + 1;
    end loop;
    dbms_output.put_line('Total Passengers: ' || to_char(passenger_count));
end;


--Write a PL/SQL block that uses a WHILE loop to print numbers from 1 to 5.
declare
    counter int := 1;
begin
    while counter <= 5 loop
        dbms_output.put_line(counter);
        counter := counter + 1;
    end loop;
end;


--How would you write a PL/SQL block that checks if a passenger is a minor, adult, or senior based on their age?
declare
    age int := 70;
begin
    if age < 18 then
        dbms_output.put_line('Minor');
    elsif age between 18 and 64 then
        dbms_output.put_line('Adult');
    else
        dbms_output.put_line('Senior');
    end if;
end;


-- How do you create a procedure that updates the contact number for a passenger given their ID?
create or replace procedure update_contact(p_id int, new_contact varchar2) is
begin
    update passenger set contact = new_contact where passenger_id = p_id;
    commit;
end;

--Create a function that returns the full name of a passenger given their ID.
create or replace function get_full_name(p_id int) return varchar2 is
    full_name varchar2(200);
begin
    select first_name || ' ' || last_name into full_name from passenger where passenger_id = p_id;
    return full_name;
end;


--Write a trigger that automatically updates a log table whenever a passenger’s contact information is updated.
create or replace trigger passenger_contact_update
after update of contact on passenger
for each row
begin
    insert into passenger_log (passenger_id, old_contact, new_contact, update_time)
    values (:old.passenger_id, :old.contact, :new.contact, systimestamp);
end;


