require 'pathname'
require 'test/unit'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestTestUnitFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
