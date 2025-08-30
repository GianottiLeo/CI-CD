
with transform as (
select
    id,
    nome,
    empresa,
    site_empresa,
    cargo,
    descricao,
    last_update_date,
    count(*) as qtd_developer
from 
    {{ ref('inter_developer') }}
group by
    id,nome,empresa,site_empresa,cargo,descricao,last_update_date
)
select * from transform
