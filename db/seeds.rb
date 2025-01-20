Product.create!(
    name: "Produto",
    description: "Produto muito legal.",
    price: 10,
    quantity: 5,
    category: "Geral",
    image: "/produto.png"
)

10.times do |i|
  Product.create!(
    name: "Produto #{i + 1}",
    description: "Produto muito legal.",
    price: 10,
    quantity: 5,
    category: "Geral",
    image: "/produto.png"
  )
end

puts "Produtos criados com sucesso!"
