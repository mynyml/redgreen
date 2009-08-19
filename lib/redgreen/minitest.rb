require 'minitest/unit'
require 'override'

class MiniTest::Unit::TestCase
  override :run
  def run(runner)
    result = super
    RedGreen.colour = :red unless self.passed?
    result
  end
end

class MiniTest::Unit
  override :run
  def run(args = [])
    count = super
    @@out.puts RedGreen.visual
    @@out.puts
    count
  end
end
