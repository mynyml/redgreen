require 'pathname'
require 'context'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestContextFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
