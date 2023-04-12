USE world;

SELECT 
    country.Name,
    country.SurfaceArea,
    country.Population,
    city.Name AS 'Capital Name'
FROM
    country
        JOIN
    city ON country.Capital = city.ID
ORDER BY country.population DESC;

SELECT 
    country.Name,
    country.SurfaceArea,
    country.Population,
    city.Name AS 'Capital Name',
    country.LifeExpectancy
FROM
    country
        JOIN
    city ON country.Capital = city.ID
WHERE
    country.LifeExpectancy < 50
ORDER BY country.LifeExpectancy DESC;

SELECT 
    country.Name,
    country.Population,
    city.Name AS 'Capital Name',
    countrylanguage.Language,
    countrylanguage.Percentage
FROM
    country
        JOIN
    city ON country.Capital = city.ID
        JOIN
    countrylanguage ON city.CountryCode = countrylanguage.CountryCode
ORDER BY country.Name ASC;

SELECT 
    country.Name,
    country.Population,
    country.LifeExpectancy
FROM
    country
WHERE
    country.LifeExpectancy > 66.48604
GROUP BY country.Name
ORDER BY country.LifeExpectancy DESC;

/*Found average using: AVG(country.LifeExpectancy) AS 'AVG LIFE EXPECTANCY'*/

SELECT 
    country.Continent,
    country.Name,
    country.Region,
    city.Name AS 'Capital Name',
    country.GovernmentForm
FROM
    country
        JOIN
    city ON country.Capital = city.ID
WHERE country.Continent IN ('North America', 'South America')
ORDER BY country.Continent DESC;

SELECT 
    country.Continent,
    country.Name,
    country.Region,
    city.Name AS 'Capital Name',
    country.GovernmentForm
FROM
    country
        JOIN
    city ON country.Capital = city.ID
WHERE country.Continent IN ('Africa', 'Asia')
ORDER BY country.Continent DESC;

SELECT 
    CONCAT(city.Name, ',', country.Name) AS 'City,Country', city.population
FROM
    country
        JOIN
    city ON country.Code = city.CountryCode
ORDER BY city.Population DESC;