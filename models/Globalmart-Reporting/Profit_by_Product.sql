Select 
productname,
category,
subcategory,
sum(orderprofit) as profit

from {{ ref("stage_raworders") }}

group by 
productname,
category,
subcategory


