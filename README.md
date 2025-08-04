Task-1-Data-Cleaning
📊 Task 1: Advanced Data Cleaning – Customer Personality Analysis

This project is part of a Data Analyst Internship selection process. The goal was to perform advanced data cleaning and preprocessing using Python (Pandas) on a real-world dataset from Kaggle.

📁 Dataset
**Customer Personality Analysis**  
Source: [Kaggle](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)  
Format: `.csv` (tab-separated)

🧠 Objectives Achieved

✅ Identify and handle missing values  
✅ Remove duplicates  
✅ Standardize inconsistent text formats  
✅ Convert and engineer date fields  
✅ Detect and treat outliers  
✅ Create meaningful features  
✅ Save cleaned dataset and summary visuals  

🔧 Tools & Libraries

- Python 3.x
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Google cloab

🧼 Cleaning Summary
| Step                         | Description |
|-----------------------------|-------------|
| 🔠 Column Normalization      | Renamed columns to `snake_case` and lowercase |
| 📉 Missing Values            | Filled missing `income` values using median grouped by `education` |
| 📁 Duplicates                | Removed all duplicate rows |
| 📝 Text Standardization      | Fixed inconsistent casing in `education` and merged values in `marital_status` |
| 🕓 Date Conversion           | Converted `dt_customer` to datetime format and added `customer_tenure_days` |
| 💰 Outlier Treatment         | Applied IQR method to cap/floor extreme `income` values |
| 🔧 Feature Engineering       | Created `total_spent`, `avg_spend_per_child`, and `campaign_success_rate` |
| 📊 Visuals                  | Generated boxplot (income) and heatmap (missing values) |
