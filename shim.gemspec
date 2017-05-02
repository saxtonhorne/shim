# -*- encoding: utf-8 -*-
require File.expand_path('../lib/shim/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Utley", "Corey Woodcox"]
  gem.email         = ["mikey.utley@gmail.com", "corey.woodcox@gmail.com"]
  gem.description   = %q{Shim is a small CMS built as a Rails engine.}
  gem.summary       = %q{Shim follows Rails principles to create a CMS environment familiar to developers and easy for designers.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "shim"
  gem.require_paths = ["lib"]
  gem.bindir        = 'bin'
  gem.executables   = ['shim']
  gem.version       = Shim::VERSION

  gem.add_dependency 'rails', '~> 3.2.22'
  gem.add_dependency 'jquery-rails'

  gem.add_development_dependency 'sqlite3'
  gem.add_development_dependency 'pry'
end
