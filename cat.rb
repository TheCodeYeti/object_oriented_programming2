class Cat
  attr_reader :name
  attr_accessor :perferred_food, :meal_time
  def initialize(name, preferred_food, meal_time)
    @name = name
    @perferred_food = perferred_food
    @meal_time = meal_time
  end
end
