class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :description, type: String
  field :price, type: Integer
  field :quantity, type: Integer
  field :category, type: String
end
