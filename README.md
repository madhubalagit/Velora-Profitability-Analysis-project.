
# 📊 Velora Profitability Analysis
## Revenue Growth vs Profit Margin Decline (2024–2025)

---

# Project Background

## Company Overview

Velora is a fictional global retail company that sells products across multiple regions and customer segments. The company generates revenue through the sale of Furniture, Office Supplies, and Technology products.

Between 2024 and 2025, the executive team observed that although revenue continued to grow, overall profitability declined. As a Data Analyst at Velora, I was tasked with identifying the root causes behind this decline and providing data-driven recommendations to improve business performance.

---

## Business Problem

Revenue increased by **15.4%** between 2024 and 2025, but profit margin declined from **18.88%** to **13.01%**.

Management wanted to understand:

- Why profit margin decreased despite revenue growth.
- Which regions were underperforming.
- Which customer segments and product categories contributed to lower profitability.
- Whether discounting negatively impacted margins.
- What actions should be taken to improve profitability.

---

## Project Objectives

The analysis focuses on the following business areas:

### 1. Overall Business Performance

- Revenue
- Profit
- Profit Margin

### 2. Regional Performance

- Revenue by Region
- Profit Margin by Region
- Average Discount by Region

### 3. Product & Customer Analysis

- Profit Margin by Category
- Lowest Margin Products
- Profit Margin by Customer Segment

### 4. Discount Analysis

- Profit Margin by Discount Band
- Relationship between Discount and Profitability

---

# Data Structure & Initial Checks

The analysis is based on a **Star Schema** consisting of three tables.

| Table | Description |
|--------|-------------|
| Orders | Sales transaction data |
| Customers | Customer information |
| Products | Product information |

### Orders

Contains

- Order ID
- Order Date
- Customer ID
- Product ID
- Sales
- Profit
- Quantity
- Discount %
- Region

---

### Customers

Contains

- Customer ID
- Customer Name
- Customer Segment

---

### Products

Contains

- Product ID
- Product Name
- Category

---

## Entity Relationship Diagram
<img width="691" height="341" alt="Screenshot 2026-07-24 130613" src="https://github.com/user-attachments/assets/fb17195c-03d1-4b5e-a038-3ecaeaab0c66" />


---

# Executive Summary

## Overview of Findings

Between 2024 and 2025, Velora achieved **15.4% revenue growth**, but overall profit margin declined significantly.

The analysis identified three major drivers of declining profitability:

- Higher discounts in the South region
- Low margins within the Furniture category
- Significant profit erosion for orders receiving discounts above 20%

These findings indicate that revenue growth was achieved through aggressive discounting rather than improved operational profitability.

---

## Dashboard

<img width="596" height="338" alt="Screenshot 2026-07-24 132856" src="https://github.com/user-attachments/assets/3e9fbdda-ddc1-4efc-ad81-b615bb214d74" />


---

# Insights Deep Dive

# Category 1 — Overall Business Performance

### Insight 1

Revenue increased by **15.4%** between 2024 and 2025.

---

### Insight 2

Profit increased only slightly compared with revenue.

---

### Insight 3

Profit margin declined from **18.88%** to **13.01%**.

---

### Insight 4

Higher sales did not translate into stronger profitability.

### Business Interpretation

Revenue growth alone is not a reliable indicator of business success. Profitability must also be monitored.

---

# Category 2 — Regional Performance

### Insight 1

South recorded the lowest profit margin.

---

### Insight 2

South also had the highest average discount.

---

### Insight 3

North and East generated stronger profitability.

---

### Insight 4

Regional pricing strategy appears inconsistent.

### Business Interpretation

Discounting practices differ significantly across regions and directly influence profitability.

---

# Category 3 — Product & Customer Analysis

### Insight 1

Furniture generated the lowest profit margin.

---

### Insight 2

Several Furniture products consistently generated margins below 10%.

---

### Insight 3

Corporate customers generated the highest profit margin.

---

### Insight 4

Consumer customers generated the lowest profit margin.

### Business Interpretation

Both product mix and customer segment significantly influence overall profitability.

---

# Category 4 — Discount Analysis

### Insight 1

Orders with discounts above 20% generated the lowest profit margin.

---

### Insight 2

Profit margin consistently decreased as discount levels increased.

---

### Insight 3

Higher discounts were concentrated in the South region.

---

### Insight 4

Aggressive discounting is the primary driver of declining profitability.

### Business Interpretation

Current discount strategies increase revenue but reduce long-term profitability.

---

# Recommendations

Based on the analysis, the executive team should consider the following actions.

## 1. Reduce High Regional Discounts

Observation

South applies significantly higher discounts than other regions.

Recommendation

Review regional pricing policies and require management approval for discounts above 15%.

---

## 2. Review Furniture Pricing

Observation

Furniture consistently produces the lowest profit margin.

Recommendation

Evaluate pricing strategy, supplier costs, and promotional campaigns.

---

## 3. Optimize Low Margin Products

Observation

Several Furniture products generate margins below 10%.

Recommendation

Review pricing, reduce costs, or discontinue persistently unprofitable products.

---

## 4. Improve Consumer Segment Profitability

Observation

Consumer customers produce lower margins than Corporate customers.

Recommendation

Evaluate promotional offers and pricing strategies for Consumer customers.

---

## 5. Monitor Discount Effectiveness

Observation

Discounts above 20% significantly reduce profitability.

Recommendation

Introduce discount approval thresholds and monitor discount performance through monthly dashboards.

---

# Business Impact

If implemented, these recommendations could help Velora:

- Increase overall profit margin
- Improve pricing consistency across regions
- Reduce excessive discounting
- Improve profitability of Furniture products
- Increase profitability of Consumer customers
- Support more sustainable long-term growth

---

# Assumptions & Caveats

The following assumptions were made during the analysis.

- Missing Quantity values were calculated using Sales ÷ Product Price where possible.
- Missing Product Price values were calculated using Sales ÷ Quantity where possible.
- Records with unresolved missing values represented less than 1% of the dataset and were removed.
- Records with missing Customer Segment were excluded from customer-level analysis.
- Financial values are reported in USD.
- The analysis includes transactions from 2024 and 2025 only.

---
# Dataset

This project uses a **synthetic retail dataset** created for portfolio and educational purposes.

The dataset was generated with AI and then reviewed and modified to simulate realistic business scenarios, including:

- Two years of sales data (2024–2025)
- Multiple regions
- Customer segments
- Product categories
- Seasonal sales patterns
- Discount strategies
- Profit and margin variations

After generation, the data was cleaned and transformed using **Excel Power Query** before being imported into **MySQL** for analysis and visualized in **Power BI**.

No real customer or company data is included in this project.

# Skills Demonstrated

### Excel
- Data Cleaning
- Power Query
- Xlookup
- Text Function

### SQL

- Data Cleaning
- JOINs
- GROUP BY
- CASE Statements
- Aggregate Functions
- Business Analysis

### Power BI

- Power Query
- Data Modeling
- DAX
- KPI Development
- Interactive Dashboards
- Data Visualization

### Business Analysis

- Profitability Analysis
- Root Cause Analysis
- KPI Reporting
- Executive Communication
- Data-Driven Recommendations

---

# Repository Structure

```
Velora-Profitability-Analysis/
│
├── powerbi/
│   └── Velora_Profitability_Dashboard.pbix
├── Data/
│   └── Orders_2024,2025
|   |__ Product
|   |__ customers
│
├── Document/
│   └── Project_report
│
├── SQL/
│   ├── Busniess_sql_queries
│
└── README.md
```

---

# Conclusion

This project demonstrates an end-to-end data analytics workflow, from data preparation and SQL analysis to interactive Power BI dashboard development and business recommendations.

The analysis showed that although Velora achieved strong revenue growth, profitability declined due to aggressive discounting, underperforming product categories, and low-margin customer segments. The recommendations focus on improving pricing strategy, optimizing discounts, and strengthening long-term profitability through data-driven decision-making.
# Author

Madhubala B

Github Profile [link](https://github.com/madhubalagit)

Linkedin profile -
