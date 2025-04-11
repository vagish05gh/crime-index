create database crime

use crime

select * from crime_index

select * from sentenced

---1] TOP 10 CITIES WITH HIGHEST CRIME INDEX

SELECT top 10 city , Country , crime_index
from crime_index
order by crime_index desc

---2] TOP 10 SAFEST CITIES WITH CRIME INDEX

select top 10 city, country,crime_index
from crime_index
order by crime_index asc

--3] FINDING CRIME RATES FOR PARTICULAR COUNTRY

select * from crime_index
where country='india'

--4] FINDING CRIME RATES FOR PARTICULAR CITIES

SELECT * FROM CRIME_INDEX
WHERE CITY='VADODARA'

---5] FINDING THE YERALY TREND FOR SENETENCED PERSONS

select year ,sum(year) as total_senetenced
from sentenced
group by year
order by year desc

--6] FINDING THE TOTAL NO OF SENTENCED AND UNSENTENCED PEOPLE OVER THE TIMES 

SELECT Category, SUM(Total) AS Total_Cases
FROM Sentenced
GROUP BY Category
ORDER BY Total_Cases DESC;


--7] CITIES/COUNTRY CRIME RATE ACCORDING TO THE RANK

select city,crime_index from crime_index
where rank='6'

--8] CITIES/COUNTRY SAFETY INDEX ACCORDING TO THE RANK

select city,safety_index
from crime_index
where rank='3'

--9] SENETENCED/UNSENTENCED PEOPLE ACCORDING TO THE REGION AND YEARS

select *from sentenced
where region='asia' and year='2003'