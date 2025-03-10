CREATE TABLE dim_airport (
    airport_key NUMBER,
    airport_id VARCHAR2(50),
    airport_name VARCHAR2(100),
    airport_code VARCHAR2(10),
    airport_city VARCHAR2(100),
    airport_country VARCHAR2(100),
    airport_region VARCHAR2(100),
    airport_type VARCHAR2(50),
    airport_latitude NUMBER,
    airport_longitude NUMBER,
    airport_hub_status VARCHAR2(20),
    airport_no_of_runways NUMBER,
    airport_no_of_terminals NUMBER
);
