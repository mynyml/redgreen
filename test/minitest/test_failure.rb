require 'minitest/autorun'
require 'lib/redgreen'

class TestTestUnitFailure < MiniTest::Unit::TestCase
  def test_failure
    flunk
  end
end
