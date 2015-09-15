class Complement
  include Mongoid::Document
  field :nome, type: String
  field :tipo, type: String
  field :grouping, type: String
  field :inf, type: String
  field :coments, type: String
end
