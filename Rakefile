require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "c2dm_on_rails"
  gem.summary = "Android Cloud to Device Messaging (push notifications) on Rails"
  
  gem.description = %q{C2DM on Rails is a Ruby on Rails gem that allows you to
easily add Android Cloud to Device Messaging support to your Rails application.
}

  gem.email = "julius.debruijn@digia.com"
  gem.homepage = "http://github.com/pimeys/c2dm_on_rails"
  gem.authors = ["Julius de Bruijn"]
end
task :default => :spec
