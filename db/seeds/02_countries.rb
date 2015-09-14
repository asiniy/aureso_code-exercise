ISO3166::Country.all.each do |country|
  Country.create!(name: country.data['name'], country_code: country.data['country_code'])
end

puts 'countries loaded'
