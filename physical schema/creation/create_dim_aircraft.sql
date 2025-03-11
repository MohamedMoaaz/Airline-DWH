CREATE TABLE dim_aircraft (
    aircraft_key INT,
    aircraft_model VARCHAR(50),
    aircraft_manufacturer VARCHAR(50),
    aircraft_capacity INT,
    aircraft_enginetype VARCHAR(50),
    aircraft_status VARCHAR(20),
    economy_seats_range VARCHAR(20),
    business_seats_range VARCHAR(20),
    firstclass_seats_range VARCHAR(20),
    max_miles INT,
    max_speed INT
);


INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (1, 'A320', 'Airbus', 180, 'Turbofan', 'Active', '150-180', '10-15', '5-10', 3300, 500);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (2, 'B737', 'Boeing', 160, 'Turbofan', 'Active', '140-160', '10-12', '5-8', 3000, 560);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (3, 'A380', 'Airbus', 555, 'Turbofan', 'Active', '450-500', '50-60', '30-40', 8500, 600);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (4, 'B787', 'Boeing', 242, 'Turbofan', 'Active', '220-240', '15-20', '10-15', 8200, 590);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (5, 'B767', 'Boeing', 214, 'Turbofan', 'Inactive', '180-210', '15-20', '10-15', 6500, 560);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (6, 'A330', 'Airbus', 277, 'Turbofan', 'Active', '240-270', '20-30', '10-15', 7500, 590);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (7, 'B777', 'Boeing', 396, 'Turbofan', 'Active', '350-380', '30-40', '10-20', 9000, 590);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (8, 'Embraer E175', 'Embraer', 88, 'Turbofan', 'Active', '70-85', '10-12', '5-10', 2300, 470);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (9, 'Bombardier CRJ900', 'Bombardier', 90, 'Turbofan', 'Active', '80-90', '10-12', '5-8', 2700, 470);

INSERT INTO dim_aircraft (aircraft_key, aircraft_model, aircraft_manufacturer, aircraft_capacity, aircraft_enginetype, aircraft_status, economy_seats_range, business_seats_range, firstclass_seats_range, max_miles, max_speed)
VALUES (10, 'A350', 'Airbus', 350, 'Turbofan', 'Active', '300-330', '20-30', '15-20', 8500, 590);

