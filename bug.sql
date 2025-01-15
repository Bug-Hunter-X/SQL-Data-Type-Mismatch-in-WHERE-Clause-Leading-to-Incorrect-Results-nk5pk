```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might encounter an error if the `salary` column's data type is not numeric.  If it's stored as a string or text, a comparison with a numeric value (like `100000`) will lead to unexpected results or errors depending on the database system.  Implicit type conversions may or may not work as intended, causing inaccurate results or runtime exceptions. 