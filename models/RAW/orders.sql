{{

config(materialized = 'table')

}}

Select * from {{source("GLOBALMART",'orders') }}