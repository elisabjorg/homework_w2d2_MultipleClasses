require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < Minitest::Test

  def test_fish_has_name
    fish = Fish.new("Steve")
    assert_equal("Steve",fish.name)
  end

end
