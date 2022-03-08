
    
    

select
    "project_id" as unique_field,
    count(*) as n_records

from SAPI_9119."WORKSPACE_822221066"."project"
where "project_id" is not null
group by "project_id"
having count(*) > 1


