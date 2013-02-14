# App_Name

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

* Dev/Production webserver: [unicorn](http://unicorn.bogomips.org/)
* Error messaging: [Better Errors](https://github.com/charliesome/better_errors)

## Ruby on Rails

This application requires:

* Ruby version 1.9.3
* Rails version 3.2.12

## Database

This application uses [PostgreSQL](http://www.postgresql.org/) with [ActiveRecord](http://guides.rubyonrails.org/active_record_querying.html).

## Rake Tasks


## Development

* Template Engine: [Haml](http://haml.info/)
* Front-end Preprocessors: [CoffeeScript](http://coffeescript.org/), [SCSS](http://sass-lang.com/)
* Back-end Testing Frameworks: [RSpec](http://rspec.info/), [Factory Girl](https://github.com/thoughtbot/factory_girl), and [Cucumber](http://cukes.info/)
* Front-end Testing Frameworks: [Mocha](http://visionmedia.github.com/mocha/), [Chai](http://chaijs.com/), and [Sinon](http://sinonjs.org/)
* Front-end Framework: [Backbone.js](http://backbonejs.org/)
* Form Builder: [SimpleForm](https://github.com/plataformatec/simple_form)
* Authentication: [Sorcery](https://github.com/plataformatec/devise)
* Authorization: [CanCan](https://github.com/ryanb/cancan)
* Simple Admin Functions: [Active Admin](http://activeadmin.info/)
* File Uploads: [CarrierWave](https://github.com/jnicklas/carrierwave)

## Email

The application is configured to send email using a [SendGrid](http://sendgrid.com/) account.

## Monitoring/Analytics


## Documentation and Support

In code documentation written in [TomDoc](http://tomdoc.org/) format, utilize tomdoc gem to generate html or console output.
Styles utilizes [kss](https://github.com/kneath/kss) to document, and [nkss-rails](https://github.com/nadarei/nkss-rails) to display the style guide cleanly.

