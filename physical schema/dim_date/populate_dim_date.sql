
set serveroutput on size 1000000
declare 
day_no number(2);
day_name varchar(30);
first_date date;
Last_date date;
fulldate number(8);

monthName varchar(30);
yearNo number(7);
season varchar(30);
quarter number(1);

begin 
first_date :=to_date('2023-01-01','YYYY-MM-DD','NLS_DATE_LANGUAGE=ENGLISH');
Last_date :=to_date('2026-01-01','YYYY-MM-DD');
    loop
    fulldate:=(to_number(extract(year from first_date))*100+to_number(extract(month from first_date)))*100+to_number(extract(day from first_date));
    DBMS_OUTPUT.PUT_LINE(fulldate);
    day_no:=to_number(to_char(first_date,'D'));
    day_name:=to_char(first_date,'DAY','NLS_DATE_LANGUAGE=ENGLISH');
    monthName:=to_char(first_date,'MONTH','NLS_DATE_LANGUAGE=ENGLISH');
    yearNo:=to_number(to_char(first_date,'YYYY'));
    SELECT 
    CASE 
        WHEN TO_CHAR(first_date, 'MM') BETWEEN '01' AND '03' THEN 1
        WHEN TO_CHAR(first_date, 'MM') BETWEEN '04' AND '06' THEN 2
        WHEN TO_CHAR(first_date, 'MM') BETWEEN '07' AND '09' THEN 3
        ELSE 4
    END        
    into quarter
    from dual;
    
    SELECT 
    CASE 
        WHEN TO_CHAR(first_date, 'MM') BETWEEN '03' AND '05' THEN 'Spring'
        WHEN TO_CHAR(first_date, 'MM') BETWEEN '06' AND '08' THEN 'Summer'
        WHEN TO_CHAR(first_date, 'MM') BETWEEN '09' AND '11' THEN 'Autumn'
        ELSE 'Winter'
    END 
    into season
FROM dual;
    insert into dim_date values (fulldate,first_date,day_no,day_name,monthName,yearNo,season,quarter);
    first_date:=first_date+1;
    if first_date=Last_date then
    exit;
    end if;
    end loop;
end;