# 2세대 찾기
select *
from ecoli_data
where parent_id is not null
    and parent_id IN (select id from ecoli_data where parent_id is null)
    
# 3세대 찾기
SELECT 
    ID
FROM
    ECOLI_DATA
WHERE parent_id IN (
    select id
    from ecoli_data
    where parent_id is not null
        and parent_id IN (select id from ecoli_data where parent_id is null))