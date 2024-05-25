config{{materialized='view', schema='STG'}}

Select
      Sale_Id,
      Product_Id,
      Customer_Id,
      Store_Id,
      Sale_Date,
      Quantity,
      Total_Amount,
      Is_Current,
      Valid_from,
      Valid_to,
      Last_Updated
From {{source ('BusinessOperations', 'Sales')}}