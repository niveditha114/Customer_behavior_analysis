use customer;

select * from `supermarket analysis`;

#Frequent buyers

alter table `supermarket analysis`
change  `ï»¿Invoice ID`  invoice varchar(20);

#frequent buyers by invoice count per gender
select Gender, count(invoice)  as total_purchase
 from  `supermarket analysis`
 group by gender
 order by total_purchase desc;
 
 #Repeated customer
 select `customer type`, count(*) 
 from `supermarket analysis`
 group by `customer type`;
 
 #Monthly sales
 
 SELECT DATE_FORMAT(STR_TO_DATE(`Date`, '%c/%e/%Y'), '%Y-%m') AS Month1,
SUM(`gross income`) AS Total_sales
FROM `supermarket analysis`
GROUP BY Month1
ORDER BY Month1;

select `Product line`, sum(`gross income`) as revenue
from `supermarket analysis`
group by `product line`
order by revenue desc;

select Payment, Count(*) as counts
 from `supermarket analysis`
 group by Payment;
 
 select Gender, avg(`gross income`) as avgs
 from `supermarket analysis`
 group by Gender;
 
 
 