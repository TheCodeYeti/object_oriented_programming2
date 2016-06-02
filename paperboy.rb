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
  def deliver(start_address, end_address)
    actual_start = [start_address.to_i, end_address.to_i, 1].min
    actual_end = [start_address.to_i, end_address.to_i].max
    return "Please enter positive numbers" if actual_end < 1
    total_houses = actual_end - actual_start + 1
    papers_delivered = (total_houses / 2.0)
    if actual_start.even? && actual_end.even?
      if side = "even"
        papers_delivered = papers_delivered.ceil
      else
        papers_delivered = papers_delivered.floor
      end
    elsif actual_start.odd? && actual_end.odd?
      if side = "odd"
        papers_delivered = papers_delivered.ceil
      else
        papers_delivered = papers_delivered.floor
      end
    end
    @experience = papers_delivered

  end
end
