require 'test/unit/testresult'
require 'test/unit/ui/console/testrunner'
require 'test/unit/ui/testrunnermediator'
require 'override'
require 'term/ansicolor'

module RedGreen
  extend self
  attr_accessor :colour

  def visual
    Term::ANSIColor.send(self.colour || :green) { "="*78 }
  end
end

class Test::Unit::UI::Console::TestRunner

  override :attach_to_mediator
  def attach_to_mediator
    super
    @mediator.add_listener(Test::Unit::TestResult::FAULT) { RedGreen.colour = :red }
  end

  override :finished
  def finished(elapsed_time)
    super
    output(RedGreen.visual)
    nl
  end
end
