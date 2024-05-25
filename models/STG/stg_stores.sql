config {{materialized='view', schema='STG'}}

Select
      Store_Id,
      Store_Name,
      Location,
      Manager,
      Is_Current,
      Valid_from,
      Valid_to,
      Last_Updated
From {{source ('BusinessOperations', 'Stores')}}