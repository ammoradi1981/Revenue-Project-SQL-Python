select*from country
select*from payment

select country.country,date(payment.payment_date) as day,sum(payment.amount) as total_revenue,  count(*) as count
from payment inner join customer on payment.customer_id=customer.customer_id inner join
address
on customer.address_id=address.address_id inner join 
city
on address.city_id=city.city_id inner join
country
on city.country_id=country.country_id
group by country.country,date(payment.payment_date)
order by country.country, day

