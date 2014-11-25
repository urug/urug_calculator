require 'minitest/autorun'
require 'minitest/spec'

class TestCalculator < MiniTest::Spec

  def test_failing_test
    assert_equal(true, false)
  end
end


