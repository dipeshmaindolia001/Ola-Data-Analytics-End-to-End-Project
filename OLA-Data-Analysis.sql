CREATE TABLE bookings (
    date DATE,
    time TIME,
    booking_id VARCHAR(10),
    booking_status VARCHAR(50),
    customer_id VARCHAR(20),
    vehicle_type VARCHAR(20),
    pickup_location VARCHAR(100),
    drop_location VARCHAR(100),
    avg_vtat INTEGER,
    avg_ctat INTEGER,
    cancelled_rides_by_customer VARCHAR(5),
    reason_for_cancelling_by_customer TEXT,
    cancelled_rides_by_driver VARCHAR(5),
    reason_for_cancelling_by_driver TEXT,
    incomplete_rides VARCHAR(5),
    incomplete_rides_reason TEXT,
    booking_value NUMERIC(10,2),
    ride_distance NUMERIC(5,2),
    driver_ratings NUMERIC(2,1),
    customer_rating NUMERIC(2,1)
);

-- SQL Questions

-- 1. Retrieve all successful bookings:

create view Successful_Bookings As
SELECT * from bookings where booking_status = 'Success';


--2. Find the average ride distance for each vehicle type:

Create VIEW avg_ride_distance_for_each_vehicle as
SELECT vehicle_type, avg(ride_distance)
from bookings
group by vehicle_type;



-- 3. Get the total number of cancelled rides by customers:

CREATE VIEW Cancelled_by_customer as
SELECT COUNT(*) 
FROM bookings
WHERE booking_status = 'Cancelled by Customer';



-- 4. List the top 5 customers who booked the highest number of rides:

CREATE VIEW Top_5_customer as
SELECT customer_id, count(*) as no_of_rides
from bookings
where booking_status = 'Success'
group by customer_id
order by no_of_rides desc limit 5;



-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

CREATE VIEW Cancelled_by_drivers_P_C
select count(*) as  rides_cancelled_by_drivers_due_to_personal_and_car_related_issues
from bookings
where reason_for_cancelling_by_driver = 'Personal & Car related issues';

--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

CREATE VIEW Max_Min_Rating as
SELECT MAX(driver_ratings) as max_rating, Min(driver_ratings) as min_rating
from bookings
where vehicle_type = 'Prime Sedan';




-- 7. Retrieve all rides where payment was made using UPI:

 


-- 8. Find the average customer rating per vehicle type:

CREATE VIEW Avg_Customer_Rating as
select vehicle_type, avg(customer_rating) as avg_cust_rating
from bookings
group by vehicle_type;




--9. Calculate the total booking value of rides completed successfully:

CREATE VIEW Total_Successfull_Value as
select sum(booking_value) as total_successfull_value
from bookings
where booking_status = 'Success';


--10. List all incomplete rides along with the reason:


CREATE VIEW Incomplete_ride_detail as
SELECT booking_id, incomplete_rides_reason 
from bookings
where incomplete_rides ='Yes';


-- 1. Retrieve all successful bookings
SELECT * FROM Successful_Bookings;


-- 2. Find the average ride distance for each vehicle type
SELECT * FROM avg_ride_distance_for_each_vehicle;


-- 3. Get the total number of cancelled rides by customers
SELECT * FROM Cancelled_by_customer;


-- 4. Top 5 customers who booked highest number of rides
SELECT * FROM Top_5_customer;


-- 5. Cancelled rides by drivers (personal & car related issues)
SELECT * FROM Cancelled_by_drivers_P_C;


-- 6. Max and min driver ratings for Prime Sedan bookings
SELECT * FROM Max_Min_Rating;


-- 7. Rides where payment was made using UPI
SELECT * FROM upi_payments;


-- 8. Average customer rating per vehicle type
SELECT * FROM Avg_Customer_Rating;


-- 9. Total booking value of successful rides
SELECT * FROM Total_Successfull_Value;


-- 10. Incomplete rides with reason
SELECT * FROM Incomplete_ride_detail;

