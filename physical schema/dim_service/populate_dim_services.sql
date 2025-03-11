INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (1, 1, 'In-Flight Meals', 'Passenger Comfort', 20.00, 'Aircraft Cabin', TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (1, 2, 'In-Flight Meals', 'Passenger Comfort', 35.00, 'Aircraft Cabin', TO_DATE('2023-07-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (2, 3, 'Entertainment System', 'Passenger Comfort', 15.00, 'Aircraft Cabin', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (3, 4, 'Wi-Fi Access', 'Passenger Connectivity', 10.00, 'Aircraft Cabin', TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (3, 5, 'Wi-Fi Access', 'Passenger Connectivity', 18.00, 'Aircraft Cabin', TO_DATE('2023-06-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (4, 6, 'Priority Boarding', 'Passenger Convenience', 30.00, 'Boarding Gate', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (5, 7, 'Extra Legroom Seats', 'Passenger Comfort', 50.00, 'Aircraft Cabin', TO_DATE('2021-07-01', 'YYYY-MM-DD'), TO_DATE('2023-04-30', 'YYYY-MM-DD'));

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (5, 8, 'Extra Legroom Seats', 'Passenger Comfort', 75.00, 'Aircraft Cabin', TO_DATE('2023-05-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (6, 9, 'Lounge Access', 'Passenger Comfort', 40.00, 'Airport Lounge', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (7, 10, 'In-Flight Blankets', 'Passenger Comfort', 5.00, 'Aircraft Cabin', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-03-31', 'YYYY-MM-DD'));

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (7, 11, 'In-Flight Blankets', 'Passenger Comfort', 7.00, 'Aircraft Cabin', TO_DATE('2023-04-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (8, 12, 'In-Flight Pillows', 'Passenger Comfort', 3.00, 'Aircraft Cabin', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (9, 13, 'In-Flight Magazines', 'Passenger Comfort', 3.00, 'Aircraft Cabin', TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (10, 14, 'In-Flight Headphones', 'Passenger Comfort', 8.00, 'Aircraft Cabin', TO_DATE('2022-01-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (11, 15, 'Extra Baggage', 'Passenger Convenience', 50.00, 'Check-In Counter', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (11, 16, 'Extra Baggage', 'Passenger Convenience', 60.00, 'Check-In Counter', TO_DATE('2023-07-01', 'YYYY-MM-DD'), NULL);

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (12, 17, 'Seat Upgrade', 'Passenger Comfort', 100.00, 'Boarding Gate', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-03-31', 'YYYY-MM-DD'));

INSERT INTO dim_services (service_key, service_id, service_type, service_category, service_cost, service_location, start_date, end_date)
VALUES (12, 18, 'Seat Upgrade', 'Passenger Comfort', 120.00, 'Boarding Gate', TO_DATE('2023-04-01', 'YYYY-MM-DD'), NULL);
