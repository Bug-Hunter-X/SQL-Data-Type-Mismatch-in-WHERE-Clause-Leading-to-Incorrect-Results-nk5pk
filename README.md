# SQL Data Type Mismatch Bug

This repository demonstrates a common SQL error caused by a data type mismatch in the `WHERE` clause of a query.  The query attempts to compare a numeric value with a column that's stored as text, resulting in unexpected behavior.

**Bug:**
The `salary` column in the `employees` table is unintentionally stored as a string (e.g., VARCHAR) rather than a numeric type (e.g., INT, DECIMAL).  This leads to incorrect results when filtering employees based on salary.

**Solution:**
The solution involves correcting the data type of the `salary` column to a suitable numeric type.  The existing data might need to be cleaned and converted to numeric format before altering the column definition. 

The provided files `bug.sql` and `bugSolution.sql` illustrate the erroneous query and its correction, respectively.