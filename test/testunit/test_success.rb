require 'pathname'
require 'test/unit'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestTestUnitSuccess < Test::Unit::TestCase
  def test_success
    assert true
  end
end
