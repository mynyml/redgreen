require 'context'
require 'lib/redgreen'

class TestContextFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
