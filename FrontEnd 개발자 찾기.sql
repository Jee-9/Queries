-- 이거는 join 문제라기보단 비트연산 문제라고 보는게..
select 
    distinct(d.id) as ID,
    d.email as EMAIL,
    d.first_name as FIRST_NAME,
    d.last_name as LAST_NAME
from 
    developers as d
left join 
    skillcodes as s on (s.code & d.skill_code > 0)
where 
    s.category = 'Front End'
order by 
    ID asc