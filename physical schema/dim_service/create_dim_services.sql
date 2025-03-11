CREATE TABLE dim_services (
    service_id INT,
    service_key INT,
    service_type VARCHAR2(255),
    service_category VARCHAR2(255),
    service_cost NUMBER(10, 2),
    service_location VARCHAR2(255),
    start_date DATE,
    end_date DATE
);
