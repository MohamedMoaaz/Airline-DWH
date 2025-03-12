CREATE TABLE DWH_Project.dim_farebasis (
    farebasis_key INT64, 
    farebasis_code STRING,
    farebasis_class STRING,
    farebasis_type STRING,
    advance_purchase_required STRING(1),
    advance_purchase_days INT64,
    farebasis_is_restricted STRING(1),
    farebasis_restrictions STRING,
    farebasis_change_penalty NUMERIC(10,2),
    farebasis_cancellation_penalty NUMERIC(10,2)
);
