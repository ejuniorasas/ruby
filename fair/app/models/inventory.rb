class Inventory
  include Mongoid::Document
  
  extend ApplicationDao

  field :product, type: String
  field :fornecedor, type: String
  field :price_sale, type: Float
  field :price_buy, type: Float
  field :quantity, type: Float
  field :unit_metter, type: String

  embedded_in :sale
end
