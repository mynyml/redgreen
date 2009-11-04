require 'expectations/suite_results'

class Expectations::SuiteResults
  def new_print_success
    old_print_success
    out.puts RedGreen.visual
    out.puts
  end
  alias :old_print_success :print_success
  alias :print_success :new_print_success

  def new_print_fail
    old_print_fail
    RedGreen.colour = :red
    out.puts RedGreen.visual
    out.puts
  end
  alias :old_print_fail :print_fail
  alias :print_fail :new_print_fail
end
