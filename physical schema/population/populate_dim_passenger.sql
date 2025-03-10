-- Passenger 1 (USA)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (1, 100, '123-45-6789', 'C12345678', 'John', 'Doe', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 'New York', 'American', 'USA', 'john.doe@example.com', '+11234567890', 'Male', 'English', 'Single');

-- Passenger 2 (UK)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (2, 101, 'AB123456C', 'GB1234567', 'Jane', 'Smith', TO_DATE('1990-08-22', 'YYYY-MM-DD'), 'London', 'British', 'UK', 'jane.smith@example.com', '+442345678901', 'Female', 'English', 'Married');

-- Passenger 3 (Canada)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (3, 102, '123456789', 'CA1234567', 'Michael', 'Johnson', TO_DATE('1978-12-10', 'YYYY-MM-DD'), 'Toronto', 'Canadian', 'Canada', 'michael.johnson@example.com', '+13456789012', 'Male', 'English', 'Divorced');

-- Passenger 4 (Australia)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (4, 103, '123456789', 'PA1234567', 'Emily', 'Brown', TO_DATE('1995-03-25', 'YYYY-MM-DD'), 'Sydney', 'Australian', 'Australia', 'emily.brown@example.com', '+614567890123', 'Female', 'English', 'Single');

-- Passenger 5 (Germany)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (5, 104, '12345678901', 'D12345678', 'David', 'Wilson', TO_DATE('1982-07-19', 'YYYY-MM-DD'), 'Berlin', 'German', 'Germany', 'david.wilson@example.com', '+495678901234', 'Male', 'German', 'Married');

-- Passenger 6 (France)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (6, 105, '123456789012', '10AB12345', 'Sarah', 'Taylor', TO_DATE('1989-11-30', 'YYYY-MM-DD'), 'Paris', 'French', 'France', 'sarah.taylor@example.com', '+336789012345', 'Female', 'French', 'Single');

-- Passenger 7 (Japan)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (7, 106, '1234567890123', 'TR1234567', 'Tanaka', 'Togomori', TO_DATE('1975-06-12', 'YYYY-MM-DD'), 'Tokyo', 'Japanese', 'Japan', 'james.anderson@example.com', '+817890123456', 'Male', 'Japanese', 'Married');

-- Passenger 8 (Spain)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (8, 107, 'X1234567X', 'P12345678', 'Linda', 'Martinez', TO_DATE('1992-02-14', 'YYYY-MM-DD'), 'Madrid', 'Spanish', 'Spain', 'linda.martinez@example.com', '+348901234567', 'Female', 'Spanish', 'Single');

-- Passenger 9 (Mexico)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (9, 108, 'ABCD123456EFGH78', 'M12345678', 'Robert', 'Garcia', TO_DATE('1980-09-05', 'YYYY-MM-DD'), 'Mexico City', 'Mexican', 'Mexico', 'robert.garcia@example.com', '+529012345678', 'Male', 'Spanish', 'Married');

-- Passenger 10 (Argentina)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (10, 109, '12345678', 'A12345678', 'Maria', 'Lopez', TO_DATE('1998-04-18', 'YYYY-MM-DD'), 'Buenos Aires', 'Argentinian', 'Argentina', 'maria.lopez@example.com', '+540123456789', 'Female', 'Spanish', 'Single');

-- Passenger 11 (Brazil)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (11, 110, '12345678909', 'B12345678', 'William', 'Hernandez', TO_DATE('1987-10-23', 'YYYY-MM-DD'), 'Sao Paulo', 'Brazilian', 'Brazil', 'william.hernandez@example.com', '+551234509876', 'Male', 'Portuguese', 'Single');

-- Passenger 12 (Peru)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (12, 111, '12345678', 'PE1234567', 'Elizabeth', 'Gonzalez', TO_DATE('1993-07-07', 'YYYY-MM-DD'), 'Lima', 'Peruvian', 'Peru', 'elizabeth.gonzalez@example.com', '+512345610987', 'Female', 'Spanish', 'Married');

-- Passenger 13 (Colombia)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (13, 112, '1234567890', 'CO1234567', 'Daniel', 'Perez', TO_DATE('1984-01-30', 'YYYY-MM-DD'), 'Bogota', 'Colombian', 'Colombia', 'daniel.perez@example.com', '+573456721098', 'Male', 'Spanish', 'Divorced');

-- Passenger 14 (Chile)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (14, 113, '12345678-9', 'CH1234567', 'Jessica', 'Rodriguez', TO_DATE('1996-09-12', 'YYYY-MM-DD'), 'Santiago', 'Chilean', 'Chile', 'jessica.rodriguez@example.com', '+564567832109', 'Female', 'Spanish', 'Single');

-- Passenger 15 (South Korea)
INSERT INTO dim_passenger (passenger_key, passenger_id, passenger_national_id, passenger_passport_id, passenger_firstname, passenger_lastname, passenger_dob, passenger_city, passenger_nationality, passenger_country, passenger_email, passenger_phoneno, passenger_gender, passenger_language, passenger_marital_status)
VALUES (15, 114, '123456-1234567', 'M12345678', 'Yeonjun', 'Lee', TO_DATE('1981-03-20', 'YYYY-MM-DD'), 'Seoul', 'South Korean', 'South Korea', 'christopher.lee@example.com', '+825678943210', 'Male', 'Korean', 'Married');
