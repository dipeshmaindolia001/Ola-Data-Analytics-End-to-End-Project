# 🚕 OLA Ride Booking Analytics – Power BI Dashboard

An interactive Power BI dashboard built on OLA's ride-booking data to analyze ride volume, booking status, vehicle performance, revenue, cancellations, and customer/driver ratings.

![Overall Dashboard](Dashboard%20Image/Image%2001.png)

---

## 📌 Project Overview

This project simulates a real-world **Data Analyst / Business Analytics** case study using OLA ride-booking data. The dashboard is split into **5 focused views**, each answering a specific business question — from overall ride trends to why rides get cancelled.

| Metric | Value |
|---|---|
| Total Bookings | 100,000 |
| Total Booking Value | ₹29.34M |
| Date Range Analyzed | 1/1/2024 – 1/31/2024 |
| Data Columns | 19 |

---

## 🗂 Repository Structure

```
ola-data-analytics-project/
│
├── Dashboard Image/
│   ├── Image 01.png   # Overall
│   ├── Image 02.png   # Vehicle Type
│   ├── Image 03.png   # Revenue
│   ├── Image 04.png   # Cancellation
│   └── Image 05.png   # Ratings
│
├── OLA_Dashboard.pbix        # Power BI dashboard file
├── dataset.csv                # Raw / cleaned dataset
└── README.md
```

> Local dev path: `D:\Projectz\ola-data-analytics-project\Dashboard Image`
> On GitHub, images are referenced relatively as `Dashboard Image/Image 0X.png` — keep the folder name and image names exactly as above so the previews below render correctly.

---

## 🧰 Tools & Skills Used

- **Power BI Desktop** — dashboard design, DAX measures, interactive visuals
- **Power Query** — data cleaning & transformation
- **Data Modeling** — structuring raw ride data into clean, usable tables
- **DAX** — KPI cards, aggregations, calculated measures
- **Data Storytelling** — organizing insights into 5 clear, focused pages

---

## 📊 Dataset — Columns

| # | Column | # | Column |
|---|---|---|---|
| 1 | Date | 11 | Cancelled_Rides_by_Customer |
| 2 | Time | 12 | Cancelled_Rides_by_Driver |
| 3 | Booking_ID | 13 | Incomplete_Rides |
| 4 | Booking_Status | 14 | Incomplete_Rides_Reason |
| 5 | Customer_ID | 15 | Booking_Value |
| 6 | Vehicle_Type | 16 | Payment_Method |
| 7 | Pickup_Location | 17 | Ride_Distance |
| 8 | Drop_Location | 18 | Driver_Ratings |
| 9 | V_TAT | 19 | Customer_Rating |
| 10 | C_TAT | | |

---

## 🖥 Dashboard Pages

### 1️⃣ Overall
![Overall](Dashboard%20Image/Image%2001.png)

- **Total Bookings:** 100,000 &nbsp;|&nbsp; **Total Booking Value:** ₹29.34M
- **Booking Status Breakdown:** majority Success, remaining split across Cancelled by Driver, Driver Not Found, Cancelled by Customer, and Incomplete
- **Ride Volume Over Time:** clear weekly spike pattern — booking count jumps sharply on specific days each week, otherwise stays flat

### 2️⃣ Vehicle Type
![Vehicle Type](Dashboard%20Image/Image%2002.png)

- Breaks down **Total Booking Value, Success Booking Value, Avg. Distance Travelled, and Total Distance Travelled** per vehicle type (Prime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, E-Bike)
- **Mini** leads in total booking value (₹7.35M) and total distance (239.32K)
- **Prime Sedan** has the highest single-vehicle-class value at ₹4.37M with a fully consistent success rate

### 3️⃣ Revenue
![Revenue](Dashboard%20Image/Image%2003.png)

- **Revenue by Payment Method:** UPI dominates (~₹15M+), followed by Cash and Credit Card
- **Top 5 Customers by Booking Value:** CUST024912, CUST017697, CUST002924, CUST016745, CUST002243 — total ₹65,157.30
- **Ride Distance / Revenue per Day:** daily revenue trend with visible mid-week peaks

### 4️⃣ Cancellation
![Cancellation](Dashboard%20Image/Image%2004.png)

- **Cancelled by Customer:** 6.38K rides
- **Cancelled by Driver:** 17.59K rides
- Out of 100,000 total bookings, ~24% end in cancellation — driver-side cancellations are the larger share

### 5️⃣ Ratings
![Ratings](Dashboard%20Image/Image%2005.png)

- **Driver Ratings** are consistently stable across all vehicle types (~3.99 – 4.00)
- **Customer Ratings** are similarly consistent (~3.99 – 4.02) across vehicle types, with Prime Sedan flagged as a data outlier for further cleaning

---

## 🔎 Key Insights

- Ride demand is highly cyclical — a few high-volume days each week vs. a flat baseline the rest of the time
- Success rate stays strong at ~65–70% of all bookings
- Driver-side cancellations outnumber customer-side cancellations by roughly 3:1
- UPI is the dominant payment method, indicating strong digital payment adoption
- Mini and Prime Sedan are the highest-value vehicle categories by both revenue and distance covered

---

## 🚀 How to Use

1. Clone this repo
2. Open `OLA_Dashboard.pbix` in **Power BI Desktop**
3. Refresh the data source to point to `dataset.csv`
4. Explore the 5 report pages: Overall, Vehicle Type, Revenue, Cancellation, Ratings

---

## 👤 About Me

**Dipesh Maindolia**
B.S. Data Science, IIT Madras · B.Tech IT, GBPUAT Pantnagar

- 🔗 LinkedIn: [Add your LinkedIn URL here]
- 🎥 YouTube (Burnout Batch): [Add your Burnout Batch channel URL here]
- 🐦 X / Twitter: [@DipeshMain14648](https://x.com/DipeshMain14648)

---

⭐ If you found this project useful, consider giving the repo a star!