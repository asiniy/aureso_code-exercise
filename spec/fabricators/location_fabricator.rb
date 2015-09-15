Fabricator(:location) do
  name { Faker::Address.street_name }
  address { "#{Faker::Address.street_address}, #{Faker::Address.secondary_address}" }
  organization
end
