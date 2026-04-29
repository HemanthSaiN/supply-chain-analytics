-- Inventory KPIs

-- Supplier delay percentage
SELECT
    supplier_name,
    COUNT(*) AS total_orders,
    SUM(delayed_shipment_flag) AS delayed_orders,
    ROUND(100.0 * SUM(delayed_shipment_flag) / COUNT(*), 2) AS delay_pct
FROM cleaned_supply_chain
GROUP BY supplier_name
ORDER BY delay_pct DESC;

-- Warehouse inventory risk
SELECT
    warehouse,
    COUNT(*) AS total_records,
    SUM(low_inventory_flag) AS low_inventory_records,
    ROUND(100.0 * SUM(low_inventory_flag) / COUNT(*), 2) AS inventory_risk_pct
FROM cleaned_supply_chain
GROUP BY warehouse
ORDER BY inventory_risk_pct DESC;

-- Products with low inventory
SELECT
    sku_id,
    category,
    warehouse,
    inventory_on_hand,
    order_qty
FROM cleaned_supply_chain
WHERE low_inventory_flag = 1
ORDER BY warehouse, category;
