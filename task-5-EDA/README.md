# Task 5: Exploratory Data Analysis (EDA) - Titanic Dataset

## 📌 Objective
Perform Exploratory Data Analysis (EDA) on the Titanic dataset to extract meaningful insights using **Pandas, Matplotlib, and Seaborn**.

---

## 📊 Steps Performed
1. **Dataset Overview**
   - Loaded the dataset
   - Checked structure with `.info()` and `.describe()`
   - Counted unique values with `.value_counts()`

2. **Data Cleaning**
   - Checked for missing values
   - Filled missing `Age` with median
   - Filled missing `Embarked` with mode
   - Dropped unused columns (`Cabin`, `Ticket`)

3. **Univariate Analysis**
   - Age distribution (Histogram)
   - Fare distribution (Histogram)
   - Survival rate by gender (Bar chart)
   - Survival rate by passenger class (Bar chart)

4. **Bivariate Analysis**
   - Boxplot of Fare vs Passenger Class
   - Scatterplot of Age vs Fare by Survival
   - Heatmap for correlation

5. **Multivariate Analysis**
   - Pairplot of selected features

---

## 🔍 Key Insights
- **Women had higher survival rates** compared to men.
- **First-class passengers** had the highest survival probability.
- **Higher fares** generally correlated with higher survival rates.
- Most passengers were in the **20–40 age range**.

---

## 📦 Deliverables
- `Titanic_EDA.ipynb` → Full Python code & insights
- `Titanic_EDA_Report.pdf` → Visuals + explanations
- Dataset 
  
---

## 🛠️ Tools Used
- Python 3.x
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## 🚀 How to Run
1. Clone this repo or download the files
2. Install dependencies:
   ```bash
   pip install pandas matplotlib seaborn
