ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# This sets up a connection to a sqlite3 database named "database.db", located in a folder called "db." 
configure :development do
    set :database, 'sqlite3:db/database.db'
end

require './app'