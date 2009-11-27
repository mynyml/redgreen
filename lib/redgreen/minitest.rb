class MiniTest::Unit::TestCase
  def new_run(runner)
    result = old_run(runner)
    RedGreen.colour = :red unless self.passed?
    result
  end
  alias :old_run :run
  alias :run :new_run
end

class MiniTest::Unit
  def new_run(args = [])
    count = old_run(args)
    @@out.puts RedGreen.visual
    @@out.puts
    count
  end
  alias :old_run :run
  alias :run :new_run
end
