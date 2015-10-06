json.array!(@sales) do |sale|
  json.extract! sale, :id, :data_ini, :data_fim, :status, :fair_inventory_from,:date_closed, :coments,
  :inventories[{:product,:fornecedor, :price_sale, :price_buy, :quantity, :unit_metter}],
  :item_sales[{:data_venda, :data_pag, :status, :valor_venda, :valor_pago, :product, :quantity}]
  json.url sale_url(sale, format: :json)
end
