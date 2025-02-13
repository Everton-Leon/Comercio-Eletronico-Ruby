class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :description, type: String
  field :price, type: BigDecimal
  field :quantity, type: Integer
  field :category, type: String
  field :image, type: String
end
