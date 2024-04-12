select
  l_orderkey as order_key,
  l_quantity as order_quantity,
  l_extendedprice as order_price
from {{source('tpch','lineitem')}}