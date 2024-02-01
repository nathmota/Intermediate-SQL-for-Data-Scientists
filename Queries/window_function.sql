/* Write a query to return:
department_id, 
last_name, 
salary, 
sum of all salaries in a department
Do not use a subquery */

select 
    department_id,
    last_name,
    salary,
	  sum(salary) over (partition by department_id)
from 
    data_sci.employees;
