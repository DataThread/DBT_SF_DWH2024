{{config (materialized='view' , schema = 'STG')}}

Select
      Product_ID,
      Product_Name,
      Category,
      Price,
      Date_Added,
      Date_Modified,
      Is_Current,
      Valid_from,
      Valid_to,
      Last_Updated
From {{ source('BusinessOperations', 'Products') }}