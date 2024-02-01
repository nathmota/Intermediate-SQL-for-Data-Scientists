/* Using CUBE across dimensions to calculate subtotals for region, subregion and country.*/

select
    cr.country_name,
    cr.region_name,
    cd.department_name,
    count(e.*)
from
    data_sci.employees e
join
    data_sci.company_regions cr
on
    e.region_id = cr.id
join
    data_sci.company_departments cd
on
    e.department_id = cd.id
group by
    cube(cr.country_name,
    cr.region_name,
    cd.department_name)
order by
    cr.country_name,
    cr.region_name,
    cd.department_name
