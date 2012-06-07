# -*- encoding: utf-8 -*-
require File.expand_path('../lib/shim/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Utley", "Corey Woodcox"]
  gem.email         = ["mikey.utley@gmail.com", "corey.woodcox@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "shim"
  gem.require_paths = ["lib"]
  gem.bindir        = 'bin'
  gem.executables   = ['shim']
  gem.version       = Shim::VERSION

  gem.add_dependency 'thor'
  gem.add_dependency 'guard'

  gem.add_dependency 'rails', '~> 3.2.2'
  gem.add_dependency 'jquery-rails'
end
