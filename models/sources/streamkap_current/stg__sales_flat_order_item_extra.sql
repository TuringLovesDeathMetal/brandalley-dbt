{{config(
    materialized='incremental',
    unique_key='line_id'
)}}

{{streamkap_incremental_on_source_to_current(source_name='sales_flat_order_item_extra', id_field=config.get('unique_key'))}}