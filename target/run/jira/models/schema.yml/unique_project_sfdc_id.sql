select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    sfdc_id as unique_field,
    count(*) as n_records

from SAPI_9119.WORKSPACE_822221066.project
where sfdc_id is not null
group by sfdc_id
having count(*) > 1



      
    ) dbt_internal_test