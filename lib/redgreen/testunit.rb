require 'test/unit/testresult'
require 'test/unit/ui/console/testrunner'
require 'test/unit/ui/testrunnermediator'

class Test::Unit::UI::Console::TestRunner

  def new_attach_to_mediator
    old_attach_to_mediator
    @mediator.add_listener(Test::Unit::TestResult::FAULT) { RedGreen.colour = :red }
  end
  alias :old_attach_to_mediator :attach_to_mediator
  alias :attach_to_mediator :new_attach_to_mediator

  def new_finished(elapsed_time)
    old_finished(elapsed_time)
    output(RedGreen.visual)
    nl
  end
  alias :old_finished :finished
  alias :finished :new_finished
end
