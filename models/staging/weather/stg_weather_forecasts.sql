{{ config(materialized='view') }}

WITH raw_data AS (
    SELECT * FROM {{ source('weather_source', 'raw_forecast') }}
)

SELECT
    -- Extraction des données du Variant 'json_data'
    json_data:latitude::float AS latitude,
    json_data:longitude::float AS longitude,
    json_data:current:temperature_2m::float AS temperature,
    json_data:current:time::timestamp AS observation_time,
    current_timestamp() AS dbt_loaded_at
FROM raw_data
