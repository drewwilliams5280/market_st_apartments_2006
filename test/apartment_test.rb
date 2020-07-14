require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  def test_it_exists
    unit1 = Apartment.new("A1", 1200, 1, 1)

    assert_instance_of Apartment, unit1
  end

  def test_it_initializes
    unit1 = Apartment.new("A1", 1200, 1, 1)

    assert_equal "A1", unit1.number
    assert_equal 1200, unit1.monthly_rent
    assert_equal 1, unit1.bathrooms
    assert_equal 1, unit1.bedrooms
  end

end
