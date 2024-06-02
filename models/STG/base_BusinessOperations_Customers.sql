with source as (
      select * from {{ source('BusinessOperations', 'Customers') }}
),
renamed as (
    select
        {{ adapter.quote("CUSTOMER_ID") }},
        {{ adapter.quote("CUSTOMER_CODE") }},
        {{ adapter.quote("NAME") }},
        {{ adapter.quote("EMAIL") }},
        {{ adapter.quote("ADDRESS") }},
        {{ adapter.quote("DATE_CREATED") }},
        {{ adapter.quote("DATE_MODIFIED") }},
        {{ adapter.quote("EFFECTIVE_DATE") }},
        {{ adapter.quote("EXPIRY_DATE") }},
        {{ adapter.quote("IS_CURRENT") }},
        {{ adapter.quote("VALID_FROM") }},
        {{ adapter.quote("VALID_TO") }},
        {{ adapter.quote("LAST_UPDATED") }}

    from source
)
select * from renamed
  