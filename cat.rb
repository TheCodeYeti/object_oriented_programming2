class Cat
  attr_reader :name
  attr_accessor :preferred_food, :meal_time
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end
  def eats_at
    if @meal_time <= 12
      display_time = @meal_time
      am_pm = "AM"
    else
      display_time = @meal_time - 12
      am_pm = "PM"
    end
    "#{display_time} #{am_pm}"
  end
  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end

latte = Cat.new("Latte", "Chicken", "13")
harley = Cat.new("Harley", "Whatever is in #{latte.name}'s bowl", "8")
puts latte.meow
puts harley.meow
