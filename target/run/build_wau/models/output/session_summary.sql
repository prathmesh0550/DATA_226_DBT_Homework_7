
  
    

create or replace transient table PRATHMESH_1.analytics.session_summary
    
    
    
    as (WITH  __dbt__cte__user_session_channel as (
SELECT
    userId,
    sessionId,
    channel
FROM PRATHMESH_1.raw.user_session_channel
),  __dbt__cte__session_timestamp as (
SELECT
    sessionId,
    ts
FROM PRATHMESH_1.raw.session_timestamp
), u AS (
    SELECT * FROM __dbt__cte__user_session_channel
), st AS (
    SELECT * FROM __dbt__cte__session_timestamp
)
SELECT u.userId, u.sessionId, u.channel, st.ts
FROM u
JOIN st ON u.sessionId = st.sessionId
    )
;


  