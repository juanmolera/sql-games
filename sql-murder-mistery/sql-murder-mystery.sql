-- murders in sql city

SELECT * 
FROM crime_scene_report 
WHERE type = 'murder' 
AND city = 'SQL City';

-- 1st witness

select *
from person
where address_number = 
						(select max(address_number)
						from person)
						and address_street_name = 'Northwestern Dr'


-- 2nd witness

select *
from person
where name like 'Annabel%' and address_street_name = 'Franklin Ave';