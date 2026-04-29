-- Supply Chain Data Cleaning using DuckDB

CREATE OR REPLACE TABLE raw_supply_chain AS
SELECT * FROM read_csv_auto('data/raw_data.csv', HEADER=TRUE);

CREATE OR REPLACE TABLE cleaned_supply_chain AS
SELECT
    TRIM(CAST("SKU" AS VARCHAR)) AS sku_id,
    TRIM(CAST("Product type" AS VARCHAR)) AS category,
    TRIM(CAST("Supplier name" AS VARCHAR)) AS supplier_name,
    TRIM(CAST("Location" AS VARCHAR)) AS warehouse,
    CAST("Number of products sold" AS INTEGER) AS units_sold,
    CAST("Stock levels" AS INTEGER) AS inventory_on_hand,
    CAST("Order quantities" AS INTEGER) AS order_qty,
    CAST("Lead times" AS INTEGER) AS lead_time_days,
    CAST("Shipping times" AS INTEGER) AS shipping_time_days,
    CAST("Shipping costs" AS DOUBLE) AS shipping_cost,
    CAST("Defect rates" AS DOUBLE) AS defect_rate,
    CASE WHEN CAST("Shipping times" AS INTEGER) > CAST("Lead times" AS INTEGER) THEN 1 ELSE 0 END AS delayed_shipment_flag,
    CASE WHEN CAST("Stock levels" AS INTEGER) <= CAST("Order quantities" AS INTEGER) THEN 1 ELSE 0 END AS low_inventory_flag
FROM raw_supply_chain;
