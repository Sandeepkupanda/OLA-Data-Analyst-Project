CREATE database Ola;
use Olaa;
select * from bookings;
#SQL Series
Create View Successful_Booking as
select * FROM bookings
WHERE Booking_Status = 'Success';
#1. Retrieve all successful bookings:
Select * from Successful_Booking;


#2. Find the average ride distance for each vehicle type:
Create view ride_distance_for_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP BY Vehicle_Type;
#ANSWER
Select * from ride_distance_for_each_vehicle;

Select * from bookings;

#3. Get the total number of cancelled rides by customers:
Create View cancelled_rides_by_customers As
SELECT COUNT(*) FROM bookings  WHERE Booking_Status = 'canceled by Customer';

#ANS
select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID ORDER BY total_rides DESC LIMIT 5;

Select * from Top_5_Customers;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View rides_canceled_by_drivers_P_C_Issues As
SELECT COUNT(*) FROM bookings
 WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';
#ANS
 Select * From rides_canceled_by_drivers_P_C_Issues;
 
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Create View Max_Min_Driver_Rating As
 SELECT MAX(Driver_Ratings) as max_rating, 
 MIN(Driver_Ratings) as min_rating 
 FROM bookings WHERE Vehicle_Type = 'Prime Sedan';
 Select * From Max_Min_Driver_Rating;
 
 #7. Retrieve all rides where payment was made using UPI:
 Create View UPI_Payment As
 Select * From bookings where Payment_Method = 'UPI';
 
 
 #8. Find the average customer rating per vehicle type:
 SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating 
 FROM bookings GROUP BY Vehicle_Type;
 
 #9. Calculate the total booking value of rides completed successfully:
 Create View total_successful_ride_value As
 SELECT SUM(Booking_Value) as total_successful_value 
 FROM bookings 
 WHERE Booking_Status = 'Success';

 
 #10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides = 'Yes';