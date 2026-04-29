-- Demand Analysis

-- Top 10 SKUs by units sold
SELECT
    sku_id,
    category,
    SUM(units_sold) AS total_units_sold
FROM cleaned_supply_chain
GROUP BY sku_id, category
ORDER BY total_units_sold DESC
LIMIT 10;

-- Demand by product category
SELECT
    category,
    SUM(units_sold) AS total_units_sold,
    ROUND(AVG(units_sold), 2) AS avg_units_sold
FROM cleaned_supply_chain
GROUP BY category
ORDER BY total_units_sold DESC;

-- Demand by warehouse location
SELECT
    warehouse,
    SUM(units_sold) AS total_units_sold
FROM cleaned_supply_chain
GROUP BY warehouse
ORDER BY total_units_sold DESC;
