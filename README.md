# Task 7 - Creating Views

This task demonstrates how to use SQL **views** to abstract, secure, and reuse query logic.

##  Objective

To create and use views in SQL for:

- Simplifying complex queries
- Providing data abstraction
- Implementing row-level filters

##  Concepts Covered

- `CREATE VIEW`
- `WITH CHECK OPTION`
- Using views for joins, aggregations
- Dropping views

##  Tools Used

- DB Browser for SQLite / MySQL Workbench

##  Tables Used

### `departments`

- department_id (PK)
- department_name
- location

### `employees`

- employee_id (PK)
- name
- department_id (FK)
- salary

##  Views Created

1. **high_earners**
   - Filters employees with salary > 60,000
2. **department_avg_salary**
   - Shows average salary per department
3. **employee_details**
   - Joins employees and departments for better readability
4. **mumbai_employees**
   - Filters employees working in Mumbai using `WITH CHECK OPTION`

##  Sample Queries

```sql
SELECT * FROM high_earners;
SELECT * FROM department_avg_salary;
SELECT * FROM employee_details;
```

##  View Maintenance

```sql
-- Drop a view
DROP VIEW high_earners;
```

##  Files Included

- `task7.sql` – table creation, view creation, and query examples
