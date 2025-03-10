-- Passenger 1 (USA)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (1, 'P001', '123-45-6789', 'C12345678', 'John', 'Doe', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 'New York', 'American', 'USA', 'john.doe@example.com', '1234567890', 'Male', 'English', 'Single', TO_DATE('2020-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1);

-- Passenger 2 (UK)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (2, 'P002', 'AB123456C', 'GB1234567', 'Jane', 'Smith', TO_DATE('1990-08-22', 'YYYY-MM-DD'), 'London', 'British', 'UK', 'jane.smith@example.com', '2345678901', 'Female', 'English', 'Married', TO_DATE('2019-03-15', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'), 1);

-- Passenger 3 (Canada)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (3, 'P003', '123456789', 'CA1234567', 'Michael', 'Johnson', TO_DATE('1978-12-10', 'YYYY-MM-DD'), 'Toronto', 'Canadian', 'Canada', 'michael.johnson@example.com', '3456789012', 'Male', 'English', 'Divorced', TO_DATE('2021-07-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 1);

-- Passenger 4 (Australia)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (4, 'P004', '123456789', 'PA1234567', 'Emily', 'Brown', TO_DATE('1995-03-25', 'YYYY-MM-DD'), 'Sydney', 'Australian', 'Australia', 'emily.brown@example.com', '4567890123', 'Female', 'English', 'Single', TO_DATE('2022-02-14', 'YYYY-MM-DD'), TO_DATE('2026-11-30', 'YYYY-MM-DD'), 1);

-- Passenger 5 (Germany)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (5, 'P005', '12345678901', 'D12345678', 'David', 'Wilson', TO_DATE('1982-07-19', 'YYYY-MM-DD'), 'Berlin', 'German', 'Germany', 'david.wilson@example.com', '5678901234', 'Male', 'German', 'Married', TO_DATE('2020-09-01', 'YYYY-MM-DD'), TO_DATE('2024-08-31', 'YYYY-MM-DD'), 1);

-- Passenger 6 (France)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (6, 'P006', '123456789012', '10AB12345', 'Sarah', 'Taylor', TO_DATE('1989-11-30', 'YYYY-MM-DD'), 'Paris', 'French', 'France', 'sarah.taylor@example.com', '6789012345', 'Female', 'French', 'Single', TO_DATE('2021-04-01', 'YYYY-MM-DD'), TO_DATE('2025-03-31', 'YYYY-MM-DD'), 1);

-- Passenger 7 (Japan)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (7, 'P007', '1234567890123', 'TR1234567', 'Tanaka', 'Togomori', TO_DATE('1975-06-12', 'YYYY-MM-DD'), 'Tokyo', 'Japanese', 'Japan', 'james.anderson@example.com', '7890123456', 'Male', 'Japanese', 'Married', TO_DATE('2018-05-01', 'YYYY-MM-DD'), TO_DATE('2023-10-31', 'YYYY-MM-DD'), 1);

-- Passenger 8 (Spain)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (8, 'P008', 'X1234567X', 'P12345678', 'Linda', 'Martinez', TO_DATE('1992-02-14', 'YYYY-MM-DD'), 'Madrid', 'Spanish', 'Spain', 'linda.martinez@example.com', '8901234567', 'Female', 'Spanish', 'Single', TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'), 1);

-- Passenger 9 (Mexico)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (9, 'P009', 'ABCD123456EFGH78', 'M12345678', 'Robert', 'Garcia', TO_DATE('1980-09-05', 'YYYY-MM-DD'), 'Mexico City', 'Mexican', 'Mexico', 'robert.garcia@example.com', '9012345678', 'Male', 'Spanish', 'Married', TO_DATE('2019-11-01', 'YYYY-MM-DD'), TO_DATE('2024-10-31', 'YYYY-MM-DD'), 1);

-- Passenger 10 (Argentina)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (10, 'P010', '12345678', 'A12345678', 'Maria', 'Lopez', TO_DATE('1998-04-18', 'YYYY-MM-DD'), 'Buenos Aires', 'Argentinian', 'Argentina', 'maria.lopez@example.com', '0123456789', 'Female', 'Spanish', 'Single', TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2027-02-28', 'YYYY-MM-DD'), 1);

-- Passenger 11 (Brazil)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (11, 'P011', '12345678909', 'B12345678', 'William', 'Hernandez', TO_DATE('1987-10-23', 'YYYY-MM-DD'), 'Sao Paulo', 'Brazilian', 'Brazil', 'william.hernandez@example.com', '1234509876', 'Male', 'Portuguese', 'Single', TO_DATE('2020-12-01', 'YYYY-MM-DD'), TO_DATE('2025-11-30', 'YYYY-MM-DD'), 1);

-- Passenger 12 (Peru)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (12, 'P012', '12345678', 'PE1234567', 'Elizabeth', 'Gonzalez', TO_DATE('1993-07-07', 'YYYY-MM-DD'), 'Lima', 'Peruvian', 'Peru', 'elizabeth.gonzalez@example.com', '2345610987', 'Female', 'Spanish', 'Married', TO_DATE('2021-08-01', 'YYYY-MM-DD'), TO_DATE('2026-07-31', 'YYYY-MM-DD'), 1);

-- Passenger 13 (Colombia)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (13, 'P013', '1234567890', 'CO1234567', 'Daniel', 'Perez', TO_DATE('1984-01-30', 'YYYY-MM-DD'), 'Bogota', 'Colombian', 'Colombia', 'daniel.perez@example.com', '3456721098', 'Male', 'Spanish', 'Divorced', TO_DATE('2019-06-01', 'YYYY-MM-DD'), TO_DATE('2024-05-31', 'YYYY-MM-DD'), 1);

-- Passenger 14 (Chile)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (14, 'P014', '12345678-9', 'CH1234567', 'Jessica', 'Rodriguez', TO_DATE('1996-09-12', 'YYYY-MM-DD'), 'Santiago', 'Chilean', 'Chile', 'jessica.rodriguez@example.com', '4567832109', 'Female', 'Spanish', 'Single', TO_DATE('2022-05-01', 'YYYY-MM-DD'), TO_DATE('2027-04-30', 'YYYY-MM-DD'), 1);

-- Passenger 15 (South Korea)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status, start_date, end_date, is_current)
VALUES (15, 'P015', '123456-1234567', 'M12345678', 'Yeonjun', 'Lee', TO_DATE('1981-03-20', 'YYYY-MM-DD'), 'Seoul', 'South Korean', 'South Korea', 'christopher.lee@example.com', '5678943210', 'Male', 'Korean', 'Married', TO_DATE('2020-10-01', 'YYYY-MM-DD'), TO_DATE('2025-09-30', 'YYYY-MM-DD'), 1);
