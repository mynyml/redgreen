require 'pathname'
require 'shoulda'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestShouldaSuccess < Test::Unit::TestCase
  def test_success
    assert true
  end
end
