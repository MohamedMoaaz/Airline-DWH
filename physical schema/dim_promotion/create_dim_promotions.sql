CREATE TABLE dim_promotions (
    promotion_id INT,
    promotion_key INT,
    promotion_type VARCHAR2(255),
    promotion_target_segment VARCHAR2(255),
    promotion_channel VARCHAR2(255),
    promotion_start_date DATE,
    promotion_end_date DATE,
     is_current CHAR(1),
    discount NUMBER(10, 2)
);