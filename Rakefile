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
  gem.summary = %Q{Android Cloud to Device Messaging (push notifications) on Rails}
  
  gem.description = %Q{C2DM on Rails is a Ruby on Rails gem that allows you to
easily add Android Cloud to Device Messaging support to your Rails application.
}

  gem.email = "bugant@gmail.com"
  gem.homepage = "http://github.com/bugant/c2dm_on_rails"
  gem.authors = ["Julius de Bruijn", "Matteo Centenaro"]
end
#Jeweler::RubygemsDotOrgsTasks.new

# require 'rspec/core'
# require 'rspec/core/rake_task'
# RSpec::Core::RakeTask.new(:spec) do |spec|
#   spec.pattern = FileList['spec/**/*_spec.rb']
# end
# 
# RSpec::Core::RakeTask.new(:rcov) do |spec|
#   spec.pattern = 'spec/**/*_spec.rb'
#   spec.rcov = true
# end

task :default => :spec

# require 'rake/rdoctask'
# Rake::RDocTask.new do |rdoc|
#   version = File.exist?('VERSION') ? File.read('VERSION') : ""
# 
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title = "apn #{version}"
#   rdoc.rdoc_files.include('README*')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
