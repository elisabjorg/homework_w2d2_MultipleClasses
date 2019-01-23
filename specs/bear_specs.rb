require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear < Minitest::Test

  def setup
    @bear = Bear.new("Bobo","Snowbear")

    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Paul")
    @fish3 = Fish.new("George")

    @river = River.new("Amazon", [@fish1,@fish2,@fish3])
  end

  def test_bear_name
    assert_equal("Bobo", @bear.name)
  end

  def test_bear_has_empty_food_array
    assert_equal(0,@bear.food_count)
  end

  def test_bear_can_take_fish_from_river
    @bear.take_fish_from_river(@river)
    assert_equal(1,@bear.food_count)
    assert_equal(2,@river.number_of_fishes)
  end

  def test_bear_cant_take_fish_from_empty_river
    river = River.new("Amazon", [])
    @bear.take_fish_from_river(river)
    assert_equal(0,@bear.food_count)
    assert_equal(0,river.number_of_fishes)
  end

end
