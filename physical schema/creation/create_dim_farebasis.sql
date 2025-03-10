CREATE TABLE dim_farebasis (
    farebasis_key NUMBER, 
    farebasis_code VARCHAR2(50) ,
    farebasis_class VARCHAR2(50),
    farebasis_type VARCHAR2(50),
    advance_purchase_required CHAR(1),
    advance_purchase_days NUMBER,
    farebasis_is_restricted CHAR(1),
    farebasis_restrictions VARCHAR2(500),
    farebasis_change_penalty NUMBER(10, 2),
    farebasis_cancellation_penalty NUMBER(10, 2)
);


