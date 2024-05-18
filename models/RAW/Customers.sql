{{

config(materialized = 'table')

}}

select * from {{source("GLOBALMART",'customers') }}