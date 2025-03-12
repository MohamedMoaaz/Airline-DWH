CREATE TABLE DWH_Project.dim_services (
    service_key INT64,
    service_id INT64,
    service_type STRING(255),
    service_category STRING(255),
    service_cost NUMERIC(10, 2),
    service_location STRING(255),
    start_date DATE,
    end_date DATE
);
