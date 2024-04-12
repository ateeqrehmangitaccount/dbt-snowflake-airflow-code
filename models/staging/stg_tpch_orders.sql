select
  o_custkey as customer_key,
  o_orderkey as order_key,
  o_orderstatus as order_status,
  o_totalprice as total_price
from {{source('tpch','orders')}}