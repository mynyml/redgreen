require 'pathname'
require 'term/ansicolor'

module RedGreen
  extend self

  attr_accessor :colour

  def visual
    Term::ANSIColor.send(colour || :green) { "="*78 }
  end
end

if    defined?(MiniTest::Unit::TestCase) then require 'redgreen/minitest'
elsif defined?(Test::Unit::TestCase)     then require 'redgreen/testunit'
elsif defined?(Nanotest)                 then require 'redgreen/nanotest'
end
