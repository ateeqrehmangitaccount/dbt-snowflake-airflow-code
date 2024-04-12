select 
  c_custkey as customer_key,
  c_address as customer_address
from {{source('tpch','customer')}}  