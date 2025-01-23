create database ola;
use ola;
select * from bookings;

-- Q1. Retrieve all successful booking:
select * from bookings
where Booking_Status = 'Success';

-- Q2. Find the average ride distance for each vehicle type: 
select Vehicle_Type , Avg(Ride_Distance) as average_ride_distance
from bookings group by Vehicle_Type ;

-- Q3. Get the total number of cancelled rides by customers:
select count(*) Total_cancelled_by_customer
from bookings where Booking_Status='Canceled by Customer';

-- Q4. List the top 5 customers who booked the highest number of rides:
select Customer_ID, count(Booking_ID) total_rides
 from bookings group by Customer_ID order by  total_rides desc limit 5;
 
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues: 
select count(*) rides_cancelled_by_drivers from bookings 
where Canceled_Rides_by_Driver='Personal & Car related issue';

-- Q6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 
select Vehicle_Type, min(Driver_Ratings), max(Driver_Ratings)
from bookings group by Vehicle_Type having Vehicle_Type='Prime Sedan';

--  Q7. Retrieve all rides where payment was made using UPI: 
select * from bookings where Payment_Method = 'UPI';

-- Q8. Find the average customer rating per vehicle type:
select Vehicle_Type, avg(Customer_Rating)
from bookings group by Vehicle_Type;

-- Q9. Calculate the total booking value of rides completed successfully: 
select Sum(Booking_Value) from bookings where Booking_Status='Success';

-- Q10. List all incomplete rides along with the reason:
select Booking_ID,Incomplete_Rides_Reason
 from bookings where Incomplete_Rides='Yes';
 
 select Incomplete_Rides_Reason ,count(Incomplete_Rides_Reason) as Total_reasons from bookings where Incomplete_Rides='Yes' group by  Incomplete_Rides_Reason;


 


 

