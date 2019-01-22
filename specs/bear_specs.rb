require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < MiniTest::Test

  def setup
    food = ["ducks", "nuts", "apple"]
    @bear = Bear.new("Bobo", "snowbear", food)
    @fish_1 = ("Steve")
    @fish_2 = ("Phil")
    @fish_3 = ("Freddy")
    @river = ("Amazon")
  end

  def test_bear_name
    assert_equal("Bobo", @bear.name())
  end

  def test_take_fish_from_river
    @bear.take_fish(@fish_1)
    assert_equal(4, @bear.food().count())
  end

  # def test_river_loses_fish
  #   @bear.take_fish(@fish_1)
  #   @bear.take_fish(@fish_2)
  #   @bear.take_fish(@fish_3)
  #   @river.clear().fish()
  #   assert_equal(6, @bear.food().count())
  #   assert_equal(0, @river.fish().count())
  # end


end
