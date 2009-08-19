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

require dir.join('testunit') if defined?(Test::Unit::TestCase)
require dir.join('minitest') if defined?(MiniTest::Unit::TestCase)
