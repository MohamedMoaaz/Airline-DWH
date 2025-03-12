# Table of Contents
## 1. Introduction
## 2. Fact Tables and Data Marts
### 2.1 Flight Activity Data Mart (*fact_flight*)  
- **Business Process/Description**  
- **Grain**  
- **Logical Design**  
- **Columns**  
  - Foreign Keys (FK)  
  - Date and Time  
  - Fact and Measures 
- **Usage**
  
### 2.2 Customer Interaction Data Mart (*fact_customer_interaction*)  
- **Business Process/Description**  
- **Grain**  
- **Logical Design**  
- **Columns**  
  - Foreign Keys (FK)  
  - Date and Time  
- **Usage**  

### 2.3 Reservation Process Data Mart (*fact_reservation*)  
- **Business Process/Description**  
- **Grain**  
- **Logical Design**  
- **Columns**  
  - Foreign Keys (FK)  
  - Date and Time  
  - Fact and Measures 
- **Usage**  

### 2.4 Frequent Flyer Points Data Mart (*fact_points*)  
- **Business Process/Description**  
- **Grain**  
- **Logical Design**  
- **Columns**  
  - Foreign Keys (FK)  
  - Date and Time  
  - Fact and Measures 
- **Usage**  
## 3. Dimension Tables
## 4. Query Optimization
## 5. Business Questions

# Introduction
In the highly competitive airline industry, data-driven decision-making is crucial for optimizing operations, enhancing customer satisfaction, and identifying new business opportunities. This project focuses on designing a Data Warehouse (DWH) model to support the executive management of a major airline company in analyzing key business processes.

The primary objective is to enable a comprehensive analysis of flight activities, frequent flyer behavior, reservation processes, and customer interactions. The marketing team requires insights into passenger travel patterns, fare structures, loyalty program engagement, and promotional effectiveness. Additionally, the finance team seeks to evaluate company profits through multi-channel reservation data. Furthermore, customer service interactions, including complaints and feedback, must be analyzed to enhance service quality and customer retention.

To achieve this, a dimensional modeling approach will be applied to develop a logical and physical design that supports efficient querying and reporting for decision support. The model will ensure seamless integration of data across various departments, enabling the airline to make informed strategic decisions.


# 2. Fact Tables and Data Marts
## Fact Table: `fact_flight`

### Description
This fact table references dimensions from `Passenger`, `Aircraft`, `Fare`, `Crew`, `Airport`, and `Date` attributes to provide a comprehensive dataset for flight revenue analysis.

### Granularity
The granularity of this fact table is a single ticketed flight transaction for a specific passenger. Each row represents a unique instance of a passenger traveling on a particular flight, including details such as fare paid, fees, and revenue. This ensures that the data is captured at the most detailed level for analysis.

![fact_Flight](https://github.com/TmohamedashrafT/Airline-DWH/blob/main/drawio%20schema/fact_flight.drawio.png)

### Columns

#### Foreign Keys (Dimensional References)  
These columns link to various dimension tables to provide detailed contextual information.  

| Column Name             | Data Type        | Description                                          | Reference Dimension   |
|-------------------------|-----------------|------------------------------------------------------|------------------------|
| `PassengerKey`          | NUMBER(10)      | Unique identifier for the passenger.                 | Passenger Dimension   |
| `PassengerProfileKey`   | NUMBER(10)      | Profile details of the passenger.                    | Passenger Dimension   |
| `AircraftKey`           | NUMBER(10)      | Aircraft identifier.                                 | Aircraft Dimension    |
| `FareBasisKey`          | NUMBER(10)      | Fare classification.                                 | Fare Dimension        |
| `CrewKey`               | NUMBER(10)      | Identifier for the crew.                             | Crew Dimension        |
| `OriginAirportKey`      | NUMBER(10)      | Code of the departure airport.                       | Airport Dimension     |
| `DestinationAirportKey` | NUMBER(10)      | Code of the arrival airport.                         | Airport Dimension     |
| `DepartureDateKey`      | NUMBER(10)      | Date of departure.                                   | Date Dimension        |
| `ArrivalDateKey`        | NUMBER(10)      | Date of arrival.                                     | Date Dimension        |

---

#### Time Attributes  
These attributes provide insights into flight schedules.  

| Column Name              | Data Type       | Description                                          |
|--------------------------|----------------|------------------------------------------------------|
| `DepartureTime`          | NUMBER(10)      | Exact departure time of the flight.                 |
| `ArrivalTime`            | NUMBER(10)      | Exact arrival time of the flight.                   |

---

#### Flight Details  
These attributes define specific flight-related information.  

| Column Name              | Data Type       | Description                                          |
|--------------------------|----------------|------------------------------------------------------|
| `TicketNumber`           | NUMBER(10)      | Unique ticket number.                                |

---

#### Facts and Measures  
These numeric attributes are used for financial analysis and revenue tracking.  

| Column Name              | Data Type        | Description                                          |
|--------------------------|-----------------|------------------------------------------------------|
| `FarePaid`               | NUMBER(10,2)    | Cost of the ticket.                                  |
| `OvernightStays`         | NUMBER(10)      | Number of overnight stays.                           |
| `Revenue`               | NUMBER(10,2)    | Total revenue from the flight.                       |
| `LuggageFees`           | NUMBER(10,2)    | Fees collected for luggage.                          |
| `UpgradeFees`           | NUMBER(10,2)    | Fees for seat upgrades.                              |
| `ServicesFees`          | NUMBER(10,2)    | Additional service fees.                             |

---

### Usage  
This model is designed for a **flight transaction system** where a new row is inserted for every **customer trip**. Key functionalities include:  

- **Tracking individual passenger trips**, linking each journey to specific passengers, aircraft, and airports.  
- **Capturing financial details**, including fare paid, luggage fees, and service upgrades, for accurate revenue reporting.  
- **Providing insights into travel patterns**, helping airlines optimize route efficiency and customer service.  
- **Facilitating operational analysis**, enabling better crew management and aircraft utilization.  

This structure ensures that **each flight taken by a passenger is uniquely recorded**, allowing for **detailed analytics** and **accurate revenue tracking** in the airline industry.  

## Fact Table: `Customer Interaction`
### Description
This fact table supports the analysis of customer interactions by recording when, where, and how customers engage with the company. It helps in evaluating service effectiveness, identifying trends in customer concerns, and improving customer support strategies.

### Granularity:
The grain of this fact table is one row per recorded customer interaction. Each row represents a unique interaction between a customer and the business.

![fact_Customer_Interaction](https://github.com/TmohamedashrafT/Airline-DWH/blob/main/drawio%20schema/fact_CustomerInteraction.drawio.png)

#### Columns
| Column Name            | Data Type | Description                                        | Reference Dimension |
|------------------------|----------|----------------------------------------------------|---------------------|
| `PassangerKey`          | INT (FK)  | Links to the passenger dimension.                 |`dim_passenger`      |
| `PassangerProfileKey`   | INT (FK)  | Links to passenger profile details.               | `dim_passenger_profile` |
| `AircraftKey`           | INT (FK)  | Links to the aircraft dimension.                  | `dim_aircraft`       |
| `OriginAirportKey`      | INT (FK)  | Links to the origin airport dimension.            | `dim_airport`        |
| `DestinationAirportKey` | INT (FK)  | Links to the destination airport dimension.       | `dim_airport`        |
| `CrewKey`               | INT (FK)  | Links to the crew member involved.                | `dim_crew`          |
| `InteractionKey`        | INT (FK)  | Links to the interaction type dimension.          | `dim_interaction`   |
| `EmployeeKey`           | INT (FK)  | Links to the employee involved in the interaction.| `dim_employee`      |
| `ChannelKey`           | INT (FK)  | Links to the interaction channel dimension.       | `dim_channel`       |
| `InteractionId`         | INT   | Unique identifier for the interaction in 3NF schema. | -                 |
| `Status`               | STRING   | Current status of the interaction.                | -                 |
| `PassengerSatisfaction` | INT      | Satisfaction rating provided by the passenger.    | -                 |

---

#### Date and Time Attributes   
These attributes provide insights into flight schedules.  

| Column Name              | Data Type       | Description                                          |
|--------------------------|----------------|------------------------------------------------------|
| `IssuedDateKey`         | INT (FK)  | Links to the date the interaction was issued.     | `dim_date`          |
| `ClosedDateKey`         | INT (FK)  | Links to the date the interaction was closed.     | `dim_date`          |
| `IssuedTime`           | TIMESTAMP      | Time the interaction was issued.                  | -                 |
| `ClosedTime`           | TIMESTAMP      | Time the interaction was closed.                  | -                 |

---
### Usage
- Tracks customer interactions across different channels.  
- Analyzes customer satisfaction and service performance.  
- Helps in improving response times and issue resolution.
## Fact Table: `fact_reservation`

### Description  
The `fact_reservation` table stores transactional data related to flight reservations, including pricing, fees, and promotions. This table provides insights into reservation trends, revenue calculations, and passenger booking behavior.

### Granularity:  
The granularity of this fact table is a **single reservation transaction** for a specific passenger. Each row represents a unique reservation, including details such as ticket pricing, applied fees, and promotions. This ensures that the data is captured at the most detailed level for analysis.

![Fact_Reservation](https://github.com/TmohamedashrafT/Airline-DWH/blob/main/drawio%20schema/fact_reservation.drawio.png)

### Columns  

#### Foreign Keys (Dimensional References)  
These columns link to various dimension tables to provide detailed contextual information.  

| Column Name              | Data Type      | Description                                          | Reference Dimension |
|--------------------------|---------------|------------------------------------------------------|----------------------|
| `Reservation_Key`        | NUMBER(10) (PK) | Unique identifier for each reservation record.       | - |
| `ticket_id`             | NUMBER(10)     | Unique identifier for the ticket.                   | - |
| `channel_key`           | NUMBER(10)     | Booking channel used for the reservation.           | `dim_channel` |
| `promotion_key`         | NUMBER(10)     | Promotion applied to the reservation.               | `dim_promotion` (if applicable) |
| `passenger_key`         | NUMBER(10)     | Passenger associated with the reservation.          | `dim_passenger` |
| `fare_basis_key`        | NUMBER(10)     | Fare classification for the reservation.            | `dim_fare_basis` |
| `aircraft_key`          | NUMBER(10)     | Aircraft used for the flight.                       | `dim_aircraft` |
| `source_airport`        | NUMBER(10)     | Departure airport.                                  | `dim_airport` |
| `destination_airport`   | NUMBER(10)     | Arrival airport.                                    | `dim_airport` |

#### Date and Time Attributes  
These attributes provide insights into reservation and flight schedules.  

| Column Name              | Data Type      | Description                                          | Reference Dimension |
|--------------------------|---------------|------------------------------------------------------|----------------------|
| `reservation_date_key`   | NUMBER(8)     | Date when the reservation was made.                 | `dim_date` |
| `departure_date_key`     | NUMBER(8)     | Scheduled departure date of the flight.             | `dim_date` |
| `departure_time`         | TIMESTAMP     | Exact departure time of the flight.                 | - |
| `Reservation_timestamp`  | TIMESTAMP     | Timestamp when the reservation was created.         | - |

#### Reservation Details  

| Column Name              | Data Type      | Description                                          |
|--------------------------|---------------|------------------------------------------------------|
| `payment_method`         | STRING  | Payment method used for the reservation.            |
| `seat_no`               | STRING  | Seat assigned to the passenger.                     |
| `Is_Cancelled`          | NUMBER(1)     | Indicates if the reservation was canceled (0 = No, 1 = Yes). |

#### Measures & Calculations  

These numeric attributes are used for financial analysis and revenue tracking.  

| Column Name          | Data Type      | Description                                              | Calculation |
|----------------------|---------------|----------------------------------------------------------|-------------|
| `Promotion_Amount`  | NUMBER(10,2)  | Discount applied to the reservation.                    | - |
| `tax_amount`        | NUMBER(10,2)  | Tax amount added to the ticket price.                   | - |
| `Operational_Fees`  | NUMBER(10,2)  | Additional fees for operations (e.g., service fees).    | - |
| `Cancelation_Fees`  | NUMBER(10,2)  | Fees applied if the reservation is canceled.            | - |
| `Fare_Price`        | NUMBER(10,2)  | Base fare price of the ticket.                          | - |
| `Final_Price`       | NUMBER(10,2)  | Total price paid by the passenger.                      | `if Is_cancelled == 0: Final_price = Fare_Price + Operational_Fees + tax_amount - Promotion_Amount else: Final_price = Cancelation_Fees` |

### Usage  
- Supports revenue analysis and pricing optimization.  
- Helps in understanding passenger booking patterns and channel preferences.  
- Tracks the impact of promotions and cancellation fees on overall revenue.  
- Provides insights into reservation trends and seat allocation efficiency.


## Fact Table: `fact_points`

### Description  
The `fact_points` table tracks **frequent flyer points transactions**, including points earned, redeemed, and expired. It supports the analysis of **loyalty program engagement**, **promotion effectiveness**, and **passenger tier behavior**.

### Granularity  
The granularity of this fact table is **one row per points transaction event** (e.g., earning 500 points for a flight, redeeming 200 points for lounge access). Each row captures the context of the transaction, including the **associated passenger, service, promotion, and operational details**.

![fact_points](https://github.com/TmohamedashrafT/Airline-DWH/blob/main/drawio%20schema/fact_points.drawio.png)

### Columns  
#### Foreign Keys (Dimensional References)  
These columns link to various dimension tables to provide detailed contextual information.

| Column Name                 | Data Type      | Description                                        | Reference Dimension |
|-----------------------------|---------------|----------------------------------------------------|----------------------|
| `points_key`                | NUMBER (PK)   | Unique identifier for each points transaction.    | - |
| `passenger_key`             | NUMBER        | Passenger earning/redeeming points.               | `dim_passenger` |
| `passenger_profile_key`     | NUMBER        | Passenger’s tier status at transaction time.      | `dim_passenger_profile_history` |
| `aircraft_key`              | NUMBER        | Aircraft used for the flight.                     | `dim_aircraft` |
| `crew_employee_bridge_key`  | NUMBER        | Crew/employee association.                        | `crew_employee_bridge` |
| `service_key`               | NUMBER        | Service linked to points (e.g., upgrades).        | `dim_services` |
| `promotion_key`             | NUMBER        | Promotion applied (if any).                       | `dim_promotion` |

#### Date Attributes  
These attributes provide **temporal insights** into the points transactions.

| Column Name              | Data Type  | Description                      | Reference Dimension |
|--------------------------|-----------|----------------------------------|----------------------|
| `transaction_date_key`   | NUMBER    | Date of the transaction.        | `dim_date` |
| `expiration_date_key`    | NUMBER    | Date points expired (if applicable). | `dim_date` |

#### Measures  

| Column Name         | Data Type  | Description                           |
|---------------------|-----------|---------------------------------------|
| `points_earned`    | NUMBER     | Points earned in the transaction.    |
| `points_redeemed`  | NUMBER     | Points redeemed in the transaction.  |
| `points_expired`   | NUMBER     | Points expired in the transaction.   |

### Usage  

- **Loyalty Program Analysis**: Tracks points earned/redeemed by passenger tier (**Gold/Platinum**).
- **Promotion Effectiveness**: Measures how promotions drive points accrual (e.g., `"Double Miles"` campaigns).
- **Service Impact**: Identifies popular redemption services (e.g., upgrades, extra luggage).
- **Expiration Trends**: Monitors points expiration rates by fare type or season.




# 3. Dimension Tables

## Table Name: `dim_employee`

### Description
The `dim_employee` table stores descriptive attributes related to employees, providing context for analytical processing in a star schema.

### Columns

| Column Name          | Data Type       | Description                                      |
|----------------------|----------------|--------------------------------------------------|
| `EmployeeKey`       | INT (PK)        | Unique identifier for each employee record.      |
| `EmployeeID`        | STRING     | Unique employee identifier.                      |
| `EmployeeFirstName` | STRING    | First name of the employee.                      |
| `EmployeeLastName`  | STRING    | Last name of the employee.                       |
| `EmployeeEmail`     | STRING    | Official email address of the employee.          |
| `EmployeePhoneNumber` | STRING   | Contact phone number of the employee.            |
| `EmployeeJobTitle`  | STRING    | Job title of the employee.                       |
| `EmployeeSalary`    | DECIMAL(10,2)   | Salary of the employee.                          |
| `EmployeeHiringDate`| DATE            | Date when the employee was hired.                |

### Usage
- Used in fact tables to provide employee-related context.
- Helps in tracking job roles, salaries, and hiring trends.
- Supports reporting and workforce analysis.

## Table Name: `dim_passenger`

### Description  
The `dim_passenger` table stores detailed information about passengers, providing essential attributes for analysis in the airline data warehouse. This table links to the fact tables to support revenue tracking, passenger profiling, and service utilization. This is a slowly changing dimension type 1, changes will overwrite the rows.

### Columns  

| Column Name                | Data Type      | Description                                                   |
|----------------------------|---------------|---------------------------------------------------------------|
| `passenger_key`            | NUMBER (PK)   | Unique identifier for each passenger record.                  |
| `passenger_id`             | NUMBER        | Passenger's internal identification number.                   |
| `passenger_national_id`    | STRING  | National identification number of the passenger.              |
| `passenger_passport_id`    | STRING  | Passport number of the passenger (if applicable).             |
| `passenger_firstname`      | STRING | First name of the passenger.                                  |
| `passenger_lastname`       | STRING | Last name of the passenger.                                   |
| `passenger_dob`            | DATE          | Date of birth of the passenger.                              |
| `passenger_city`           | STRING | City of residence of the passenger.                          |
| `passenger_nationality`    | STRING | Nationality of the passenger.                                |
| `passenger_country`        | STRING | Country of residence of the passenger.                       |
| `passenger_email`          | STRING | Contact email of the passenger.                              |
| `passenger_phoneno`        | STRING  | Contact phone number of the passenger.                       |
| `passenger_gender`         | STRING  | Gender of the passenger (e.g., Male, Female).         |
| `passenger_language`       | STRING  | Preferred language of the passenger.                         |
| `passenger_marital_status` | STRING  | Marital status of the passenger (e.g., Single, Married).     |

### Usage  
- Used in fact tables to track passenger-related transactions, such as ticket purchases and service usage.  
- Supports passenger segmentation, profiling, and personalized service recommendations.  
- Enhances customer relationship management and marketing analytics.  

## Table Name: `dim_passenger_profile`

### Description  
The `dim_passenger_profile` table stores information related to a passenger's travel profile, including frequent flyer status, home airport, and mileage tiers. This table helps in tracking passenger loyalty and travel patterns. This is a slowly changing dimention type 4, changes in this table result in new row in dim_passenger_profile_history.

### Columns  

| Column Name               | Data Type      | Description                                                   |
|---------------------------|---------------|---------------------------------------------------------------|
| `profile_key`             | NUMBER (PK)   | Unique identifier for each passenger profile record.          |
| `frequent_flyer_tier`     | STRING  | Loyalty program tier of the passenger (e.g., Silver, Gold). "Not loyal" in case the passenger is not enrolled in loyalty program.  |
| `home_airport`            | STRING | Primary airport of the passenger.                            |
| `lifetime_mileage_tier`   | STRING  | Tier based on the total miles flown by the passenger.        |
| `updated_date`            | DATE          | Date when the profile information was last updated.          |

### Usage  
- Used to track passenger loyalty and travel habits.  
- Supports personalized marketing and targeted promotions.  
- Enhances customer service by providing insights into frequent traveler preferences.  

## Table Name: `dim_passenger_profile_history`

### Description  
The `dim_passenger_profile_history` table tracks historical changes in a passenger's travel profile over time. It maintains records of frequent flyer tiers, home airports, and mileage tiers with validity periods.

### Columns  

| Column Name              | Data Type      | Description                                                       |
|--------------------------|---------------|-------------------------------------------------------------------|
| `profile_history_key`    | NUMBER (PK)   | Unique identifier for each historical profile record.             |
| `profile_key`            | NUMBER        | Reference to the passenger profile in `dim_passenger_profile`.    |
| `frequent_flyer_tier`    | STRING  | Loyalty program tier at the given time (e.g., Silver, Gold). "Not loyal" in case the passenger is not enrolled in loyalty program.      |
| `home_airport`           | STRING | Home airport of the passenger at the given time.                 |
| `lifetime_mileage_tier`  | STRING  | Mileage tier of the passenger during the recorded period.        |
| `start_date`             | DATE          | Start date of the recorded profile status.                       |
| `end_date`               | DATE          | End date of the recorded profile status (NULL if currently active). |

### Usage  
- Maintains a historical record of changes in passenger profiles over time.  
- Supports trend analysis and tracking of passenger loyalty progressions.  
- Enables accurate reporting of past passenger statuses for audits and business intelligence.  

## Table Name: `dim_airport`

### Description  
The `dim_airport` table stores details about airports, including their location, classification, and infrastructure. It helps in analyzing flight operations, passenger traffic, and airport utilization.

### Columns  

| Column Name              | Data Type      | Description                                                   |
|--------------------------|---------------|---------------------------------------------------------------|
| `airport_key`           | NUMBER (PK)   | Unique identifier for each airport record.                    |
| `airport_id`            | NUMBER        | Internal airport identification number.                       |
| `airport_name`          | STRING | Name of the airport.                                          |
| `airport_code`          | STRING  | Unique airport code (IATA/ICAO).                              |
| `airport_city`          | STRING | City where the airport is located.                           |
| `airport_country`       | STRING | Country where the airport is located.                        |
| `airport_region`        | STRING | Geographic region of the airport.                            |
| `airport_type`          | STRING  | Type of airport (e.g., International, Domestic, Regional).   |
| `airport_latitude`      | NUMBER        | Latitude coordinate of the airport.                          |
| `airport_longitude`     | NUMBER        | Longitude coordinate of the airport.                         |
| `airport_hub_status`    | STRING  | Indicates if the airport is a major hub (e.g., Hub, Non-Hub). |
| `airport_no_of_runways` | NUMBER        | Number of runways at the airport.                            |
| `airport_no_of_terminals` | NUMBER     | Number of terminals at the airport.                          |

### Usage  
- Supports route analysis and airport traffic monitoring.  
- Helps in evaluating airport infrastructure and capacity.  

## Table Name: `dim_aircraft`

### Description  
The `dim_aircraft` table stores details about aircraft, including their manufacturer, capacity, and performance specifications. This dimension supports analysis of fleet utilization, aircraft performance, and seating capacity.

### Columns  

| Column Name                | Data Type      | Description                                                      |
|----------------------------|---------------|------------------------------------------------------------------|
| `aircraft_key`            | INT (PK)      | Unique identifier for each aircraft record.                      |
| `aircraft_model`          | STRING   | Model name of the aircraft.                                      |
| `aircraft_manufacturer`   | STRING   | Manufacturer of the aircraft (e.g., Boeing, Airbus).             |
| `aircraft_capacity`       | INT           | Total seating capacity of the aircraft.                         |
| `aircraft_enginetype`     | STRING   | Type of engine used in the aircraft.                            |
| `aircraft_status`         | STRING   | Current operational status (e.g., Active, Maintenance, Retired). |
| `economy_seats_range`     | STRING   | Range of available economy class seats.                         |
| `business_seats_range`    | STRING   | Range of available business class seats.                        |
| `firstclass_seats_range`  | STRING   | Range of available first-class seats.                           |
| `max_miles`              | INT           | Maximum range (miles) the aircraft can travel.                  |
| `max_speed`              | INT           | Maximum speed of the aircraft (mph or km/h).                    |

### Usage  
- Supports aircraft fleet management and utilization analysis.  
- Helps in optimizing flight operations based on aircraft capabilities.  
- Used in fact tables to track aircraft performance, capacity, and routes.  

## Table Name: `dim_date`

### Description  
The `dim_date` table is a date dimension that provides detailed attributes related to each calendar date. It supports time-based analysis for various fact tables in the airline data warehouse.

### Columns  

| Column Name  | Data Type      | Description                                      |
|-------------|---------------|--------------------------------------------------|
| `DateKey`   | NUMBER(8) (PK) | Unique identifier for each date (YYYYMMDD format). |
| `Full_date` | DATE           | Full date value.                                |
| `DayNumber` | NUMBER(1)      | Numeric representation of the day (1–7).       |
| `DayName`   | STRING    | Name of the day (e.g., Monday, Tuesday).       |
| `monthName` | STRING    | Name of the month (e.g., January, February).   |
| `yearNo`    | NUMBER(7)      | Year value (e.g., 2024).                       |
| `season`    | STRING    | Season classification (e.g., Winter, Summer).  |
| `quarter`   | NUMBER(1)      | Quarter of the year (1–4).                     |

### Usage  
- Used in fact tables to enable time-based analysis and reporting.  
- Supports seasonality analysis for revenue, passenger traffic, and service demand.  
- Helps in filtering and aggregating data by day, month, quarter, and year.  

## Table Name: `dim_channel`

### Description  
The `dim_channel` table stores information about the different booking or service channels used by passengers. It helps in analyzing sales distribution, customer preferences, and revenue sources.

### Columns  

| Column Name    | Data Type     | Description                                      |
|---------------|--------------|--------------------------------------------------|
| `channel_key` | INT (PK)      | Unique identifier for each channel record.      |
| `channel_name` | STRING  | Name of the channel (e.g., Website, Mobile App, Agent). |
| `channel_type` | STRING  | Category of the channel (e.g., Online, Offline). |

### Usage  
- Supports tracking of booking sources for sales analysis.  
- Helps in understanding customer behavior and channel effectiveness.  
- Used in fact tables to associate transactions with booking channels.  

## Table Name: `dim_interaction`

### Description
The `dim_interaction` table is a dimension table that captures details about interactions. It includes information such as the type of interaction, its severity, and the channel through which it occurred.

### Columns
| Column Name        | Data Type | Description                                       |
| ------------------ | --------- | ------------------------------------------------- |
| InteractionKey     | INT (PK)  | Primary key, uniquely identifying an interaction. |
| InteractionType    | STRING   | Specifies the type of interaction.                |
| Severity           | STRING   | Indicates the severity level of the interaction.  |
| InteractionChannel | STRING   | Specifies the communication channel used.         |

### Usage
- Enables analysis of customer interactions across different channels.  
- Helps in identifying trends in interaction severity and type.  
- Supports linking interactions to transactions for better insights.  

## Table Name: `dim_promotions`

### Description  
The `dim_promotions` table stores descriptive attributes related to promotional campaigns offered by the airline. It provides context for analyzing how promotions influence customer behavior, such as frequent flyer engagement, fare upgrades, and response to special offers. This table supports decision-making for marketing and finance teams.

### Columns  

| Column Name               | Data Type     | Description                                                               |
|---------------------------|---------------|---------------------------------------------------------------------------|
| `promotion_key`           | INT (PK)      | Unique identifier for each promotion record.                              |
| `promotion_id`            | INT           | Unique identifier for the promotion.                                      |
| `promotion_type`          | STRING  | Describes the type of promotion.                                          |
| `promotion_target_segment`| STRING  | Target audience for the promotion (e.g., new customers, loyal customers). |
| `promotion_channel`       | STRING  | Channel used to deliver the promotion (e.g., email, mobile app, website). |
| `promotion_start_date`    | DATE          | The date when the promotion starts.                                       |
| `promotion_end_date`      | DATE          | The date when the promotion ends.                                         |
| `is_current`              | CHAR(1)       | Indicates if the promotion is currently active ('Y' for yes, 'N' for no). |
| `discount`                | NUMBER(10, 2) | Discount percentage offered in the promotion    .                          |

### Usage  
- This table can be used in fact tables to provide context for promotional activities.
- It helps in tracking promotional effectiveness, target segments, and channels. 
- Supports reporting and analysis of promotional campaigns.

## Table Name: `dim_services`

### Description  
The `dim_services`  table stores descriptive attributes related to services offered by the airline. It provides context for analyzing service usage, costs, and effectiveness in enhancing passenger experience.

### Columns  

| Column Name          | Data Type     | Description                                                                |
|----------------------|---------------|----------------------------------------------------------------------------|
| `service_key`        | INT (PK)      | Unique identifier for each service record.                                 |
| `service_id`         | INT           | Unique identifier for the service.                                         |
| `service_type`       | STRING  | Type of service (e.g., in-flight meals, Wi-Fi access, priority boarding).  |
| `service_category`   | STRING  | Category of the service (e.g., passenger comfort, passenger convenience).  |
| `service_cost`       | NUMBER(10, 2) | Cost of the service to the passenger.                                          |
| `service_location`   | STRING | Location where the service is provided (e.g., aircraft cabin, boarding gate).  |
| `start_date`         | DATE          | Start date of the service offering.                                            |
| `end_date`           | DATE          | End date of the service offering (NULL if the service is still active).        |

### Usage  
- This table serves as a dimension table to provide detailed context about services offered by the airline or aircraft.
- It helps in tracking service usage, costs, and effectiveness across different categories and locations. 
- Supports decision-making for optimizing service offerings and enhancing passenger satisfaction.

## Table Name: `dim_farebasis`

### Description
The dim_farebasis table stores fare basis rules and classifications, including advance purchase requirements, restrictions, and penalties. It enables analysis of pricing strategies, fare popularity, and passenger preferences.

### Columns  

| Column Name        | Data Type       | Description                                         |
|-------------------|----------------|-----------------------------------------------------|
| `farebasis_key`   | NUMBER (PK)     | Unique identifier for each fare basis record.     |
| `farebasis_code`  | STRING    | Unique business code for the fare basis (e.g., Y26B, JFKLAX_Q). |
| `farebasis_class` | STRING    | Class of service (Economy, Business, First).      |
| `farebasis_type`  | STRING    | Type of fare (Discounted, Promotional, Award, Corporate). |
| `adv_pur_req`     | CHAR(1)         | Indicates if advance purchase is required (Y/N).  |
| `adv_pur_days`    | NUMBER          | Number of days in advance the fare must be purchased. |
| `is_restricted`   | CHAR(1)         | Indicates if the fare has restrictions (Y/N).     |
| `restrictions`    | STRING   | Specific restrictions (e.g., "Non-refundable", "Weekend travel only"). |
| `change_penalty`  | NUMBER(10,2)    | Fee charged for changing the ticket.              |
| `cancel_penalty`  | NUMBER(10,2)    | Fee charged for canceling the ticket.             |

### Usage 
- Analyzes fare popularity by passenger tier (Gold/Platinum).
- Tracks revenue impact of fare restrictions and penalties.
- Evaluates promotion effectiveness (e.g., seasonal discounts).


# 4. Query Optimization

GCP was used as the data warehouse solution, leveraging its columnar storage architecture to optimize query performance for analytical workloads. A serverless, columnar, and distributed design is provided by GCP’s BigQuery, enabling efficient processing of large datasets. Unlike traditional row-based databases, data is stored by columns instead of rows, allowing for faster query execution by retrieving only the required columns rather than scanning entire records. Query performance is further enhanced through improved data compression, as similar values within a column are stored more efficiently, reducing storage costs. Additionally, automatic indexing, partitioning, and clustering are provided by BigQuery, eliminating the need for manual indexing and optimizing query execution. By utilizing columnar storage, faster aggregations, filtering, and analytical queries are ensured, making it well-suited for business intelligence and decision-making processes.


# 5. Business Questions
## Identifies the top 10 most booked flight routes (origin to destination) among frequent flyers.
![Q1](https://github.com/user-attachments/assets/b05731d8-9695-46c7-a60e-6ccb3a7bdf05)

## Analyzes how different tiers of frequent flyers (Gold, Platinum, etc.) book flights by fare class (Economy, Business, First Class).
![Q2](https://github.com/user-attachments/assets/48d67bd9-6cdf-4048-925c-978bdec10c69)

## Tracks frequent flyers' total flights and overnight stays.
![Q3](https://github.com/user-attachments/assets/37401123-15eb-49dc-8311-adeb86902e5d)

## moving_avg for unearned reveanue
![Q4](https://github.com/user-attachments/assets/3cdad6fc-b518-4937-8e4c-e2dc4d12358f)

## passenger demographics by age
![Q5](https://github.com/user-attachments/assets/c9fa1b3d-0483-44e6-8903-f70735a43f1d)

## unearned revenue per channel
![Q6](https://github.com/user-attachments/assets/9017c1cf-372e-427d-860b-5432eec619cf)

## What is the average passenger satisfaction score for each interaction type?
![Q7](https://github.com/user-attachments/assets/bf372fdc-b5a1-4f1f-bb0b-d66b23b12819)

