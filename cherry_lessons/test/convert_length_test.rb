require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.97, convert_length(1, form: :m, to: :in)
    assert_equal 0.38, convert_length(15, form: :in, to: :m)
    assert_equal 10670.73, convert_length(35000, form: :ft, to: :m)
  end
end
