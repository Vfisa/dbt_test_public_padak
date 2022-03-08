
    
    

select
    sfdc_id as unique_field,
    count(*) as n_records

from SAPI_9119.WORKSPACE_822221066.project
where sfdc_id is not null
group by sfdc_id
having count(*) > 1


