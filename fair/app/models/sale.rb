class Sale
  include Mongoid::Document
  
  field :data_ini, type: Date
  field :data_fim, type: Date
  field :status, type: String
  field :fair_inventory_from, type: String
  field :date_closed, type: Date
  field :coments, type: String

  embeds_many :inventories
  embeds_many :item_sales
end
