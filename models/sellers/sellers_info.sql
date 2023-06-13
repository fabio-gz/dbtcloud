{{
    config(
        materialized="table",
        alias="sellers_info",
        schema="sellers",
        persist_docs={"relation": true, "columns": true}
    )
}}

SELECT id,
        signup_date
FROM {{ref('signups')}}