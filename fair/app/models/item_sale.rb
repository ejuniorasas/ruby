class ItemSale
  include Mongoid::Document
  
  extend ApplicationDao
  
  field :data_venda, type: Date
  field :data_pag, type: Data
  field :status, type: String
  field :valor_venda, type: Float
  field :valor_pago, type: Float
  field :product, type: String
  field :quantity, type: Float

  embedded_in :sale
end
