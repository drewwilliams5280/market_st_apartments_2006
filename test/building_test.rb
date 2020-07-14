require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class BuildingTest < Minitest::Test

  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_can_add_units
    unit1 = Apartment.new("A1", 1200, 1, 1)
    building = Building.new
    building.add_unit(unit1)
    assert_equal unit1, building.units.first
  end

end
