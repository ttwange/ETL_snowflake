{{ config(
    materialized = 'table', 
    tags = ["source","kafka"]
) }}

select
    Minutes1UTC,
    CO2Emission,
    ProductionGe100MW,
    ProductionLt100MW,
    SolarPower,
    OffshoreWindPower,
    OnshoreWindPower,
    Exchange_Sum,
    Exchange_DK1_DE,
    Exchange_DK1_NL,
    Exchange_DK1_GB,
    Exchange_DK1_NO,
    Exchange_DK1_SE,
    Exchange_DK1_DK2,
    Exchange_DK2_DE,
    Exchange_DK2_SE,
    Exchange_Bornholm_SE
from
    {{ var('kafka_topic') }}
