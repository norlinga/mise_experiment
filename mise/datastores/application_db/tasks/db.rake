require 'sequel'

DB = Sequel.connect('postgres://devuser:devpassword@localhost:5432/devdb')

namespace :db do
  desc "Show all database tables"
  task :list_tables do
    DB.tables.each do |table|
      puts table
    end
  end

  desc "Migrate to latest db version based on migrations folder"
  task :migrate do
    Sequel.extension :migration
    Sequel::Migrator.run(DB, 'migrations')
  end
end