require("minitest/autorun")
require("minitest/rg")
require_relative("../river")


class RiverTest < MiniTest::Test

  def setup
    fish = ["Phil", "Steve", "Freddy"]
    @river = River.new("Amazon", fish)
  end

  def test_river_name
    assert_equal("Amazon", @river.name())
  end

end
