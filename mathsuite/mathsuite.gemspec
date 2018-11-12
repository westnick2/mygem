Gem::Specification.new do |s|
  s.name        = 'mathsuite_gem'
  s.version     = '1.0.0'
  s.date        = '2018-11-12'

  s.summary     = "Solving Abramov book math tasks."
  s.description = "This gem will help you to solve Abramov book math tasks."

  s.authors     = ["Metelap Vlad"]
  s.email       = 'vmetww@gmail.com'

  s.files       = ["lib/mathsuite.rb"]
  s.homepage    = 'https://github.com/westnick2/mathsuite'
  s.license = 'GPL-2.0'

  s.require_paths = ['lib']

  s.add_development_dependency 'mathtestsuite', '~> 1.0.1'

  s.files = [
    'LICENSE',
    'README.md',
    'Rakefile',
    'mathsuite.gemspec',
    'lib/mathsuite.rb',
    'test/spec.rb'
  ]

  s.test_files = [
    'test/spec.rb'
  ]

end
