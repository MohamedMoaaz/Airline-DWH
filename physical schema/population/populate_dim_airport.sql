-- Airport 1 (JFK International Airport, USA)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (1, 'JFK001', 'John F. Kennedy International Airport', 'JFK', 'New York', 'USA', 'North America', 'International', 40.6413, -73.7781, 'Major', 4, 6);

-- Airport 2 (Heathrow Airport, UK)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (2, 'LHR002', 'Heathrow Airport', 'LHR', 'London', 'UK', 'Europe', 'International', 51.4700, -0.4543, 'Major', 2, 5);

-- Airport 3 (Toronto Pearson International Airport, Canada)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (3, 'YYZ003', 'Toronto Pearson International Airport', 'YYZ', 'Toronto', 'Canada', 'North America', 'International', 43.6777, -79.6248, 'Major', 5, 3);

-- Airport 4 (Sydney Kingsford Smith Airport, Australia)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (4, 'SYD004', 'Sydney Kingsford Smith Airport', 'SYD', 'Sydney', 'Australia', 'Oceania', 'International', -33.9461, 151.1772, 'Major', 3, 3);

-- Airport 5 (Frankfurt Airport, Germany)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (5, 'FRA005', 'Frankfurt Airport', 'FRA', 'Frankfurt', 'Germany', 'Europe', 'International', 50.0379, 8.5622, 'Major', 4, 2);

-- Airport 6 (Charles de Gaulle Airport, France)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (6, 'CDG006', 'Charles de Gaulle Airport', 'CDG', 'Paris', 'France', 'Europe', 'International', 49.0097, 2.5479, 'Major', 4, 3);

-- Airport 7 (Narita International Airport, Japan)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (7, 'NRT007', 'Narita International Airport', 'NRT', 'Tokyo', 'Japan', 'Asia', 'International', 35.7647, 140.3863, 'Major', 2, 3);

-- Airport 8 (Dubai International Airport, UAE)
INSERT INTO dim_airport (airport_key, airport_id, airport_name, airport_code, airport_city, airport_country, airport_region, airport_type, airport_latitude, airport_longitude, airport_hub_status, airport_no_of_runways, airport_no_of_terminals)
VALUES (8, 'DXB008', 'Dubai International Airport', 'DXB', 'Dubai', 'UAE', 'Middle East', 'International', 25.2532, 55.3657, 'Major', 2, 3);
