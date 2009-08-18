require 'pathname'

task(:test) do
  test_root = Pathname(__FILE__).dirname

  files = %w(
    testunit/test_success.rb
    testunit/test_failure.rb
    minitest/test_success.rb
    minitest/test_failure.rb
  )
  files.map! {|file| Pathname(file).expand_path(test_root) }
  files.each {|file| system("ruby -rubygems #{file}") }
end
