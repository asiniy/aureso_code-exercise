Fabricator(:country) do
  name { Faker::Address.country }
  country_code { Faker::Address.country_code }
end
