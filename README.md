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

## KPIs

### todo

## Quries

### todo
