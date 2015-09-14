puts 'seeds loading started'

ActionMailer::Base.perform_deliveries = false

ActiveRecord::Base.transaction do
  Dir[Rails.root.join('db/seeds/*.rb')].sort.each { |f| require f }
end

ActionMailer::Base.perform_deliveries = true

puts 'seeds loading ended'
