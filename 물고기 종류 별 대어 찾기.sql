select 
    fi.ID as ID,
    fni.fish_name as FISH_NAME,
    fi.LENGTH as LENGTH
from 
    (select 
        fish_type as t,
        max(ifnull(length, 10)) as m
    from fish_info
    group by fish_type) AS t1
inner join 
    fish_info AS fi ON (t1.t = fi.fish_type AND t1.m = fi.length)
left join
    fish_name_info AS fni ON (t1.t = fni.fish_type)
