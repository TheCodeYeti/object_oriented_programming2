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
      if side == "even"
        papers_delivered = papers_delivered.ceil
      else
        papers_delivered = papers_delivered.floor
      end
    elsif actual_start.odd? && actual_end.odd?
      if side == "odd"
        papers_delivered = papers_delivered.ceil
      else
        papers_delivered = papers_delivered.floor
      end
    end
    @experience += papers_delivered
    calculate_earnings(papers_delivered)

  end
  def calculate_earnings(papers_delivered)
    papers_within_quota = [papers_delivered, @quota].min
    quota_missed = [@quota - papers_delivered, 0].max
    papers_above_quota = papers_delivered - papers_within_quota
    @earnings += (papers_within_quota * 0.25).to_f
    @earnings += (papers_above_quota * 0.50).to_f
    @earnings += (quota_missed * 2.00)).to_f
    @earnings
  end
  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
end
