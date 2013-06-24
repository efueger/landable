# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

# Maintain your gem's version:
require "landable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |gem|
  gem.name          = "landable"
  gem.version       = Landable::VERSION

  gem.authors       = ["Team Trogdor"]
  gem.email         = ["trogdor@cashnetusa.com"]

  gem.homepage      = "http://git.cashnetusa.com/trogdor/landable"

  gem.license       = "MIT-LICENSE"

  gem.summary       = "Mountable CMS engine for Rails"
  gem.description   = "Landing page storage, rendering, tracking, and management API"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }

  gem.require_paths = ["lib"]

  gem.add_dependency "rails",     "~> 4.0.0.rc2"
  gem.add_dependency "rack-cors", ">= 0.2.7"
  gem.add_dependency "active_model_serializers", "~> 0.8"
  gem.add_dependency "carrierwave"
  gem.add_dependency "liquid"
  gem.add_dependency "fog"

  gem.add_development_dependency "pg"
  gem.add_development_dependency "rspec-rails",        '~> 2.13.0'
  gem.add_development_dependency "factory_girl_rails", '~> 4.2.0'
  gem.add_development_dependency "json-schema"
  gem.add_development_dependency "rack-schema"
  gem.add_development_dependency "cucumber-rails"
  gem.add_development_dependency "database_cleaner"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "valid_attribute"
  gem.add_development_dependency "pry"
end
