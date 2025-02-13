12.times do |i|
  Product.create!(
    name: "Produto #{i + 1}",
    description: "Produto muito legal.",
    price: rand(i..100.0),
    quantity: rand(i..10),
    category: "Geral",
    image: "/produto.png"
  )
end

puts "Produtos criados com sucesso!"
