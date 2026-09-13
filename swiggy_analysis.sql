<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="swiggy.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="1243"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="swiggy" custom_title="0" dock_id="1" table="4,6:mainswiggy"/><dock_state state="000000ff00000000fd00000001000000020000043b000002aefc0100000001fb000000160064006f0063006b00420072006f007700730065003101000000000000043b0000013900ffffff000002580000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="swiggy" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_" freeze_columns="0"><sort><column index="0" mode="0"/></sort><column_widths><column index="1" value="54"/><column index="2" value="300"/><column index="3" value="78"/><column index="4" value="54"/><column index="5" value="124"/><column index="6" value="54"/><column index="7" value="210"/><column index="8" value="117"/><column index="9" value="300"/><column index="10" value="300"/><column index="11" value="132"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1*">SELECT COUNT(*) AS total_records
FROM swiggy;

SELECT
    SUM(CASE WHEN restaurant_name IS NULL THEN 1 ELSE 0 END) AS null_names,
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS null_ratings,
    SUM(CASE WHEN location IS NULL THEN 1 ELSE 0 END) AS null_locations
FROM swiggy;

SELECT rating, COUNT(*) AS total
FROM swiggy
GROUP BY rating
ORDER BY total DESC;

SELECT COUNT(*) AS total_records
FROM swiggy;

UPDATE swiggy
SET rating = CAST(rating AS DECIMAL(2,1))
WHERE rating NOT IN ('NEW', '--');

UPDATE swiggy
SET rating = CAST(rating AS DECIMAL(2,1));

SELECT location,
       COUNT(*) AS total_restaurants
FROM swiggy
GROUP BY location
ORDER BY total_restaurants DESC
LIMIT 10;

SELECT cuisine,
       COUNT(*) AS total_restaurants
FROM swiggy
GROUP BY cuisine
ORDER BY total_restaurants DESC
LIMIT 10;

SELECT restaurant_name,
       COUNT(*) AS branches
FROM swiggy
GROUP BY restaurant_name
ORDER BY branches DESC
LIMIT 10;

SELECT location,
       ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
       COUNT(*) AS total_restaurants
FROM swiggy
WHERE rating NOT IN ('NEW', '--')
GROUP BY location
HAVING COUNT(*) &gt; 50
ORDER BY avg_rating DESC
LIMIT 5;

SELECT location,
       ROUND(AVG(CAST(REPLACE(price, ',', '') AS INTEGER)), 0) AS avg_price
FROM swiggy
WHERE price IS NOT NULL
GROUP BY location
ORDER BY avg_price DESC
LIMIT 10;

SELECT price
FROM swiggy
LIMIT 20;

SELECT cuisine,
       ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
       COUNT(*) AS restaurant_count
FROM swiggy
WHERE rating NOT IN ('NEW', '--')
GROUP BY cuisine
HAVING COUNT(*) &gt; 100
ORDER BY avg_rating DESC
LIMIT 10;


SELECT restaurant_name,
       location,
       rating,
       rating_count,
       price
FROM swiggy
WHERE CAST(rating AS FLOAT) &gt;= 4.5
  AND CAST(REPLACE(rating_count, '+', '') AS INTEGER) &gt;= 1000
ORDER BY CAST(rating AS FLOAT) DESC
LIMIT 20;

SELECT rating_count
FROM swiggy
LIMIT 20;

SELECT location,
       ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
       ROUND(AVG(CAST(REPLACE(price, ',', '') AS INTEGER)), 0) AS avg_price
FROM swiggy
WHERE rating NOT IN ('NEW', '--')
GROUP BY location
HAVING COUNT(*) &gt; 30
ORDER BY avg_rating DESC, avg_price ASC
LIMIT 10;

SELECT price
FROM swiggy
LIMIT 20;

SELECT rating_count
FROM swiggy
LIMIT 20;</sql><current_tab id="0"/></tab_sql></sqlb_project>
