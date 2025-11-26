/*V naší první velké demografické tabulce jsme potřebovaly přidat sloupec věkových kategorií a rok.
*/
CREATE OR REPLACE TABLE "out_demo_sub" AS
SELECT* FROM (SELECT "idhod",
SUBSTR("obdobi", 1,4) AS "rok"
, TRY_CAST("vek_txt" AS INT) AS "vek_int"
, CASE 
     WHEN "vek_int" IS NULL THEN 'vsechny_zeny'
     WHEN "vek_int" >= 85 THEN '85 let a více'
     WHEN "vek_int" >= 80 THEN '80-84 let'
     WHEN "vek_int" >= 75 THEN '75-79 let'
     WHEN "vek_int" >= 70 THEN '70-74 let'
     WHEN "vek_int" >= 65 THEN '65-69 let'
     WHEN "vek_int" >= 60 THEN '60-64 let'
     WHEN "vek_int" >= 55 THEN '55-59 let'
     WHEN "vek_int" >= 50 THEN '50-54 let'
     WHEN "vek_int" >= 45 THEN '45-49 let'
     ELSE 'nic'
     END AS "vekove_kategorie"
FROM "out_demografie" )
WHERE "vek_int" >= 45
;

CREATE OR REPLACE TABLE "final_demo.csv" AS
SELECT od.*, ods."rok", ods."vek_int", ods."vekove_kategorie"
FROM "out_demo_sub" as ods
LEFT JOIN  "out_demografie" od ON ods."idhod" = od."idhod"
;
