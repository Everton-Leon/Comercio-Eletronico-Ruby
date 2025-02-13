class Pedido
  include Mongoid::Document
  include Mongoid::Timestamps

  field :pedidos, type: Array, default: []
end
