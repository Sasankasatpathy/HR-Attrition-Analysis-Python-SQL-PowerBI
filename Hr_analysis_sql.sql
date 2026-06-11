SELECT * from employee_attrition;

#1. Find Total Employess?
SELECT COUNT(*) AS TotalEmployees
FROM employee_attrition;

#2. calculate Attrition rate?
SELECT
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS AttritionRate
FROM employee_attrition;

#3. Find Attrition by Department?
SELECT
Department,
COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes'
THEN 1 ELSE 0 END) AttritionCount
FROM employee_attrition
GROUP BY Department;

#4. Find Attrition by Job role?
SELECT
JobRole,
COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes'
THEN 1 ELSE 0 END) AttritionCount
FROM employee_attrition
GROUP BY JobRole;

#5. Find Attrition By Salary slab?
SELECT
SalarySlab,
COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes'
THEN 1 ELSE 0 END) AttritionCount
FROM employee_attrition
GROUP BY SalarySlab;