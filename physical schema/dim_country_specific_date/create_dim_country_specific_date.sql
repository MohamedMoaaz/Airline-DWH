CREATE TABLE dim_country_specific_date (
    date_key NUMBER,
    country_key NUMBER,
    country_name VARCHAR2(100),
    civil_name VARCHAR2(100),
    civil_holiday_flag CHAR(1),
    civil_holiday_name VARCHAR2(100),
    religious_holiday_flag CHAR(1),
    religious_holiday_name VARCHAR2(100),
    weekday_indicator VARCHAR2(50),
    season_name VARCHAR2(50)
);