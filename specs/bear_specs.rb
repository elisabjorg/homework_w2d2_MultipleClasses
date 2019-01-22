require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")


class BearTest < MiniTest::Test

  def setup
    food = ["ducks", "nuts", "apple"]
    @bear = Bear.new("Bobo", "snowbear", food)
  end

  def test_bear_name
    assert_equal("Bobo", @bear.name())
  end

end
