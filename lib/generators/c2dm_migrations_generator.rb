require 'rails/generators/active_record'
# Generates the migrations necessary for C2dm on Rails.
# This should be run upon install and upgrade of the 
# C2dm on Rails gem.
# 
#   $ ruby script/generate c2dm_migrations
class C2dmMigrationsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  extend ActiveRecord::Generators::Migration

  # Set the current directory as base for the inherited generators.
  def self.base_root
    File.dirname(__FILE__)
  end

  source_root File.expand_path('../templates/c2dm_migrations', __FILE__)

  def create_migrations
    templates = {
      'create_c2dm_devices.rb' => 'db/migrate/create_c2dm_devices.rb',
      'create_c2dm_notifications.rb' => 'db/migrate/create_c2dm_notifications.rb'
    }

    templates.each_pair do |name, path|
      begin
        migration_template(name, path)
      rescue => err
        puts "WARNING: #{err.message}"
      end
    end
  end
end # C2dmMigrationsGenerator
