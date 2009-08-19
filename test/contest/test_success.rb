require 'pathname'
require 'contest'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestContestSuccess < Test::Unit::TestCase
  def test_success
    assert true
  end
end
