# Team Interval

THE premier application for allowing sports organizations to communicate
effectively.

## Installing:

**Install Gem Dependencies**

  bundle install

**Setup Your Database**

Edit the database.yml to match your local setup.

  cp database.yml.sample database.yml

Create the databases, load the schema and seed the db:

  rake db:setup

Run the app:

  unicorn

Or:

  rails s



## Preferences:

* Source control: [git](http://git-scm.com/)
* Dev/Production webserver: [unicorn](http://unicorn.bogomips.org/)
* Error messaging: [Better Errors](https://github.com/charliesome/better_errors)
* Ruby Versioning: [RVM](https://rvm.io/)

## Ruby on Rails

This application requires:

* Ruby version 1.9.3
* Rails version 3.2.11

## Database

This application uses [PostgreSQL](http://www.postgresql.org/) with [ActiveRecord](http://guides.rubyonrails.org/active_record_querying.html).

## Rake Tasks

These tasks assume that you have access to the team-interval and team-interval-staging heroku apps. They also assume
that your development database is called `team_interval_development`

* Create production db backup `bundle exec rake data:dump`
* Sync staging db with most recent production db dump `bundle exec rake data:sync:staging`
* Sync local db with most recent produciton db dump `bundle exec rake data:sync:local`

## Development

* Template Engine: [Haml](http://haml.info/)
* Front-end Preprocessors: [CoffeeScript](http://coffeescript.org/), [SCSS](http://sass-lang.com/)
* Back-end Testing Frameworks: [RSpec](http://rspec.info/), [Factory Girl](https://github.com/thoughtbot/factory_girl), and [Cucumber](http://cukes.info/)
* Front-end Testing Frameworks: [Mocha](http://visionmedia.github.com/mocha/), [Chai](http://chaijs.com/), and [Sinon](http://sinonjs.org/)
* Front-end Framework: [Zurb Foundation](http://foundation.zurb.com/), [Backbone.js](http://backbonejs.org/)
* Form Builder: [SimpleForm](https://github.com/plataformatec/simple_form)
* Authentication: [Sorcery](https://github.com/noamb/sorcery)
* Authorization: [CanCan](https://github.com/ryanb/cancan)

## Fun and Useful Things We're Using

* [Active Admin](http://activeadmin.info/)
* [CarrierWave](https://github.com/jnicklas/carrierwave)

## Email

The application is configured to send email using a [SendGrid](http://sendgrid.com/) account.

## Monitoring/Analytics

* [Airbrake](https://airbrake.io)
* [Newrelic](https://newrelic.com)
* [KissMetric](http://kissmetrics.com)

## Documentation and Support

In code documentation written in [TomDoc](http://tomdoc.org/) format, utilize tomdoc gem to generate html or console output.
Styles utilizes [kss](https://github.com/kneath/kss) to document, and [nkss-rails](https://github.com/nadarei/nkss-rails) to display the style guide cleanly.

