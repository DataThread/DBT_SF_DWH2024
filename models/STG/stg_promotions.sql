{{config(materialized='view' , schema = 'STG')}}

Select
      Promotion_Id,
      Promotion_Name,
      Start_Date,
      End_Date,
      Is_Current,
      Valid_from,
      Valid_to,
      Last_Updated
From {{source ('BusinessOperations', 'Promotions')}}