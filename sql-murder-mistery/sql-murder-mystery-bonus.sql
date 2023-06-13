/*
Congrats, you found the murderer! But wait, there's more... 
If you think you're up for a challenge, 
try querying the interview transcript of the murderer to find the real villain behind this crime. 
If you feel especially confident in your SQL skills, 
try to complete this final step with no more than 2 queries. 
Use this same INSERT statement with your new suspect to check your answer.
*/

select p.name, i.transcript
from interview i
join person p on i.person_id = p.id
where p.name = 'Jeremy Bowers';

-- transcript of the murderer:

/*
I was hired by a woman with a lot of money. 
I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 times in December 2017.
*/

select p.name
from facebook_event_checkin fb
join person p on p.id = fb.person_id
join drivers_license d on d.id = p.license_id
join income i on i.ssn = p.ssn
where fb.event_name = 'SQL Symphony Concert'
and fb.date like '201712%'
and d.car_model = 'Model S'
and d.hair_color = 'red'
and d.height > '65';
-- and i.annual_income > '300000';

-- Miranda Priestly

/*
Congrats, you found the brains behind the murder! 
Everyone in SQL City hails you as the greatest SQL detective of all time. 
Time to break out the champagne!
*/