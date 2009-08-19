require 'pathname'

task(:test_all) do
  test_root = Pathname(__FILE__).dirname

  files = %w(
        testunit/test_success.rb
        testunit/test_failure.rb
        minitest/test_success.rb
        minitest/test_failure.rb
         contest/test_success.rb
         contest/test_failure.rb
         context/test_success.rb
         context/test_failure.rb
         shoulda/test_success.rb
         shoulda/test_failure.rb
    expectations/test_success.rb
    expectations/test_failure.rb
  )
  files.map! {|file| Pathname(file).expand_path(test_root) }
  files.each {|file| system("ruby -rubygems #{file}") }
end
