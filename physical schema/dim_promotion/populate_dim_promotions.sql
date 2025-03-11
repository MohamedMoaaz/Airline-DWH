INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (101, 1, 'Discount', 'Frequent Flyers', 'Email', TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-03-31', 'YYYY-MM-DD'), 'Y', 15.00);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (102, 2, 'Cashback', 'New Customers', 'Website', TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'), 'Y', 10.00);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (103, 3, 'Bonus Miles', 'Loyal Customers', 'Mobile App', TO_DATE('2025-01-10', 'YYYY-MM-DD'), TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'Y', 0);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (104, 4, 'Discount', 'All Customers', 'SMS', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'Y', 20.00);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (105, 5, 'Upgrade Offer', 'Gold Members', 'Email', TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-28', 'YYYY-MM-DD'), 'N', 0);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (106, 6, 'Flash Sale', 'All Customers', 'Website', TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-11', 'YYYY-MM-DD'), 'Y', 50.00);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (107, 7, 'Bonus Miles', 'Business Travelers', 'Mobile App', TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'Y', 0);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (108, 8, 'Student Discount', 'Students', 'Website', TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 'Y', 25.00);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (109, 9, 'Senior Citizen Offer', 'Senior Citizens', 'Call Center', TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-02-31', 'YYYY-MM-DD'), 'N', 30.00);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (110, 10, 'Family Offer', 'Families', 'Email', TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'Y', 18.00);

INSERT INTO dim_promotions (promotion_id, promotion_key, promotion_type, promotion_target_segment, promotion_channel, promotion_start_date, promotion_end_date, is_current, discount) 
VALUES (0, 0, 'No Promotion', 'None', 'None', TO_DATE('1900-01-01', 'YYYY-MM-DD'), TO_DATE('1900-01-01', 'YYYY-MM-DD'), 'N', 0.00);
