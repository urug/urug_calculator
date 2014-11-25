# http://stefanhendriks.wordpress.com/2012/09/20/a-randori-with-corey-haines/


require './calculator'
require 'minitest/autorun'
require 'minitest/spec'

class TestCalculator < MiniTest::Spec
  
  let(:subject) { Calculator.new }

  def test_no_input_is_zero
    assert_equal(subject.calc(''), 0, "when empty string is given, it should return 0")
  end
  
  def test_single_number_returns_identity
    (1..5).each do
      x = rand(1000)
      assert_equal(subject.calc(x.to_s), x, "test should return identity function with #{x}")
    end
  end
  
  def test_pair_of_numbers_adds_properly
    (1..5).each do
      x = rand(1000)
      y = rand(1000)
      assert_equal(x + y, subject.calc("#{x}+#{y}"), "two numbers did not add properly #{x} + #{y}")
    end    
  end
  
  def test_more_than_two_numbers_add_properly
    (1..5).each do
      arr = rand(3..10).times.map{rand(1000)}      
      test_str = arr.join("+")
      value = arr.inject(:+)
      assert_equal(value, subject.calc(test_str), "multiple numbers did not add properly #{test_str}")
    end        
  end
  
  def test_multiply_two_numbers_should_work
    str = "3*5"
    assert_equal(15, subject.calc(str), "multiplying two numbers did not work #{str}")
  end
  
  def test_multiply_multiple_numbers_should_work
    (1..5).each do
      arr = rand(3..10).times.map{rand(1000)}      
      test_str = arr.join("*")
      value = arr.inject(:*)
      assert_equal(value, subject.calc(test_str), "multiple numbers did not multiply properly #{test_str}")
    end
  end
  
  
end


