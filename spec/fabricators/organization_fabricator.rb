Fabricator(:organization) do
  name { Faker::Company.name }
  public_name { "#{Faker::Company.name} #{Faker::Company.suffix}" }
  type { Organization.types.values.sample }
  pricing_policy { Organization.pricing_policies.values.sample }
  country
end
