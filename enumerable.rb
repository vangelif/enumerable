# below methods all? any? and filter operate on any class
# provided MyEnumerable is included on that class and
# assuming that the class iterates elements with an each method
module MyEnumerable
  def all?(&block)
    each { |e| return false unless block.call(e) }
    true
  end

  def any?(&block)
    each { |e| return true if block.call(e) }
    false
  end

  def filter(&block)
    result = []
    each { |e| result << e if block.call(e) }
    result
  end
end
