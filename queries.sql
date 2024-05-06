-- groups passengers by age and selects those age groups having more than one passenger.
select age, count(*) as num_passengers
from passenger
group by age
having count(*) > 1;

--find the oldest age among all passengers.
select max(age) as oldest_passenger_age
from passenger;

--find the average age of all passengers.
select avg(age) as average_passenger_age

--selects unique first names of passengers who are either under 30 years old or have a contact number containing '017'.
select first_name from passenger where age < 30
union
select first_name from passenger where contact like '%017%';

--select first names that appear in both sets of passengers: those under 25 and those with '017' in their contact number.
select first_name from passenger where age < 25
intersect
select first_name from passenger where contact like '%017%';

--select first names of passengers who do not have '123' in their contact numbers.
select first_name from passenger
except
select first_name from passenger where contact like '%123%';

-- concatenate the first and last names of passengers whose first name includes "John".
select first_name || ' ' || last_name as full_name
from passenger
where first_name like '%Amit%';

--createa a view named passenger_details that includes key details about passengers.
create view passenger_details as
select p.passenger_id, p.first_name, p.last_name, p.age, p.contact
from passenger p;


--create nested subquery between passenger table and ticket table to find the total_seat_booked where the passenger_ID is 3
select sum(total_seat_booked) as total_seats_booked
from ticket
where passenger_id in (
    select passenger_id
    from passenger
    where passenger_id = 3
);






