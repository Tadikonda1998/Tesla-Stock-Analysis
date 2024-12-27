--1 View All Data

SELECT *
FROM TeslaStockData;

--2 Count Total records

SELECT COUNT(*) AS TotalRecords
FROM TeslaStockData;

--3 Show data for specific date

SELECT * 
FROM TeslaStockData
WHERE Date = '2023-03-07 00:00:00.000';

--4 Maximum closing price

SELECT MAX(ClosePrice) AS MaxClosingPrice
FROM TeslaStockData;

--5 Minimum Closing Price

SELECT MIN(ClosePrice) AS MinClosingPrice
FROM TeslaStockData;

--6 Average Closing price

SELECT AVG(ClosePrice) AS AvgClosingPrice
FROM TeslaStockData;

--7 Count Records by Date

SELECT Date AS Year, COUNT(*) AS RecordCount
FROM TeslaStockData
GROUP BY Date
ORDER BY Year;

--8 Count Records by Year

SELECT Year(Date) AS Year, COUNT(*) AS RecordCount
FROM TeslaStockData
GROUP BY Year(Date)
ORDER BY Year;

--9 Sort data by Closing Time

SELECT Date, ClosePrice
FROM TeslaStockData
ORDER BY ClosePrice DESC;

--10 Find Highest Volume Day

SELECT Top 1 Date, Volume
FROM TeslaStockData
ORDER BY Volume DESC;

--11 High Volume using using Filter

SELECT *
FROM TeslaStockData
WHERE Volume > 60000000;

--12 Dates with lowest Volume

SELECT TOP 5 Date, Volume
FROM TeslaStockData
ORDER BY Volume ASC;

--13 Show Closing Prices Between $200 and $300

SELECT Date, ClosePrice
FROM TeslaStockData
WHERE ClosePrice BETWEEN 100 AND 200
ORDER BY ClosePrice;

--14 Find Trading Days with Particular Volume

SELECT Date, Volume
FROM TeslaStockData
WHERE Volume = 5412000;

--15 Show all data for 9 march 2023

SELECT *
FROM TeslaStockData
WHERE Date = '2023-03-09 00:00:00.000';

--16 Find most recent trading date

SELECT TOP 1 *
FROM TeslaStockData
ORDER BY Date DESC;

--17 Count Unique Dates

SELECT COUNT(DISTINCT Date) AS UniqueDates
FROM TeslaStockData;

--18 Total value traded per day

SELECT Date, (ClosePrice * Volume) AS TotalValue
FROM TeslaStockData
ORDER BY TotalValue DESC;

--19 Days with Price Drop 

SELECT Date, OpenPrice, ClosePrice
FROM TeslaStockData
WHERE ClosePrice < OpenPrice
ORDER BY Date;

--20 Days with Price Equal

SELECT Date, OpenPrice, ClosePrice
FROM TeslaStockData
WHERE ClosePrice = OpenPrice
ORDER BY Date;

--21 Show Year and Month Separately

SELECT DISTINCT YEAR(Date) AS Year, MONTH(Date) AS Month
FROM TeslaStockData
ORDER BY Year, Month;

--22 Days with Closing Price Above Average

SELECT Date, ClosePrice
FROM TeslaStockData
WHERE ClosePrice > (SELECT AVG(ClosePrice) FROM TeslaStockData);

--23 Day with Maximum Trading Volume

SELECT *
FROM TeslaStockData
WHERE Volume = (SELECT MAX(Volume) FROM TeslaStockData);

--24 Days with Above-Average Volume

SELECT Date, Volume
FROM TeslaStockData
WHERE Volume > (SELECT AVG(Volume) FROM TeslaStockData);

--25 Data for Latest Trading Day

SELECT *
FROM TeslaStockData
WHERE Date = (SELECT MAX(Date) FROM TeslaStockData);

--26 




















