require 'pathname'
require 'context'
root  =  Pathname(__FILE__).dirname.parent.parent
require  root + 'lib/redgreen'

class TestContextSuccess < Test::Unit::TestCase
  def test_success
    assert true
  end
end
