---
layout: page
title: Predicting Gold Memberships
description: 
img: assets/img/PredictingGoldMembershipPurchases.jpg
importance: 1
category: work
giscus_comments: false
---

## Project Overview
---
<div class="row justify-content-sm-center">

  <!-- LEFT COLUMN (2/3 width) -->
  <div class="col-sm-8 mt-3 mt-md-0" markdown="1">

  <h3>Business Context</h3> 
  The marketing team wanted to promote a discounted **Gold Membership** — offering a **20% discount on all purchases for $499** (down from $999).  To minimize campaign costs, leadership requested a predictive model to classify which existing customers were most likely to purchase the offer.

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

## Analytical Approach

1. **Exploratory Analysis** — Assessed demographic, behavioral, and spending trends among customers.  
2. **Data Cleaning** — Addressed missing values, encoded categorical variables, and normalized features.  
3. **Feature Engineering** — Created variables representing engagement and past purchase activity.  
4. **Data Splitting** — Divided the dataset into training and test sets for model evaluation.  
5. **Model Training** — Built a logistic regression model to classify positive responses.  
6. **Optimization** — Tuned hyperparameters and evaluated feature importance.  
7. **Reporting** — Exported predictions and insights to feed a Looker Studio dashboard.

**Jupyter Notebook:** [View Notebook](https://github.com/Analyst-KatieD/kaggle-superstore-marketing/blob/main/Kaggle_Superstore_Marketing_Campaign.ipynb) <!-- Replace with actual link -->

---

## Executive Summary

### Customer Profile — Most Likely to Buy

Understanding which customers are most likely to respond enables targeted acquisition strategy and efficient campaign resource allocation. Through model predictions and behavioral analysis, a clear high-value customer segment emerged — one that spends significantly more, shows higher engagement across multiple channels, and demonstrates stronger purchase intent than the full customer base.

<br>

<div class="row executive-summary">

  <!-- LEFT: Persona Table -->
  <div class="col-sm-7 profile-left">

  <h4> “The Premium Multichannel Shopper” </h4>

  <table class="persona-table">
    <thead>
      <tr>
        <th>Attribute</th>
        <th>Lift vs Population</th>
        <th>Insight</th>
      </tr>
    </thead>
    <tbody>
      <tr><td><b>High Income</b></td><td>+34%</td><td>Greater purchasing power</td></tr>
      <tr><td><b>Premium Product Spend</b></td><td>+120–180%</td><td>Wines, meats, fruits, sweets</td></tr>
      <tr><td><b>Multi-channel Buyer</b></td><td>+115%</td><td>Catalog + store + online channels</td></tr>
      <tr><td><b>Recent Activity</b></td><td>–42% Recency Days</td><td>Recently engaged customers</td></tr>
      <tr><td><b>Smaller Households</b></td><td>–59% Kids at Home</td><td>Higher discretionary spending</td></tr>
    </tbody>
  </table>

  </div>

  <!-- RIGHT: Persona Image -->
  <div class="col-sm-5 text-center">
    <img src="/assets/img/business-person.jpg" alt="Persona Image" class="persona-image shadow-sm">
  </div>

</div> <!-- END ROW -->

---

### Predicted Outcomes

## Predicted Outcomes — Smart Campaign Sizing

<div class="predicted-outcomes">

<p>
The full campaign initially consisted of <strong>2,240 customers</strong>. Using the logistic regression model and an optimized threshold of <strong>0.55</strong>, we identified <strong>617 customers</strong> with a high likelihood to purchase a Gold Membership.
</p>

<p>
However, targeting only those 617 customers may limit total revenue potential. To capture more opportunity while staying efficient, we used the <strong>Gains Curve</strong> to determine the most effective expansion range.
</p>

<div class="callout-arrow">
  Expanding target outreach to <strong>~40% of the customer base (896 customers)</strong> allows us to capture 
  <strong>nearly 80% of all likely buyers</strong>, while still <strong>reducing campaign volume by 60%</strong>.
</div>

<h4>Why This Matters</h4>

<table class="strategy-table">
  <thead>
    <tr>
      <th>Strategy</th>
      <th>Customers Targeted</th>
      <th>Share of Likely Buyers Captured</th>
      <th>Risk / Opportunity</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Only Persona_Flag</strong></td>
      <td>617</td>
      <td>Strong high-propensity segment</td>
      <td>May exclude “near-miss” buyers &rarr; <em>risk of lost sales</em></td>
    </tr>
    <tr>
      <td><strong>Gains-Curve Optimized</strong></td>
      <td>896</td>
      <td>&asymp; 80% of all likely buyers</td>
      <td><strong>Best balance of cost and impact</strong></td>
    </tr>
    <tr>
      <td><strong>Entire Population</strong></td>
      <td>2,240</td>
      <td>100%</td>
      <td>Overspending on low-propensity customers</td>
    </tr>
  </tbody>
</table>

</div>



---

<!-- ### Final Recommendation -->

<div class="recommendation-box">

<p class="recommendation-title">
  🎯 <strong>Strategic Outreach Recommendation</strong>
</p>

<p>
To maximize both campaign ROI and conversion impact, outreach should focus on the 
<strong>top 896 customers</strong> as identified by the Gains-Curve analysis.
</p>

<ul>
  <li>Large enough to capture <strong>~80% of likely buyers</strong></li>
  <li>Small enough to <strong>avoid wasted effort & budget</strong></li>
  <li>Backed by predictive modeling and conversion probability</li>
</ul>

<p class="recommendation-bottom">
This ensures that marketing spend scales in proportion to conversion potential — 
<strong>aligning investment with expected return.</strong>
</p>

</div>


---

**Tags:** predictive analytics · marketing optimization · logistic regression · customer segmentation · campaign strategy
