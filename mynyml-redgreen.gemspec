Gem::Specification.new do |s|
  s.name                = 'mynyml-redgreen'
  s.version             = '0.7.1'
  s.summary             = "Standalone redgreen eye candy for test results, ala autotest"
  s.description         = "Standalone redgreen eye candy for test results, ala autotest."
  s.author              = "Martin Aumont"
  s.email               = 'mynyml@gmail.com'
  s.homepage            = 'http://mynyml.com'
  s.rubyforge_project   = "mynyml-redgreen"
  s.has_rdoc            =  true
  s.require_path        = "lib"
  s.files               =  File.read("Manifest").strip.split("\n")

  s.add_dependency 'term-ansicolor',  '>= 1.0.4'

  s.add_development_dependency 'nanotest',                '>= 0.9.2'
  s.add_development_dependency 'minitest',                '>= 1.3.1'
  s.add_development_dependency 'shoulda',                 '>= 2.10.1'
  s.add_development_dependency 'contest',                 '>= 0.1.1'
  s.add_development_dependency 'jeremymcanally-context',  '>= 0.5.5'
end

