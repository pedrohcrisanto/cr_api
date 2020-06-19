medicine_name = %w(Doril Dorflex Aspirina Enxaq Engov Viagra)
5.times do |i|
  Medicine.create!(
      name: medicine_name.shuffle.first,
      quantity: Faker::Number.number(digits: 2),
      value: Faker::Number.decimal(l_digits: 2),
      stock: Faker::Number.number(digits: 3)
  )
end

5.times do |i|
  Customer.create!(
      name: Faker::Name.name
  )
end
5.times do |i|
  Cart.create!(
      customer: Customer.all.sample
  )
end
5.times do |i|
  CartItem.create!(
      cart: Cart.all.sample,
      medicine: Medicine.all.sample,
      quantity: Faker::Number.number(digits: 2),
  )
end