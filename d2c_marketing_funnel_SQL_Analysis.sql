use d2c_marketing_funnel;
select * from funnel;
--Q1 what the summary of user Type 
SELECT user_type, count(user_id) as User, round(sum(revenue), 0) as revenue
FROM funnel
GROUP BY user_type
ORDER BY  revenue , COUNT(user_id) ASC;
--Q2 
SELECT channel, round(sum(revenue), 0) as revenue
FROM funnel
GROUP BY channel
ORDER BY  revenue DESC;

--Q3 which device contribute higher revenue ?
Select device, count(user_id) As number_of_customer, round(sum(revenue), 0) as revenue
from funnel
group by device
order by revenue desc;
