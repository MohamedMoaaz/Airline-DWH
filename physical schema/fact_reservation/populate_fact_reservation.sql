-- Insert 1:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    1, 1001, 1, 1, 1,
    1, 1, 1, 2,
    20250310, 20250315,
    TO_TIMESTAMP('2025-03-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '12A',
    15.00, 50.00, 25.00, 0.00,
    460.00, 520.00, 0
);

-- Insert 2:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    2, 1002, 2, 2, 2,
    5, 2, 3, 4,
    20250311, 20250320,
    TO_TIMESTAMP('2025-03-20 14:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-11 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'PayPal', '2B',
    10.00, 80.00, 30.00, 0.00,
    880.00, 980.00, 0
);

-- Insert 3:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    3, 1003, 3, 0, 3,
    10, 3, 5, 6,
    20250312, 20250325,
    TO_TIMESTAMP('2025-03-25 06:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-12 08:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '45C',
    0.00, 60.00, 20.00, 150.00,
    620.00, 850.00, 1
);

-- Insert 4:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    4, 1004, 4, 4, 4,
    8, 10, 7, 8,
    20250313, 20250322,
    TO_TIMESTAMP('2025-03-22 09:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-13 10:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '1F',
    20.00, 90.00, 40.00, 0.00,
    1040.00, 1150.00, 0
);

-- Insert 5:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    5, 1005, 6, 8, 5,
    6, 6, 6, 1,
    20250314, 20250328,
    TO_TIMESTAMP('2025-03-28 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-14 11:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '22C',
    25.00, 55.00, 35.00, 0.00,
    585.00, 650.00, 0
);

-- Insert 6:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    6, 1006, 7, 0, 6,
    7, 7, 2, 3,
    20250315, 20250330,
    TO_TIMESTAMP('2025-03-30 12:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-15 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '3D',
    0.00, 70.00, 50.00, 100.00,
    800.00, 1020.00, 1
);

-- Insert 7:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    7, 1007, 8, 5, 7,
    2, 2, 2, 5,
    20250316, 20250331,
    TO_TIMESTAMP('2025-03-31 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-16 13:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '14B',
    0.00, 65.00, 30.00, 0.00,
    703.00, 798.00, 0
);

-- Insert 8:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    8, 1008, 9, 9, 8,
    3, 8, 4, 7,
    20250317, 20250401,
    TO_TIMESTAMP('2025-04-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-17 08:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '7C',
    30.00, 40.00, 20.00, 0.00,
    482.00, 512.00, 0
);

-- Insert 9:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    9, 1009, 5, 10, 9,
    17, 9, 7, 4,
    20250318, 20250402,
    TO_TIMESTAMP('2025-04-02 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-18 14:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Cash', '10D',
    18.00, 70.00, 30.00, 0.00,
    600.00, 682.00, 0
);

-- Insert 10:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    10, 1010, 10, 0, 10,
    20, 10, 8, 2,
    20250319, 20250403,
    TO_TIMESTAMP('2025-04-03 13:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-19 16:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '5A',
    0.00, 80.00, 40.00, 0.00,
    750.00, 870.00, 0
);

-- Insert 11:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    11, 1011, 1, 6, 11,
    6, 6, 4, 7,
    20250320, 20250404,
    TO_TIMESTAMP('2025-04-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-20 10:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'PayPal', '8C',
    50.00, 50.00, 20.00, 0.00,
    400.00, 420.00, 0
);

-- Insert 12:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    12, 1012, 2, 3, 12,
    3, 3, 5, 6,
    20250321, 20250405,
    TO_TIMESTAMP('2025-04-05 17:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-21 12:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '12B',
    0.00, 60.00, 25.00, 0.00,
    550.00, 635.00, 0
);

-- Insert 13:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    13, 1013, 3, 8, 13,
    12, 8, 6, 1,
    20250322, 20250406,
    TO_TIMESTAMP('2025-04-06 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-22 09:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '15A',
    25.00, 75.00, 35.00, 0.00,
    700.00, 785.00, 0
);

-- Insert 14:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    14, 1014, 4, 4, 14,
    14, 4, 2, 3,
    20250323, 20250407,
    TO_TIMESTAMP('2025-04-07 07:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-23 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '9D',
    20.00, 90.00, 50.00, 0.00,
    900.00, 1020.00, 0
);

-- Insert 15:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    15, 1015, 6, 9, 15,
    15, 5, 3, 4,
    20250324, 20250408,
    TO_TIMESTAMP('2025-04-08 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-24 13:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'PayPal', '20F',
    30.00, 100.00, 60.00, 0.00,
    1200.00, 1330.00, 0
);

-- Insert 16:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    16, 1016, 1, 1, 1,
    1, 1, 1, 2,
    20250325, 20250409,
    TO_TIMESTAMP('2025-04-09 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-25 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '14A',
    15.00, 50.00, 25.00, 0.00,
    500.00, 560.00, 0
);

-- Insert 17:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    17, 1017, 2, 2, 2,
    5, 2, 3, 4,
    20250326, 20250410,
    TO_TIMESTAMP('2025-04-10 14:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-26 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'PayPal', '3B',
    10.00, 80.00, 30.00, 0.00,
    900.00, 1000.00, 0
);

-- Insert 18:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    18, 1018, 3, 0, 3,
    10, 3, 5, 6,
    20250327, 20250411,
    TO_TIMESTAMP('2025-04-11 06:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-27 08:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '46C',
    0.00, 60.00, 20.00, 150.00,
    650.00, 880.00, 1
);

-- Insert 19:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    19, 1019, 4, 4, 4,
    8, 10, 7, 8,
    20250328, 20250412,
    TO_TIMESTAMP('2025-04-12 09:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-28 10:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '2F',
    20.00, 90.00, 40.00, 0.00,
    1100.00, 1210.00, 0
);

-- Insert 20:
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    20, 1020, 6, 8, 5,
    6, 6, 6, 1,
    20250329, 20250413,
    TO_TIMESTAMP('2025-04-13 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-29 11:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '23C',
    25.00, 55.00, 35.00, 0.00,
    600.00, 665.00, 0
);
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    21, 1021, 7, 0, 6,
    7, 7, 2, 3,
    20250330, 20250414,
    TO_TIMESTAMP('2025-04-14 12:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-30 12:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '4D',
    0.00, 70.00, 50.00, 100.00,
    800.00, 1020.00, 1
);
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    22, 1022, 8, 5, 7,
    2, 2, 2, 5,
    20250331, 20250415,
    TO_TIMESTAMP('2025-04-15 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-03-31 13:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '15B',
    0.00, 65.00, 30.00, 0.00,
    703.00, 798.00, 0
);
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    23, 1023, 9, 9, 8,
    3, 8, 4, 7,
    20250401, 20250416,
    TO_TIMESTAMP('2025-04-16 08:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '8C',
    30.00, 40.00, 20.00, 0.00,
    482.00, 512.00, 0
);
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    24, 1024, 5, 10, 9,
    17, 9, 7, 4,
    20250402, 20250417,
    TO_TIMESTAMP('2025-04-17 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-02 14:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Cash', '11D',
    18.00, 70.00, 30.00, 0.00,
    600.00, 682.00, 0
);
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    25, 1025, 10, 0, 10,
    20, 10, 8, 2,
    20250403, 20250418,
    TO_TIMESTAMP('2025-04-18 13:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-03 16:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '6A',
    0.00, 80.00, 40.00, 0.00,
    750.00, 870.00, 0
);
INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    26, 1026, 1, 6, 11,
    6, 6, 4, 7,
    20250404, 20250419,
    TO_TIMESTAMP('2025-04-19 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-04 10:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'PayPal', '9C',
    50.00, 50.00, 20.00, 0.00,
    400.00, 420.00, 0
);

INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    27, 1027, 2, 3, 12,
    3, 3, 5, 6,
    20250405, 20250420,
    TO_TIMESTAMP('2025-04-20 17:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-05 12:15:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Debit Card', '13B',
    0.00, 60.00, 25.00, 0.00,
    550.00, 635.00, 0
);

INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    28, 1028, 3, 8, 13,
    12, 8, 6, 1,
    20250406, 20250421,
    TO_TIMESTAMP('2025-04-21 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-06 09:45:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '16A',
    25.00, 75.00, 35.00, 0.00,
    700.00, 785.00, 0
);

INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    29, 1029, 4, 4, 14,
    14, 4, 2, 3,
    20250407, 20250422,
    TO_TIMESTAMP('2025-04-22 07:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-07 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    'Credit Card', '10D',
    20.00, 90.00, 50.00, 0.00,
    900.00, 1020.00, 0
);

INSERT INTO fact_reservation (
    Reservation_Key, ticket_id, channel_key, promotion_key, passenger_key,
    fare_basis_key, aircraft_key, source_airport, destination_airport,
    reservation_date_key, departure_date_key, departure_time, Reservation_timestamp,
    payment_method, seat_no,
    Promotion_Amount, tax_amount, Operational_Fees, Cancelation_Fees,
    Fare_Price, Final_Price, Is_Cancelled
)
VALUES (
    30, 1030, 6, 9, 15,
    15, 5, 3, 4,
    20250408, 20250423,
    TO_TIMESTAMP('2025-04-23 22:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-04-08 13:30:00', 'YYYY-MM-DD HH24:MI:SS'),
    'PayPal', '21F',
    30.00, 100.00, 60.00, 0.00,
    1200.00, 1330.00, 0
);

