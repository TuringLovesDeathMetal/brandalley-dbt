SELECT id, order_item_number, sku, order_increment_id, qty, return_code, created_at, xml_created_at, exported_to_sap, wh_line_id, return_service, creditmemo_id, cast(null as decimal(1)) as maxdate FROM {{ source('streamkap', 'bacore_stock_return') }}