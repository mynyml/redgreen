require 'pathname'
require 'contest'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestContestFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
