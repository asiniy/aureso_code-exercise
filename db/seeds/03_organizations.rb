Country.all.each do |country|
  organizations = Fabricate.times(rand(5..10), :organization, country: country)
  rand(2..6).times { Fabricate(:organization, parent: organizations.sample, country: country) }
end

puts 'organizations imported'
