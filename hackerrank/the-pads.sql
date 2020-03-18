SELECT * FROM (
  SELECT CONCAT(name, '(', SUBSTRING(occupation, 1, 1), ')')
  FROM occupations
  ORDER BY name ASC
) temp1
UNION
SELECT * FROM (
  SELECT concat('There are total ', count(*), ' ', LOWER(occupation), 's.')
  FROM occupations
  GROUP BY occupation
  ORDER BY COUNT(*)
) temp2

 -- Someone else's answer
 -- SELECT CONCAT(RTRIM(Name),'(',LEFT(Occupation,1),')')
 -- FROM Occupations
 -- ORDER BY Name ASC;
 -- SELECT CONCAT ('There are total ',Count(),' ',LOWER(Occupation),'s.')
 -- From Occupations
 -- GROUP BY Occupation
 -- Order BY Count() ASC;

select * from 
( SELECT CONCAT(NAME,'(', SUBSTRING(OCCUPATION, 1, 1), ')') c 
FROM OCCUPATIONS) t 
union select * from 
( select CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', CONCAT(LOWER(OCCUPATION), 's.')) 
from OCCUPATIONS GROUP BY OCCUPATION ) t2 
order by c asc;
