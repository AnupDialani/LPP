# File: tc_circ.rb 


require "circ.rb"
require "test/unit"

class TestCircunferencia < Test::Unit::TestCase

  def test_notnumber
      assert_raise( RuntimeError ) { Circunferencia.new('a') }
  end

  def test_notpositive
      assert_raise( ArgumentError ) { Circunferencia.new(-3) }
  end
end
