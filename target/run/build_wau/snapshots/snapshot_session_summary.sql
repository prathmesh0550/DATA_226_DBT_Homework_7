
      
  
    

create or replace transient table PRATHMESH_1.snapshot.snapshot_session_summary
    
    
    
    as (
    

    select *,
        md5(coalesce(cast(sessionId as varchar ), '')
         || '|' || coalesce(cast(ts as varchar ), '')
        ) as dbt_scd_id,
        ts as dbt_updated_at,
        ts as dbt_valid_from,
        
  
  coalesce(nullif(ts, ts), null)
  as dbt_valid_to
from (
        



SELECT * FROM PRATHMESH_1.ANALYTICS.session_summary

    ) sbq



    )
;


  
  