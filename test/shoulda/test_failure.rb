require 'shoulda'
require 'lib/redgreen'

class TestShouldaFailure < Test::Unit::TestCase
  def test_failure
    flunk
  end
end
