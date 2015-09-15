Organization.find_each do |organization|
  Fabricate.times(2, :location, organization: organization)
end

puts 'locations loaded'
