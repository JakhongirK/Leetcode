--https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
select 
  e1.name 
from 
  Employee as e1 
  left join Employee as e2 on e1.id = e2.managerid 
group by 
  e1.id 
having 
  count(e2.name) >= 5;
