Select 
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercostprice as orderprofit,
c.Customername,
c.segment,
c.country,
p.productname,
p.category,
p.subcategory

from {{ ref("orders")}} as o 
left join {{ ref("Customers")}} as c on o.customerid = c.customerid
left join {{ ref("Products")}} as p on p.productid = o.productid
