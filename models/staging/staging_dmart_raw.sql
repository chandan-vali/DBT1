select
Order_ID,
upper(Customer_Name),
Category,
Sub_Category,
City,
coalesce(try_to_date(Order_Date,'dd-mm-yyyy'),
try_to_date(Order_Date,'mm/dd/yyyy')) as Order_Date,
Region,
Sales,
Discount,
Profit,
State
from dev_db.raw.dmart_raw


