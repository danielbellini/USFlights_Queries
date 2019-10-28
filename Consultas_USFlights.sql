/*ejercicio 1*/
SELECT count(*) from Flights

/*ejercicio 2*/
SELECT Origin, avg(ArrDelay) as prom_aribades, avg(DepDelay) as prom_sortides
FROM `flights` 
GROUP BY Origin
ORDER by Origin ASC

/*ejercicio 3*/
SELECT Origin, colYear, colMonth, avg(ArrDelay) as prom_aribades
FROM `flights`
GROUP by Origin, colYear, colMonth
ORDER by Origin ASC

/*ejercicio 4*/
SELECT City, colYear, colMonth, avg(ArrDelay) as prom_aribades
FROM `flights`
LEFT JOIN `usairports` 
ON `flights`.Origin = `usairports`.IATA
GROUP by City, colYear, colMonth
ORDER by City ASC

/*ejercicio 5*/
SELECT UniqueCarrier, colYear, colMonth, avg(ArrDelay), sum(Cancelled) as total_cancelled
FROM `flights`
Group BY  colYear, colMonth, Cancelled
ORDER by total_cancelled DESC, colYear DESC, colMonth DESC

/*ejercicio 6*/
SELECT TailNum, sum(Distance) as total_distance
FROM Flights 
WHERE TailNum <> '' AND TailNum <> '#NOME?'
GROUP BY TailNum
ORDER BY total_distance DESC
LIMIT 10

/*ejercicio 7*/
SELECT UniqueCarrier, avg(ArrDelay) as avg_delay
FROM Flights 
GROUP BY UniqueCarrier
HAVING avg_delay > 10
ORDER BY avg_delay DESC

