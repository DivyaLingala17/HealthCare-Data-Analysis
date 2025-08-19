create database Health_Care

select*from HealthCare_Analysis;


select TOP 10 * from HealthCare_Analysis;


select Count(*) AS total_records from HealthCare_Analysis;


select Count(DISTINCT TRIM (Medical_Condition)) AS total_conditions from HealthCare_Analysis;


select column_name, Data_Type
from INFORMATION_SCHEMA.columns
where Table_Name = 'HealthCare_Analysis';


select Gender,Count(*) AS patient_count
from HealthCare_Analysis
GROUP BY Gender;


select Age_Group, count(*) AS count
from HealthCare_Analysis
GROUP BY Age_Group
ORDER BY count DESC;


select
SUM(CASE WHEN patient_id IS NULL THEN 1 ELSE 0 END) AS null_patient_id,
SUM(CASE WHEN admit_date IS NULL THEN 1 ELSE 0 END) AS null_admit_date,
SUM(CASE WHEN discharge_date IS NULL THEN 1 ELSE 0 END) AS null_discharge_date,
SUM(CASE WHEN bill_amount IS NULL THEN 1 ELSE 0 END) AS null_bill_amount,
SUM(CASE WHEN bill_per_day IS NULL THEN 1 ELSE 0 END) AS null_bill_per_day
from HealthCare_Analysis;


select*from HealthCare_Analysis
WHERE Bill_Amount<=0;


select*from HealthCare_Analysis
WHERE Length_of_Stay < 0 OR Length_of_Stay > 365;


select patient_id, admit_date, previous_discharge_date
from HealthCare_Analysis
WHERE ISDATE(CONVERT(VARCHAR, admit_date)) = 0
  OR ISDATE(CONVERT(VARCHAR, previous_discharge_date)) = 0;


select weekend_admission_flag, count(*) AS count
from HealthCare_Analysis
Group by Weekend_Admission_flag;


select Top 10 patient_id, name, sum(bill_amount) as total_bill
from HealthCare_Analysis
group by Patient_id, name
order by total_bill DESC


select Top 10 medical_condition, count(*) as case_count
from HealthCare_Analysis
group by Medical_Condition
order by case_count DESC


select medical_condition, ROUND(AVG(Length_of_Stay),2) AS avg_stay_days
from HealthCare_Analysis
group by Medical_Condition
order by avg_stay_days


select billing_category, sum(bill_amount) as total_revenue
from HealthCare_Analysis
group by Billing_Category
order by total_revenue DESC


select FORMAT(admit_date,'yyyy-MM') AS month, COUNT(*) AS admissions
from HealthCare_Analysis
GROUP BY FORMAT(admit_date,'yyyy-MM')
ORDER BY month;


select*from HealthCare_Analysis

