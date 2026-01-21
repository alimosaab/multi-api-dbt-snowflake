# Modern Data Stack Multi-API Project

## Présentation
Projet d'architecture de données moderne utilisant **dbt Core**, **Airbyte**, **Snowflake** et **Elementary**.
L'objectif est de croiser des données provenant de trois sources distinctes (Météo, Finance, E-commerce).

## Stack Technique
- **Transformation** : dbt Core (v1.11.2)
- **Ingestion** : Airbyte (Finance, E-commerce) & Python (Météo)
- **Entrepôt** : Snowflake (Architecture RAW / ANALYTICS)
- **Qualité & Style** : Elementary & SQLFluff

## Structure Snowflake
- **Database RAW** : Schémas `WEATHER`, `FINANCE`, `ECOMMERCE`
- **Database ANALYTICS** : Schémas `STAGING`, `MART`

## Installation
1. Activer l'environnement : `source dbt-env/bin/activate`
2. Installer les dépendances : `dbt deps`
