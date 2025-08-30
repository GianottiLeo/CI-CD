with source as (
select 
    id,
    name as nome,
    company as empresa,
    site_company as site_empresa,
    position as cargo,
    description as descricao,
    CURRENT_TIMESTAMP() as last_update_date
from 
    {{ ref('stg_developer') }}
)
select * from source
