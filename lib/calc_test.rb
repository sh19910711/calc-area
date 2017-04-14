require_relative '../lib/calc'
require 'minitest/unit'
require 'stringio'

MiniTest::Unit.autorun

class TestCalc < MiniTest::Unit::TestCase
  def test_example
    assert_equal calc(10), 314
    assert_equal calc(1.5), 7
    assert_equal calc(250), 196350
    assert_equal calc(100), 31416
  end

  def test_io
    input = StringIO.new <<EOF
10
250
100
1.5
EOF
    output = StringIO.new
    calc_with input, output
    assert_equal output.string, <<EOF
314
196350
31416
7
EOF
  end
end
