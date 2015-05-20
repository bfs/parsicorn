# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'version'

Gem::Specification.new do |s|
  s.name        = 'parsicorn'
  s.version     =  Parsicorn::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Boris Shimanovsky']
  s.email       = ['boris@factual.com']
  s.homepage    = 'http://github.com/bfs/parsicorn'
  s.summary     = 'Parsicorn'
  s.description = 'Parse lots of stuff into tables of rows. Magical, like unicorns, with all the downsides.'
  s.required_rubygems_version = '>= 2.2'
  
  s.requirements << 'unix/linux/osx -- no windows support'

  s.add_dependency 'mimemagic', ">= 0.2.1"
  s.add_dependency 'rchardet',  ">= 1.6.0"
  
  s.add_development_dependency 'rspec'

  s.files         = `git ls-files 2>/dev/null`.split($/) - %w(.rvmrc .gitignore Gemfile.lock)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
end
