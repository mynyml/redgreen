# --------------------------------------------------
# based on thin's Rakefile (http://github.com/macournoyer/thin)
# --------------------------------------------------
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'pathname'
require 'yaml'

load 'test/tests.rake'
task :default => :test_all

RUBY_1_9  = RUBY_VERSION =~ /^1\.9/
WIN       = (RUBY_PLATFORM =~ /mswin|cygwin/)
SUDO      = (WIN ? "" : "sudo")

def gem
  RUBY_1_9 ? 'gem19' : 'gem'
end

def all_except(res)
  Dir['**/*'].reject do |path|
    Array(res).any? {|re| path.match(re) }
  end
end

spec = Gem::Specification.new do |s|
  s.name            = 'redgreen'
  s.version         = '0.5'
  s.summary         = "Standalone redgreen eye candy for test results, ala autotest"
  s.description     = "Standalone redgreen eye candy for test results, ala autotest"
  s.author          = "Martin Aumont"
  s.email           = 'mynyml@gmail.com'
  s.homepage        = ''
  s.has_rdoc        = true
  s.require_path    = "lib"
  s.files           = all_except([/doc/, /pkg/])
  s.add_dependency 'mynyml-override', '>= 0.5'
  s.add_dependency 'term-ansicolor',  '>= 1.0.4'
end

desc "Generate rdoc documentation."
Rake::RDocTask.new("rdoc") { |rdoc|
  rdoc.rdoc_dir = 'doc/rdoc'
  rdoc.title    = "RedGreen"
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.options << '--charset' << 'utf-8'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
}

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
end

desc "Remove package products"
task :clean => :clobber_package

desc "Update the gemspec for GitHub's gem server"
task :gemspec do
  Pathname("#{spec.name}.gemspec").open('w') {|f| f << YAML.dump(spec) }
end

desc "Install gem"
task :install => [:clobber, :package] do
  sh "#{SUDO} #{gem} install pkg/#{spec.full_name}.gem"
end

desc "Uninstall gem"
task :uninstall => :clean do
  sh "#{SUDO} #{gem} uninstall -v #{spec.version} -x #{spec.name}"
end
