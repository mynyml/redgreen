--- !ruby/object:Gem::Specification 
name: redgreen
version: !ruby/object:Gem::Version 
  version: 0.5.1
platform: ruby
authors: 
- Martin Aumont
autorequire: 
bindir: bin
cert_chain: []

date: 2009-09-19 00:00:00 -04:00
default_executable: 
dependencies: 
- !ruby/object:Gem::Dependency 
  name: mynyml-override
  type: :runtime
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: "0.5"
    version: 
- !ruby/object:Gem::Dependency 
  name: term-ansicolor
  type: :runtime
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 1.0.4
    version: 
- !ruby/object:Gem::Dependency 
  name: minitest
  type: :development
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 1.3.1
    version: 
- !ruby/object:Gem::Dependency 
  name: expectations
  type: :development
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 1.2.1
    version: 
- !ruby/object:Gem::Dependency 
  name: thoughtbot-shoulda
  type: :development
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 2.10.1
    version: 
- !ruby/object:Gem::Dependency 
  name: citrusbyte-contest
  type: :development
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 0.1.1
    version: 
- !ruby/object:Gem::Dependency 
  name: jeremymcanally-context
  type: :development
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 0.5.5
    version: 
description: Standalone redgreen eye candy for test results, ala autotest.
email: mynyml@gmail.com
executables: []

extensions: []

extra_rdoc_files: []

files: 
- Rakefile
- test
- test/shoulda
- test/shoulda/test_failure.rb
- test/shoulda/test_success.rb
- test/expectations
- test/expectations/test_failure.rb
- test/expectations/test_success.rb
- test/context
- test/context/test_failure.rb
- test/context/test_success.rb
- test/testunit
- test/testunit/test_failure.rb
- test/testunit/test_success.rb
- test/contest
- test/contest/test_failure.rb
- test/contest/test_success.rb
- test/tests.rake
- test/README
- test/minitest
- test/minitest/test_failure.rb
- test/minitest/test_success.rb
- lib
- lib/redgreen
- lib/redgreen/testunit.rb
- lib/redgreen/expectations.rb
- lib/redgreen/minitest.rb
- lib/redgreen.rb
- redgreen.gemspec
- LICENSE
- specs.watchr
- README
has_rdoc: true
homepage: http://mynyml.com
licenses: []

post_install_message: 
rdoc_options: []

require_paths: 
- lib
required_ruby_version: !ruby/object:Gem::Requirement 
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      version: "0"
  version: 
required_rubygems_version: !ruby/object:Gem::Requirement 
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      version: "0"
  version: 
requirements: []

rubyforge_project: 
rubygems_version: 1.3.5
signing_key: 
specification_version: 3
summary: Standalone redgreen eye candy for test results, ala autotest
test_files: []

