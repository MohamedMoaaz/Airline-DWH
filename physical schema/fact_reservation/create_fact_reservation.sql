CREATE TABLE DWH_Project.fact_reservation (
    Reservation_Key         INT64,
    ticket_id               INT64,
    channel_key             INT64,
    promotion_key           INT64,
    passenger_key           INT64,
    fare_basis_key          INT64,
    aircraft_key            INT64,
    source_airport          INT64,
    destination_airport     INT64,

    reservation_date_key    INT64,  
    departure_date_key      INT64,   
    departure_time          TIMESTAMP,    
    Reservation_timestamp   TIMESTAMP,    

    payment_method          STRING,
    seat_no                 STRING,

    Promotion_Amount        NUMERIC(10,2),
    tax_amount              NUMERIC(10,2),
    Operational_Fees        NUMERIC(10,2),
    Cancelation_Fees        NUMERIC(10,2),
    Fare_Price              NUMERIC(10,2),
    Final_Price             NUMERIC(10,2),  
    Is_Cancelled            NUMMERIC(1)
);
