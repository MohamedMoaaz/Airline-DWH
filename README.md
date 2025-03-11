# Airline-DWH

## Fact Table: Flight Revenue

| Attribute             | Description                                      | Reference Dimension |
|----------------------|--------------------------------------------------|----------------------|
| PassangerKey        | Unique identifier for the passenger              | Passenger Dimension |
| PassangerProfileKey | Profile details of the passenger                 | Passenger Dimension |
| AIrcraftKey         | Aircraft identifier                               | Aircraft Dimension  |
| FareBasisKey        | Fare classification                              | Fare Dimension      |
| CrewKey            | Identifier for the crew                           | Crew Dimension      |
| OriginAirportKey    | Code of the departure airport                    | Airport Dimension   |
| DestinationAirportKey | Code of the arrival airport                    | Airport Dimension   |
| DepartureDateKey    | Date of departure                                | Date Dimension      |
| ArrivalDateKey      | Date of arrival                                  | Date Dimension      |
| TicketNumber       | Unique ticket number                              | -                   |
| FarePaid           | Cost of the ticket                                | -                   |
| OvernightStays     | Number of overnight stays                        | -                   |
| Revenue           | Total revenue from the flight                     | -                   |
| LuggageFees       | Fees collected for luggage                        | -                   |
| UpgradeFees       | Fees for seat upgrades                            | -                   |
| ServicesFees      | Additional service fees                           | -                   |
| DepartureTime     | Time of flight departure                          | -                   |
| ArrivalTime       | Time of flight arrival                            | -                   |

This fact table references dimensions from `Passenger`, `Aircraft`, `Fare`, `Crew`, `Airport`, and `Date` attributes to provide a comprehensive dataset for flight revenue analysis.




### Fact Table Name: fact_flight
### Granularity: The granularity of this fact table is a single ticketed flight transaction for a specific passenger. Each row represents a unique instance of a passenger traveling on a particular flight, including details such as fare paid, fees, and revenue. This ensures that the data is captured at the most detailed level for analysis.
### Measures:
![fact_Flight](https://github.com/user-attachments/assets/783a2591-4200-42f2-a884-e376f7556cfd)



| Metric          | Definition & Calculation |
|----------------|------------------------|
| **OvernightStays** | Calculated by comparing `DepartureDateKey` and `ArrivalDateKey`. If the flight crosses midnight, an overnight stay is counted. |
| **FarePaid** | The base price paid by the passenger for the ticket, determined by `FareBasisKey`. |
| **LuggageFees** | Determined by airline pricing policies, based on baggage weight and count. |
| **UpgradeFees** | Charged if a passenger upgrades to a higher seating class. |
| **ServicesFees** | Includes optional services like in-flight meals, internet, and entertainment. |
| **Revenue** | Sum of `FarePaid`, `LuggageFees`, `UpgradeFees`, and `ServicesFees` for a single ticket. |

# Fact Table: `fact_reservation`

## Description  
The `fact_reservation` table stores transactional data related to flight reservations, including pricing, fees, and promotions. This table provides insights into reservation trends, revenue calculations, and passenger booking behavior.

### Granularity:  
The granularity of this fact table is a **single reservation transaction** for a specific passenger. Each row represents a unique reservation, including details such as ticket pricing, applied fees, and promotions. This ensures that the data is captured at the most detailed level for analysis.

![Fact_Reservation](https://github.com/user-attachments/assets/20c1ed10-4b34-4dc5-871c-fa42fb3d38dc)

## Columns  

### Foreign Keys (Dimensional References)  
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

### Date and Time Attributes  
These attributes provide insights into reservation and flight schedules.  

| Column Name              | Data Type      | Description                                          | Reference Dimension |
|--------------------------|---------------|------------------------------------------------------|----------------------|
| `reservation_date_key`   | NUMBER(8)     | Date when the reservation was made.                 | `dim_date` |
| `departure_date_key`     | NUMBER(8)     | Scheduled departure date of the flight.             | `dim_date` |
| `departure_time`         | TIMESTAMP     | Exact departure time of the flight.                 | - |
| `Reservation_timestamp`  | TIMESTAMP     | Timestamp when the reservation was created.         | - |

### Reservation Details  

| Column Name              | Data Type      | Description                                          |
|--------------------------|---------------|------------------------------------------------------|
| `payment_method`         | VARCHAR2(50)  | Payment method used for the reservation.            |
| `seat_no`               | VARCHAR2(10)  | Seat assigned to the passenger.                     |
| `Is_Cancelled`          | NUMBER(1)     | Indicates if the reservation was canceled (0 = No, 1 = Yes). |

## Measures & Calculations  

These numeric attributes are used for financial analysis and revenue tracking.  

| Column Name          | Data Type      | Description                                              | Calculation |
|----------------------|---------------|----------------------------------------------------------|-------------|
| `Promotion_Amount`  | NUMBER(10,2)  | Discount applied to the reservation.                    | - |
| `tax_amount`        | NUMBER(10,2)  | Tax amount added to the ticket price.                   | - |
| `Operational_Fees`  | NUMBER(10,2)  | Additional fees for operations (e.g., service fees).    | - |
| `Cancelation_Fees`  | NUMBER(10,2)  | Fees applied if the reservation is canceled.            | - |
| `Fare_Price`        | NUMBER(10,2)  | Base fare price of the ticket.                          | - |
| `Final_Price`       | NUMBER(10,2)  | Total price paid by the passenger.                      | `Fare_Price + Operational_Fees + tax_amount + Cancelation_Fees - Promotion_Amount` |

## Usage  
- Supports revenue analysis and pricing optimization.  
- Helps in understanding passenger booking patterns and channel preferences.  
- Tracks the impact of promotions and cancellation fees on overall revenue.  
- Provides insights into reservation trends and seat allocation efficiency.  

## Dimension Table Documentation

### Table Name: `dim_employee`

### Description
The `dim_employee` table stores descriptive attributes related to employees, providing context for analytical processing in a star schema.

### Columns

| Column Name          | Data Type       | Description                                      |
|----------------------|----------------|--------------------------------------------------|
| `EmployeeKey`       | INT (PK)        | Unique identifier for each employee record.      |
| `EmployeeID`        | VARCHAR(50)     | Unique employee identifier.                      |
| `EmployeeFirstName` | VARCHAR(100)    | First name of the employee.                      |
| `EmployeeLastName`  | VARCHAR(100)    | Last name of the employee.                       |
| `EmployeeEmail`     | VARCHAR(255)    | Official email address of the employee.          |
| `EmployeePhoneNumber` | VARCHAR(20)   | Contact phone number of the employee.            |
| `EmployeeJobTitle`  | VARCHAR(100)    | Job title of the employee.                       |
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
| `passenger_national_id`    | VARCHAR2(50)  | National identification number of the passenger.              |
| `passenger_passport_id`    | VARCHAR2(50)  | Passport number of the passenger (if applicable).             |
| `passenger_firstname`      | VARCHAR2(100) | First name of the passenger.                                  |
| `passenger_lastname`       | VARCHAR2(100) | Last name of the passenger.                                   |
| `passenger_dob`            | DATE          | Date of birth of the passenger.                              |
| `passenger_city`           | VARCHAR2(100) | City of residence of the passenger.                          |
| `passenger_nationality`    | VARCHAR2(100) | Nationality of the passenger.                                |
| `passenger_country`        | VARCHAR2(100) | Country of residence of the passenger.                       |
| `passenger_email`          | VARCHAR2(100) | Contact email of the passenger.                              |
| `passenger_phoneno`        | VARCHAR2(20)  | Contact phone number of the passenger.                       |
| `passenger_gender`         | VARCHAR2(10)  | Gender of the passenger (e.g., Male, Female).         |
| `passenger_language`       | VARCHAR2(50)  | Preferred language of the passenger.                         |
| `passenger_marital_status` | VARCHAR2(20)  | Marital status of the passenger (e.g., Single, Married).     |

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
| `frequent_flyer_tier`     | VARCHAR2(50)  | Loyalty program tier of the passenger (e.g., Silver, Gold).  |
| `home_airport`            | VARCHAR2(100) | Primary airport of the passenger.                            |
| `lifetime_mileage_tier`   | VARCHAR2(50)  | Tier based on the total miles flown by the passenger.        |
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
| `frequent_flyer_tier`    | VARCHAR2(50)  | Loyalty program tier at the given time (e.g., Silver, Gold).      |
| `home_airport`           | VARCHAR2(100) | Home airport of the passenger at the given time.                 |
| `lifetime_mileage_tier`  | VARCHAR2(50)  | Mileage tier of the passenger during the recorded period.        |
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
| `airport_name`          | VARCHAR2(100) | Name of the airport.                                          |
| `airport_code`          | VARCHAR2(10)  | Unique airport code (IATA/ICAO).                              |
| `airport_city`          | VARCHAR2(100) | City where the airport is located.                           |
| `airport_country`       | VARCHAR2(100) | Country where the airport is located.                        |
| `airport_region`        | VARCHAR2(100) | Geographic region of the airport.                            |
| `airport_type`          | VARCHAR2(50)  | Type of airport (e.g., International, Domestic, Regional).   |
| `airport_latitude`      | NUMBER        | Latitude coordinate of the airport.                          |
| `airport_longitude`     | NUMBER        | Longitude coordinate of the airport.                         |
| `airport_hub_status`    | VARCHAR2(20)  | Indicates if the airport is a major hub (e.g., Hub, Non-Hub). |
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
| `aircraft_model`          | VARCHAR(50)   | Model name of the aircraft.                                      |
| `aircraft_manufacturer`   | VARCHAR(50)   | Manufacturer of the aircraft (e.g., Boeing, Airbus).             |
| `aircraft_capacity`       | INT           | Total seating capacity of the aircraft.                         |
| `aircraft_enginetype`     | VARCHAR(50)   | Type of engine used in the aircraft.                            |
| `aircraft_status`         | VARCHAR(20)   | Current operational status (e.g., Active, Maintenance, Retired). |
| `economy_seats_range`     | VARCHAR(20)   | Range of available economy class seats.                         |
| `business_seats_range`    | VARCHAR(20)   | Range of available business class seats.                        |
| `firstclass_seats_range`  | VARCHAR(20)   | Range of available first-class seats.                           |
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
| `DayName`   | VARCHAR(30)    | Name of the day (e.g., Monday, Tuesday).       |
| `monthName` | VARCHAR(30)    | Name of the month (e.g., January, February).   |
| `yearNo`    | NUMBER(7)      | Year value (e.g., 2024).                       |
| `season`    | VARCHAR(30)    | Season classification (e.g., Winter, Summer).  |
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
| `channel_name` | VARCHAR(50)  | Name of the channel (e.g., Website, Mobile App, Agent). |
| `channel_type` | VARCHAR(50)  | Category of the channel (e.g., Online, Offline). |

### Usage  
- Supports tracking of booking sources for sales analysis.  
- Helps in understanding customer behavior and channel effectiveness.  
- Used in fact tables to associate transactions with booking channels.  

## KPIs

### todo

## Quries

### todo
