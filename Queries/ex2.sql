/* Write a query to return the count of employees in departments where the total salary paid in that department is greater than $5000,000.
The results should be ordered from highest to lowest total salary.*/

select 
    cd.department_name,
    count(e.id) as employee_count,
    sum(e.salary) as total_salary
from 
    data_sci.employees e
join 
    data_sci.company_departments cd on e.department_id = cd.id
group by 
    cd.department_name
having 
    sum(e.salary) > 5000000
order by 
    total_salary desc;
