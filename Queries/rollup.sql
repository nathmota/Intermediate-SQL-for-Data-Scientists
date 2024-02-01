/* ROLLUPS or subgroup aggregates according to the structure of the hierarchy you have.
In this case, it's going to add the subtotal regarding all the regions for each country.*/

select
    cr.country_name, cr.region_name, count(e.*)
from
    data_sci.employees e
join
    data_sci.company_regions cr
on
    e.region_id = cr.id
group by
    rollup(cr.country_name, cr.region_name)
order by
    cr.country_name, cr.region_name
