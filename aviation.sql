select * from airline;
select * from airline_1;
select count(*) from airline where TailNum="N953FR" ;
select count(*) from airline_1 where TailNum = "-" ;



								--			KPI 1		--
					--------- WeekDay  Vs  WeekEnd   Total Flights ----------
 
 
 select weekdayend, count(tailnum)  as "Total Flights" 
	from airline 
		group by weekdayend ;
 






								--			KPI 2		--
			--------- Week-wise Arrival and Departure Flights from Manchester , NH ----------
                
                
SELECT origincityname, WEEKNUM as "Week Number",count(*) as "Total_Flights"
	FROM airline  																		--	Departure Flights --
		where origincityname="Manchester, NH"
			group by WEEKNUM 
				order by total_flights desc ;
    
    
SELECT DestCityName, WEEKNUM as "Week Number",COUNT(AirlineID) as "Total_Flights"
	FROM airline  																		--	Arrival Flights	--
		where DestCityName="Manchester, NH" 
			group by WEEKNUM 
				order by total_flights desc ;






								--			KPI 3		--
					--------- Honolulu,HI --> Total Cancelled Flights ----------


select a.origincityname,sum(b.Cancelled) AS "Cancelled Flights" 
	from airline as a
		left join 
	airline_1 as b using(index1) 
		where a.origincityname= "Honolulu, HI" 
			group by a.OriginCityName ;
  
    
    
    
    
    
								--			KPI 4		--
					--------- TailNumber N190AA --> Total Distance ----------
    
    
select a.TAILNUM,AirTime,flightdate,sum(b.Distance) AS "Total Distance" 
		from airline as a
			LEFT join 
    airline_1  as b using(INDEX1) 
where a.tailnum= "N190AA" AND b.AirTime=50 AND a.flightdate="2017-01-18" 
    group by   a.tailnum ;
									
    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  select * from flight_1 where AirlineID = 20436; 
   select * from DATA1 where AirlineID = 20436; 
  
  SELECT COUNT(*) FROM flight_1 WHERE TailNum = "N954FR";
  SELECT COUNT(*) FROM DATA1 WHERE TailNum = "N954FR";
  
    
    
    