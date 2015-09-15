[![Build Status](https://travis-ci.org/asiniy/aureso_code-exercise.png?branch=master)](https://travis-ci.org/asiniy/aureso_code-exercise)
[![Code Climate](https://codeclimate.com/github/asiniy/aureso_code-exercise/badges/gpa.svg)](https://codeclimate.com/github/asiniy/aureso_code-exercise)

Hey, Adam!

This is my testing exercise for [Aureso](http://aureso.net). You can test it online at [heroku](https://aureso-exercise.herokuapp.com/).

Few notes:

0. I've added authentication through devise. Specification doesn't give answer to question where should I use it. You can login and check [admin](https://aureso-exercise.herokuapp.com/) directory.

0. I've created all countries. We have 250 countries instead of 3.

0. I've created seed. Now you can immediately start develop application after cloning.

0. Model type prices section was little undefinably to me. I've done it as understand. I can change the code immediately.

0. Testing exercise was quiet simple to me. I've added a few niceties to demonstrate my speed & skills, you can see them below.

### Calling a model type prices

There are nice forms at [heroku](https://aureso-exercise.herokuapp.com/), or you can do it using CURL:

```
curl --data "base_price=100" https://aureso-exercise.herokuapp.com/model_type_prices/39.json
```

where `39` is the organization id.

### What's under the hood?

* Bootstrap w/ [sandstone theme](https://bootswatch.com/sandstone/)
* [Devise](https://github.com/plataformatec/devise)
* [Sendgrid](https://addons.heroku.com/sendgrid) heroku plugin. It helps devise deliver confirmation letters.
* [Puma](https://github.com/puma/puma) as [recommended heroku rails server](https://devcenter.heroku.com/changelog-items/594)
* [Countries gem](https://github.com/hexorx/countries) which generate all 250 countries with their codes after `rake db:seed`
* [Active admin](http://activeadmin.info/) which allow to handle database records

### Development & test stack

* Classic ruby testing stack: [rspec](https://github.com/rspec/rspec-rails), [faker](https://github.com/stympy/faker), [fabrication](http://www.fabricationgem.org/)
* [Letter Opener](https://github.com/ryanb/letter_opener) let you catch devise emails in development
* [Travis-CI integration](https://travis-ci.org/asiniy/aureso_code-exercise)
* [Code climate integration](https://codeclimate.com/github/asiniy/aureso_code-exercise)
* [WebMock](https://github.com/bblimke/webmock) for mocking margin queries to external sites

### Using at local machine

```
git clone git@github.com:asiniy/aureso_code-exercise.git
cd aureso_code-exercise
bundle install
rake db:create
rake db:migrate
rake db:seed
rails s # open your http://localhost:3000
```
