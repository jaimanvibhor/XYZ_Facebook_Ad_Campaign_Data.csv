--  Question-1:	Calculate the total conversion
select sum(Total_Conversion)from case1;

-- Question-2: 	Calculate the click-through rate for each campaign
select xyz_campaign_id,sum(Clicks) as click_through_rate from case1 group by xyz_campaign_id;

-- Question-3: 	Calculate the cost-per-conversion per fb_campaign_id
select fb_campaign_id, sum(Spent) as cost_per_conversion from case1 group by fb_campaign_id ;

-- Question-4: 	Caclulate the cost-per-approved-conversion per xyz_campaign_id
select xyz_campaign_id, sum(Approved_Conversion*Spent) as cost_per_approved_conversion from case1 group by xyz_campaign_id;

-- Question-5: 	Calculate the cost per click
select Clicks,Clicks/Spent as cost_per_click  from case1 order by Clicks desc;

-- Question-6: 	Which has a higher click through rate - male or female?
select gender, sum(Clicks/Spent) as click_through_rate from case1 group by gender;

-- Question-7:	Calculate the cost per impression for male?
select  gender,sum(Clicks/Spent) as cost_per_impression from case1 where gender= "M";
