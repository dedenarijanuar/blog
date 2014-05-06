source 'http://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'activerecord-mysql-adapter'
end

gem 'faker'
#rails generate active_admin:resource [MyModelName]
gem 'activeadmin', github: 'gregbell/active_admin'

gem 'devise'
gem 'omniauth-facebook'

gem 'carrierwave'
gem 'mini_magick'

#rails generate ckeditor:install --orm=active_record --backend=carrierwave
gem 'ckeditor'

#http://cloudinary.com/documentation/rails_integration
gem 'cloudinary'
gem 'cancan'
gem 'delayed_job'
gem 'simple_form'

#gem 'paranoid2'
=begin soft delete with deleted_at coloumn
class AddDeletedAtToClients < ActiveRecord::Migration
  def change
    add_column :clients, :deleted_at, :datetime
  end
end
class Client < ActiveRecord::Base
  paranoid
end

c = Client.find(params[:id])

# will set destroyed_at time
c.destroy

# will restore object and all it's associations
c.restore

# will restore only this object without it's associations
c.restore(associations: false)

# will destroy object for real
c.destroy(force: true)

# also useful scopes are available
Client.with_deleted
Client.only_deleted
=end

#https://github.com/scottvrosenthal/twitter-bootswatch-rails
gem 'twitter-bootswatch-rails', :github => 'scottvrosenthal/twitter-bootswatch-rails'

#gem 'geocoder'
#gem 'recaptcha', :require => 'recaptcha/rails'
gem 'therubyracer', platforms: :ruby

#RailRoady generates Rails 3/4 model (AcitveRecord, Mongoid, Datamapper) and controller UML diagrams as cross-platform .svg files, as well as in the DOT language.
#sudo apt-get install graphviz
#rake diagram:all
group :development, :test do
  gem 'railroady'
end

# pagination
gem 'kaminari'
gem 'heroku'
