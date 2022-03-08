begin;
    
        
        
    

    

    merge into SAPI_9119."WORKSPACE_822221066"."project" as DBT_INTERNAL_DEST
        using SAPI_9119."WORKSPACE_822221066"."project__dbt_tmp" as DBT_INTERNAL_SOURCE
        on 
            DBT_INTERNAL_SOURCE."project_id" = DBT_INTERNAL_DEST."project_id"
        

    
    when matched then update set
        "project_id" = DBT_INTERNAL_SOURCE."project_id","project_key" = DBT_INTERNAL_SOURCE."project_key","project_name" = DBT_INTERNAL_SOURCE."project_name","project_category_name" = DBT_INTERNAL_SOURCE."project_category_name","archived" = DBT_INTERNAL_SOURCE."archived","sfdc_id" = DBT_INTERNAL_SOURCE."sfdc_id","budget" = DBT_INTERNAL_SOURCE."budget","hour_rate" = DBT_INTERNAL_SOURCE."hour_rate"
    

    when not matched then insert
        ("project_id", "project_key", "project_name", "project_category_name", "archived", "sfdc_id", "budget", "hour_rate")
    values
        ("project_id", "project_key", "project_name", "project_category_name", "archived", "sfdc_id", "budget", "hour_rate")

;
    commit;