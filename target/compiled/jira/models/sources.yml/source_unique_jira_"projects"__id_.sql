
    
    

select
    "id" as unique_field,
    count(*) as n_records

from SAPI_9119.jira."projects"
where "id" is not null
group by "id"
having count(*) > 1


