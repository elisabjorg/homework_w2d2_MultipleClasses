require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")


class RiverTest < MiniTest::Test

  def setup
    fish = ["Phil", "Steve", "Freddy"]
    @river = River.new("Amazon", fish)
  end

  def test_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_river_count_fishes
    assert_equal(3, @river.fish.count())
  end


end
