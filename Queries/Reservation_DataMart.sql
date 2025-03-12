-- moving_avg for unearned reveanue
select FACT_RESERVATION.RESERVATION_KEY,(FINAL_PRICE - (operational_fees + tax_amount)) as unearned_revenue,
round(avg(FINAL_PRICE - (operational_fees + tax_amount)) over( order by DIM_DATE.DATEKEY rows between 2  preceding and current row),2)
as moving_avg 
from FACT_RESERVATION inner join DIM_DATE on DIM_DATE.DATEKEY=FACT_RESERVATION.RESERVATION_DATE_KEY;


-- unearned revenue per channel
select sum((FINAL_PRICE - (operational_fees + tax_amount))) as unearned_revenue,
dim_channel.CHANNEL_NAME,dim_channel.CHANNEL_TYPE,dim_channel.CHANNEL_KEY
from FACT_RESERVATION inner join dim_channel on FACT_RESERVATION.channel_key=dim_channel.channel_key
where Is_Cancelled=0
group by dim_channel.CHANNEL_NAME,dim_channel.CHANNEL_TYPE,dim_channel.CHANNEL_KEY
order by  unearned_revenue desc;

-- passenger demographics

select count(dim_passenger.PASSENGER_KEY) as passengers,dim_passenger.PASSENGER_CITY
from FACT_RESERVATION inner join dim_passenger on fact_reservation.passenger_key=dim_passenger.passenger_key
group by dim_passenger.PASSENGER_CITY order by passengers desc;

select count(dim_passenger.PASSENGER_KEY) as passengers,dim_passenger.PASSENGER_GENDER
from FACT_RESERVATION inner join dim_passenger on fact_reservation.passenger_key=dim_passenger.passenger_key
group by dim_passenger.PASSENGER_GENDER order by passengers desc;

    SELECT 
        CASE 
            WHEN trunc(MONTHS_BETWEEN(sysdate,C.PASSENGER_DOB)/12) BETWEEN 18 AND 25 THEN '18-25'
            WHEN trunc(MONTHS_BETWEEN(sysdate,C.PASSENGER_DOB)/12) BETWEEN 26 AND 35 THEN '26-35'
            WHEN trunc(MONTHS_BETWEEN(sysdate,C.PASSENGER_DOB)/12) BETWEEN 36 AND 45 THEN '36-45'
            ELSE '45+'
        END AS age_group,
        SUM(FT.FINAL_PRICE) AS unearned_revenue
    FROM 
        FACT_RESERVATION FT
    JOIN 
        DIM_PASSENGER C ON FT.PASSENGER_KEY = C.PASSENGER_KEY
    GROUP BY 
        CASE 
            WHEN trunc(MONTHS_BETWEEN(sysdate,C.PASSENGER_DOB)/12) BETWEEN 18 AND 25 THEN '18-25'
            WHEN trunc(MONTHS_BETWEEN(sysdate,C.PASSENGER_DOB)/12) BETWEEN 26 AND 35 THEN '26-35'
            WHEN trunc(MONTHS_BETWEEN(sysdate,C.PASSENGER_DOB)/12) BETWEEN 36 AND 45 THEN '36-45'
            ELSE '45+'
        END
        order by unearned_revenue desc;

