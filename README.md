# Supply Chain Demand & Inventory Analytics

## Project Overview
This project analyzes supply chain operations to improve inventory visibility, monitor supplier performance, and support demand planning decisions.

## Business Problem
Supply chain teams face stockout risk, delayed shipments, and limited visibility into supplier and warehouse performance. This project transforms raw operational data into clear KPIs and dashboards for faster decision-making.

## Tools Used
- SQL (DuckDB)
- Python (pandas, numpy, matplotlib)
- Power BI

## Dataset
100 SKUs across 3 product categories: haircare, skincare, cosmetics.
5 suppliers across 5 warehouse locations: Mumbai, Kolkata, Chennai, Delhi, Bangalore.

## Key Findings
- Supplier 5 had the highest shipment delay rate with 5 delayed orders
- Chennai had the highest inventory risk among all warehouses
- Skincare was the top selling category with over 20K units sold
- Total of 17 delayed shipments identified across all suppliers

## Repository Structure
- data/       raw and cleaned CSV files
- sql/        DuckDB query scripts
- python/     Jupyter notebooks
- dashboard/  Power BI screenshots and notes

## Steps Performed
1. Data cleaning and column standardization
2. Feature engineering (delayed_shipment_flag, low_inventory_flag, inventory_gap)
3. SQL-based KPI analysis using DuckDB
4. Python trend and supplier analysis
5. Power BI dashboard development

## Business Value
- Helps planners make faster replenishment decisions
- Helps procurement monitor supplier reliability
- Improves reporting visibility for operations teams
- Supports reduction of stockout and excess inventory risk
