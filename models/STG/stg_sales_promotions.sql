{{config(materialized='view' , schema='STG')}}

Select
      Sale_id,
      Promotion_Id,
      Applied_Date,
      Is_Current,
      Valid_from,
      Valid_to,
      Last_Updated
From {{source ('BusinessOperations', 'Sales_Promotions')}}