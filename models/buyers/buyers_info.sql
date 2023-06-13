{{
    config(
        materialized="table",
        alias="buyers_info",
        schema="buyers",
        persist_docs={"relation": true, "columns": true}
    )
}}

SELECT user_id,
        user_email
FROM {{ref('signups')}}