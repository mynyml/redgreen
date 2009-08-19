require 'pathname'
require 'shoulda'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestShouldaFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
