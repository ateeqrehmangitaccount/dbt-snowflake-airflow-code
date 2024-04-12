select   
  orders.order_status,
  customer.customer_key,
  customer.customer_address,
  lineitem.order_quantity
from 
  {{ref('stg_tpch_orders')}} as orders
join
  {{ref('stg_tpch_customer')}} as customer
    on orders.customer_key=customer.customer_key
join
  {{ref('stg_tpch_lineitem')}} as lineitem
    on orders.order_key=lineitem.order_key

