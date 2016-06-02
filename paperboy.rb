class Paperboy
  attr_reader :name
  attr_accessor :experience, :side
  attr_reader :earnings

  def initialize(name, side = "even", quota = 50)
    @name = name
    @quota = quota
    @experience = 0
    @earnings = 0
    @side = side
  end
  def quota
    @quota
  end
end
