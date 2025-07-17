# 🍕 Pizza Sales Analysis – SQL + Power BI Project

This is a complete end-to-end data analysis project where I explored and visualized pizza sales data using **SQL**, **Power BI**, and **Power Query**. The goal was to derive valuable business insights and practice key data analysis and visualization skills.

---
## 📊 Dashboard Preview

![Pizza Sales Dashboard Screenshot](https://github.com/user-attachments/assets/3eee6892-ec55-4530-bd90-53b201a31bca)
![Pizza Sales Dashboard Screenshot](https://github.com/user-attachments/assets/88a0cb93-0a24-4c79-a3cc-c23d62ae80b5) <!-- ضع صورة من Power BI هنا -->


## 🧠 Project Summary

In this project, I:
- Cleaned and transformed raw sales data using **Power Query**
- Wrote SQL queries to extract, aggregate, and analyze data
- Built an interactive dashboard in **Power BI** with KPIs and charts
- Delivered insights to help improve business decisions

---

## 🔧 Tools & Technologies Used

| Tool            | Description                             |
|-----------------|------------------------------------------|
| **SQL**         | Data analysis and metric calculation     |
| **Power BI**    | Dashboard design and visualizations      |
| **Power Query** | Data cleaning and transformation         |
| **DAX**         | Custom measures and KPIs in Power BI     |

---

## 📁 Files Included

- `pizza_sales.csv` → Raw dataset  
- `Pizza_Sales_Dashboard.pbix` → Power BI dashboard  
- `README.md` → Documentation file

---

## 📊 Key Metrics Calculated

- ✅ Total Revenue  
- ✅ Total Orders  
- ✅ Average Order Value  
- ✅ Total Pizzas Sold  
- ✅ Top 5 Best-Selling Pizzas  
- ✅ Hourly & Weekly Sales Trends  
- ✅ Category-Wise & Size-Wise Revenue  

---

## 📈 Example Measures (DAX)

```dax
-- Total Revenue
Total Revenue = SUM(pizza_sales[total_price])

-- Average Order Value
Avg Order Value = DIVIDE(
    SUM(pizza_sales[total_price]),
    DISTINCTCOUNT(pizza_sales[order_id])
)

-- Total Orders
Total Orders = DISTINCTCOUNT(pizza_sales[order_id])
