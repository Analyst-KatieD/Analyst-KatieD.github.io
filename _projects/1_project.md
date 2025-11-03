---
layout: page
title: Logistic Classification
description: 
img: assets/img/PredictingGoldMembershipPurchases.jpg
importance: 1
category: work
giscus_comments: false
---

## 🧠 Project Overview
---
<div class="row justify-content-sm-center">

  <!-- LEFT COLUMN (2/3 width) -->
  <div class="col-sm-8 mt-3 mt-md-0" markdown="1">

  <h3>Business Context</h3> 
  The marketing team wanted to promote a discounted **Gold Membership** — offering a **20% discount on all purchases for $499** (down from $999).  
  To minimize campaign costs, leadership requested a predictive model to classify which existing customers were most likely to purchase the offer.

  <h3>Objectives</h3> 
  - Predict the likelihood of a customer purchasing the Gold Membership  
  - Identify key features that drive positive purchase responses  
  - Generate a prioritized call list of high-potential customers for the outbound campaign  

  <strong>Data Source:</strong>
  [Kaggle Superstore Marketing Campaign Dataset](https://www.kaggle.com/datasets/ahsan81/superstore-marketing-campaign-dataset)

  </div>

  <!-- RIGHT COLUMN (1/3 width) -->
  <div class="col-sm-4 mt-3 mt-md-0">
 {% include figure.liquid loading="eager" path="assets/img/PredictingGoldMembershipPurchases.jpg" title="Predicting Gold Memberships" class="img-fluid rounded z-depth-1" %}
  </div>

</div>

---

### 🔍 Analytical Approach

1. **Exploratory Analysis** — Assessed demographic, behavioral, and spending trends among customers.  
2. **Data Cleaning** — Addressed missing values, encoded categorical variables, and normalized features.  
3. **Feature Engineering** — Created variables representing engagement and past purchase activity.  
4. **Data Splitting** — Divided the dataset into training and test sets for model evaluation.  
5. **Model Training** — Built a logistic regression model to classify positive responses.  
6. **Optimization** — Tuned hyperparameters and evaluated feature importance.  
7. **Reporting** — Exported predictions and insights to feed a Looker Studio dashboard.

📓 **Jupyter Notebook:** [View Notebook](#) <!-- Replace with actual link -->

---

### 💼 Executive Summary

#### Customer Profile — Most Likely to Buy
Customers most likely to purchase the Gold Membership typically:
- Have a higher average annual purchase frequency  
- Fall within a mid-to-high income range  
- Previously responded positively to marketing campaigns  
- Show strong loyalty through consistent multi-year purchases  

These attributes define the **target persona** for future marketing campaigns.

#### Predicted Outcomes
- **Predicted Buyers:** X% of existing customers (≥60% probability)  
- **Expected Membership Revenue:** `$X × $499` = `$Y total`  
- **Estimated Campaign Profit:**  
  - Membership Revenue − Projected Discounts = **Net Campaign Profit**

Lower-likelihood customers (<60%) were analyzed for their historical purchase patterns to inform **alternative retention strategies**.

---

### 📊 Dashboard & Reporting

An **interactive Looker Studio dashboard** was designed to help both leadership and call center teams monitor campaign performance and visualize insights in real time.

#### Section 1 – Campaign KPIs
- Total Gold Memberships purchased in prior year  
- Average number of purchases per member  
- Average spend per member  
- Calculated profit per membership tier  
- Insight: Demonstrated that membership status was a stronger predictor of increased spending than other demographic factors.

#### Section 2 – Buyer Profile
- Ranked features influencing a positive response  
- Share of total customer base matching high-likelihood features  

#### Section 3 – Predicted Results & Real-Time Progress
- Gauge chart displaying predicted vs. actual memberships sold  
- Linked spreadsheet for live call center tracking  
- Dynamic revenue, discount, and profit calculations  

---

### 🧾 Key Takeaway
By combining data-driven insights with campaign strategy, this model enables the marketing team to **target customers with the highest likelihood to buy**, reduce wasted spend, and accurately **forecast revenue and campaign ROI**.

---

**Tags:** predictive analytics · marketing optimization · logistic regression · customer segmentation · campaign strategy
