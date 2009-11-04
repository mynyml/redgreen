require 'contest'
require 'lib/redgreen'

class TestContestFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
