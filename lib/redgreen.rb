#:stopdoc:
require 'pathname'
require 'term/ansicolor'

module RedGreen
  extend self

  attr_accessor :colour

  def visual
    Term::ANSIColor.send(self.colour || :green) { "="*78 }
  end
end

dir =  Pathname(__FILE__).dirname.parent.join('lib/redgreen')

if    defined?(Expectations::SuiteRunner) then require dir.join('expectations')
elsif defined?(MiniTest::Unit::TestCase)  then require dir.join('minitest')
elsif defined?(Test::Unit::TestCase)      then require dir.join('testunit')
end
