/* Spojení všech 25 datasetů pomocí funkce UNION. K získání demografických dat od roku 2000 až do roku 2024. Z datasetů jsme brali pouze 'ženy'. Získaly jsme počty žen v daném roce, v určitém kraji. Soubor má cca 711K řádků.
*/
CREATE TABLE "out_demografie" AS
SELECT * FROM(
SELECT *
FROM "dem-data-2000"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2001"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2002"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2003"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2004"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2005"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2006"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2007"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2008"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2009"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2010"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2011"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2012"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2013"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2014"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2015"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2016"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2017"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2018"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2019"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2020"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2021"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2022"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2023"
WHERE "pohlavi_txt" = 'žena'
UNION ALL
SELECT *
FROM "dem-data-2024"
WHERE "pohlavi_txt" = 'žena'
)
;
