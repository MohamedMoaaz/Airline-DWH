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




🔹 Fact Table Name: fact_flight
🔹 Granularity: The granularity of this fact table is a single ticketed flight transaction for a specific passenger. Each row represents a unique instance of a passenger traveling on a particular flight, including details such as fare paid, fees, and revenue. This ensures that the data is captured at the most detailed level for analysis.
🔹 Measures:
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


##KPIs

##todo

##quries

###todo



