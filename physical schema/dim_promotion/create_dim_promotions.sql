CREATE TABLE DWH_Project.dim_promotions (
    promotion_id INT64,
    promotion_key INT64,
    promotion_type STRING,
    promotion_target_segment STRING,
    promotion_channel STRING,
    promotion_start_date DATE,
    promotion_end_date DATE,
    is_current STRING(1),
    discount NUMERIC(10,2)
);
