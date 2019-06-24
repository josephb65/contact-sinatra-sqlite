require 'bundler/setup'
require 'rack-flash'

Bundler.require()

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/contact-app.sqlite"
)

require_all 'app'
