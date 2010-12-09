# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{c2dm_on_rails}
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Julius de Bruijn"]
  s.date = %q{2010-12-02}
  s.description = %q{Android push notifications on Rails.}
  s.email = %q{julius.debruijn@digia.com}
  s.extra_rdoc_files = ["LICENSE", "README", "lib/c2dm_on_rails.rb", "lib/c2dm_on_rails/app/models/c2dm/base.rb", "lib/c2dm_on_rails/app/models/c2dm/device.rb", "lib/c2dm_on_rails/app/models/c2dm/notification.rb", "lib/c2dm_on_rails/c2dm_on_rails.rb", "lib/c2dm_on_rails/libs/connection.rb", "lib/c2dm_on_rails/tasks/c2dm.rake", "lib/c2dm_on_rails_tasks.rb"]
  s.files = ["LICENSE", "Manifest", "README", "Rakefile", "generators/c2dm_migrations_generator.rb", "generators/templates/c2dm_migrations/001_create_c2dm_devices.rb", "generators/templates/c2dm_migrations/002_create_c2dm_notifications.rb", "lib/c2dm_on_rails.rb", "lib/c2dm_on_rails/app/models/c2dm/base.rb", "lib/c2dm_on_rails/app/models/c2dm/device.rb", "lib/c2dm_on_rails/app/models/c2dm/notification.rb", "lib/c2dm_on_rails/c2dm_on_rails.rb", "lib/c2dm_on_rails/libs/connection.rb", "lib/c2dm_on_rails/tasks/c2dm.rake", "lib/c2dm_on_rails_tasks.rb", "c2dm_on_rails.gemspec"]
  s.homepage = %q{http://github.com/pimeys/c2dm_on_rails}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "C2dm_on_rails", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{c2dm_on_rails}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Android push notifications on Rails.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<gdata>, [">= 1.1.1"])
      s.add_development_dependency(%q<configatron>, [">= 2.6.3"])
    else
      s.add_dependency(%q<gdata>, [">= 1.1.1"])
      s.add_dependency(%q<configatron>, [">= 2.6.3"])
    end
  else
    s.add_dependency(%q<gdata>, [">= 1.1.1"])
    s.add_dependency(%q<configatron>, [">= 2.6.3"])
  end
end
