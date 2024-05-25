config {{materialized = 'view', schema = 'STG'}}

Select
      Time_Id,
      Date,
      Weekday,
      Month,
      Year,
      Is_Holiday,
      Is_Current,
      Valid_from,
      Valid_to,
      Last_Updated
From {{source ('BusinessOperations' , 'Time')}}