```sql
-- Correct the data type of the salary column (if possible)
ALTER TABLE employees MODIFY COLUMN salary DECIMAL(10, 2);

-- Update the data to handle the conversion
UPDATE employees SET salary = CAST(salary AS DECIMAL(10,2));

-- Verify if the data types have been updated correctly
SELECT DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'employees' AND COLUMN_NAME = 'salary';

-- Now, the query should work correctly
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```