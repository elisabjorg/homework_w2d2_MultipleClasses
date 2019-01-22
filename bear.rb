class Bear

  attr_reader :name, :type, :food,

  def initialize(name, type, food)
    @name = name
    @type = type
    @food = food
  end


  def take_fish(fish)
    @food << fish
  end

  def clear
    @river.fish.clear()
  end


  # def river_loses_fish(fish)
  #   for food in river.fish()
  #     take_fish(fish)
  # end
  #   river.clear().fish()
  # end
end
