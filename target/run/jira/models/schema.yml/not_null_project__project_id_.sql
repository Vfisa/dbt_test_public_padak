select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from SAPI_9119."WORKSPACE_822221066"."project"
where "project_id" is null



      
    ) dbt_internal_test