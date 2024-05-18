Select productname,
category,
subcategory,,sum(orderprofit) as customerprofit 

from {{ ref("stage_raworders") }}

group by 

productname,
category,
subcategory

