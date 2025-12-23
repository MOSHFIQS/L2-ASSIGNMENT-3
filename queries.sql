-- 1 -- Retrieve booking information along with Customer name and Vehicle name.
select
     b.booking_id,
     u.name as customer_name,
     v.name as vehicle_name,
     b.start_date,
     b.end_date,
     b.status
from bookings b
inner join users u using (user_id)
inner join vehicles v using (vehicle_id)


-- 2 -- Find all vehicles that have never been booked.
select * from vehicles v
where not exists (
  select 1 from bookings b
  where b.vehicle_id = v.vehicle_id
);

-- 3 -- Retrieve all available vehicles of a specific type (e.g. cars).
select * from vehicles
where type = 'car' and status = 'available';

-- 4 -- Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.
select
     v.name as vehicle_name,
     count(*) as total_bookings
from bookings
inner join vehicles v using (vehicle_id)
group by v.name having count(*) > 2