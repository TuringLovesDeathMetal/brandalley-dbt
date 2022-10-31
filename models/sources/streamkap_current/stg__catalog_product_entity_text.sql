{{config(
    materialized='incremental',
    unique_key='value_id',
	cluster_by='value_id',
)}}

{{streamkap_incremental_on_source_to_current(source_name='catalog_product_entity_text', id_field=config.get('unique_key'))}}