Fabricate(:user, username: 'Adam', email: 'adam@aureso.net', admin: true)
Fabricate(:user, username: 'Alex', email: 'alex@aureso.net', admin: false)

User.all.each { |u| u.confirm! }

puts 'users loaded'
