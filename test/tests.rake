require 'pathname'

namespace(:test) do

  task(:all) do
    test_root = Pathname(__FILE__).dirname

    files = %w(
          nanotest/test_failure.rb
          nanotest/test_success.rb
          testunit/test_failure.rb
          testunit/test_success.rb
          minitest/test_failure.rb
          minitest/test_success.rb
           contest/test_failure.rb
           contest/test_success.rb
           context/test_failure.rb
           context/test_success.rb
           shoulda/test_failure.rb
           shoulda/test_success.rb
    )
    files.map! {|file| Pathname(file).expand_path(test_root) }
    files.each {|file| system("ruby -rubygems -I.:lib #{file}") }
  end

  task(:by_fw) do
    test_root  = Pathname(__FILE__).dirname.expand_path
    frameworks = ENV['FW'].downcase.split(',')

    frameworks.each do |framework|
      files = Dir[test_root + framework.strip + '*']
      files.each {|file| system("ruby -rubygems -I.:lib #{file}") }
    end
  end
end
