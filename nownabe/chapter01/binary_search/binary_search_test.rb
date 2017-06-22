# frozen_string_literal: true

require "test/unit"

require_relative "./binary_search"

class TestBinarySearch < Test::Unit::TestCase
  ODD_ARRAY = [1, 2, 3, 5, 8, 13, 21, 34, 55]
  EVEN_ARRAY = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

  def test_found
    # first
    assert_equal 0, binary_search(ODD_ARRAY, 1)
    assert_equal 0, binary_search(EVEN_ARRAY, 1)

    # first - mid
    assert_equal 2, binary_search(ODD_ARRAY, 3)
    assert_equal 2, binary_search(EVEN_ARRAY, 3)

    # mid
    assert_equal 4, binary_search(ODD_ARRAY, 8)
    assert_equal 4, binary_search(EVEN_ARRAY, 8)
    assert_equal 5, binary_search(EVEN_ARRAY, 13)

    # mid - last
    assert_equal 6, binary_search(ODD_ARRAY, 21)
    assert_equal 7, binary_search(EVEN_ARRAY, 34)

    # last
    assert_equal 8, binary_search(ODD_ARRAY, 55)
    assert_equal 9, binary_search(EVEN_ARRAY, 89)
  end

  def test_not_found
    assert_nil binary_search(ODD_ARRAY, -1)
    assert_nil binary_search(ODD_ARRAY, 10)
    assert_nil binary_search(ODD_ARRAY, 56)
  end
end
