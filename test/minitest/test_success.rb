require 'pathname'
require 'minitest/autorun'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen/minitest'

class TestTestUnitSuccess < MiniTest::Unit::TestCase
  def test_success
    assert true
  end
end
