require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'

require_relative '../lib/dog'
require_relative 'sql_runner'

DB = ActiveRecord::Base.establish_connection(
      :adapter => "sqlite3",
      :database => "../db/dogs"
    )

  DB = ActiveRecord::Base.connection
  #make a connection with a database using active record

  if ENV["ACTIVE_RECORD_ENV"] == "test"
    ActiveRecord::Migration.verbose = false
    #???????
  end
