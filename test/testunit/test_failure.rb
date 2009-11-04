require 'test/unit'
require 'lib/redgreen'

class TestTestUnitFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
