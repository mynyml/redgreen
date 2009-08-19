require 'expectations/suite_results'
require 'override'

class Expectations::SuiteResults
  override :print_success
  def print_success
    super
    out.puts RedGreen.visual
    out.puts
  end

  override :print_fail
  def print_fail
    super
    RedGreen.colour = :red
    out.puts RedGreen.visual
    out.puts
  end
end
