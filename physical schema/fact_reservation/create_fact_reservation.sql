CREATE TABLE fact_reservation (
    Reservation_Key         NUMBER(10),
    ticket_id               NUMBER(10),
    channel_key             NUMBER(10),
    promotion_key           NUMBER(10),
    passenger_key           NUMBER(10),
    fare_basis_key          NUMBER(10),
    aircraft_key            NUMBER(10),
    source_airport          NUMBER(10),
    destination_airport     NUMBER(10),
    
    reservation_date_key    NUMBER(8),  
    departure_date_key      NUMBER(8),   
    departure_time          TIMESTAMP,    
    Reservation_timestamp   TIMESTAMP,    
    
    payment_method          VARCHAR2(50),
    seat_no                 VARCHAR2(10),
    
    Promotion_Amount        NUMBER(10,2),
    tax_amount              NUMBER(10,2) ,
    Operational_Fees        NUMBER(10,2) ,
    Cancelation_Fees        NUMBER(10,2) ,
    Fare_Price              NUMBER(10,2),
    Final_Price             NUMBER(10,2),  
    Is_Cancelled            NUMBER(1)    
);
