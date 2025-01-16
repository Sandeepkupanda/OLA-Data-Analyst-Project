# OLA-Data-Analyst-Project
	1. Ola- identified the reason & trend for ride Cancellation
# Process- Cleaned and processed data from multiple sources, applied SQL queries, and visualized trends using Power BI.
# Results- Reduced the Cancellation rate by 10% by implementing the new strategy.
##**SQL Answers:** OLA Data Analyst Project 1. Retrieve all successful bookings: SELECT * FROMbookings WHERE Booking_Status = 'Success';
# Find the average ride distance for each vehicle type: SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY Vehicle_Type;
Get the total number of cancelled rides by customers: SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'cancelled by Customer';
List the top 5 customers who booked the highest number of rides: SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY Customer_ID ORDER BY total_rides DESC LIMIT 5;
Get the number of rides cancelled by drivers due to personal and car-related issues: SELECT COUNT(*) FROM bookings WHERE cancelled_Rides_by_Driver = 'Personal & Car related issue';
Find the maximum and minimum driver ratings for Prime Sedan bookings: SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM bookings WHERE Vehicle_Type = 'Prime Sedan';
Retrieve all rides where the payment was made using UPI: SELECT * FROMbookings WHERE Payment_Method = 'UPI';
Find the average customer rating per vehicle type: SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings GROUPBYVehicle_Type;
Calculate the total booking value of rides completed successfully: SELECT SUM(Booking_Value) as total_successful_value FROM bookings WHERE Booking_Status = 'Success';
List all incomplete rides along with the reason: SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides = 'Yes';
## **Power BI Answers:**
Overall-- Ride Volume Over Time | Booking Status Breakdown
Vehicle Type--Top 5 Vehicle Types by Ride Distance
Revenue--Revenue by Payment Method Top 5 Customers by Total Booking Value Ride Distance Distribution Per Day
Cancellation-- Cancelled Rides Reasons (Customer) cancelled Rides Reasons(Drivers)
Ratings-- Driver Ratings Customer Ratings
## **Answers**
Ride Volume Over Time: A time-series chart showing the number of rides per day/week.
Booking Status Breakdown: A pie or doughnut chart displaying the proportion of different booking statuses (success, cancellation by the customer, cancellation by the driver, etc.).
Top 5 Vehicle Types by Ride Distance: A bar chart ranking vehicle types based on the total distance covered.
Average Customer Ratings by Vehicle Type: A column chart showing the average customer ratings for different vehicle types.
cancelled Rides Reasons: A bar chart that highlights the common reasons for ride cancellations by customers and drivers.
Revenue by Payment Method: A stacked bar chart displaying total revenue based on payment methods (Cash, UPI, Credit Card, etc.).
Top 5 Customers by Total Booking Value: A leaderboard visual listing customers who have spent the most on bookings.
Ride Distance Distribution Per Day: A histogram or scatter plot showing the distribution of ride distances for different Dates.
Driver Rating Distribution: A box plot visualizing the spread of driver ratings for different vehicle types.
Customer vs. Driver Ratings: A scatter plot comparing customer and driver ratings for each completed ride, analyzing correlations.
# DashBoard image 
![Capture PNG5](https://github.com/user-attachments/assets/519108c4-3d6d-4ed4-87bd-84c7faeb94ca)





