-- this query only returns reports about a specific type of crime in a specific city:
-- murders in sql city

select * 
from crime_scene_report 
where type = 'murder' 
and city = 'SQL City';

-- write a query that identifies the first witness:

select *
from person
where address_number = 
						(select max(address_number)
						from person)
						and address_street_name = 'Northwestern Dr'


-- write a query that identifies the second witness:

select *
from person
where name like 'Annabel%' and address_street_name = 'Franklin Ave';

-- write a query that shows the interview transcripts for our two subjects:

select p.name, i.transcript
from interview i
join person p on i.person_id = p.id
where p.name = 'Morty Schapiro' or p.name = 'Annabel Miller'


-- testing limits

/*
select p.name
from person p
where p.name = (select p.name
				from person p
				where address_number = 
									(select max(address_number)
									from person)
									and address_street_name = 'Northwestern Dr')
				or p.name = (select p.name
							from person p
							where name like 'Annabel%' 
							and address_street_name = 'Franklin Ave')
and -- ????????????????
select i.transcript
from interview i
where i.person_id = (select p.id
					from person p
					where address_number = 
										(select max(address_number)
										from person)
										and address_street_name = 'Northwestern Dr')
				or i.person_id = (select p.id
							from person p
							where name like 'Annabel%' 
							and address_street_name = 'Franklin Ave');
*/

-- find the murderer!

select p.name
from get_fit_now_check_in ch
join get_fit_now_member me on me.id = ch.membership_id
join person p on p.id = me.person_id
join drivers_license d on d.id = p.license_id
where ch.check_in_date like '%0109'
and me.membership_status = 'gold'
and me.id like '48Z%'
and d.plate_number like '%H42W%';

-- Jeremy Bowers
