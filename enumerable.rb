# below methods all? any? and filter operate on any class
# provided MyEnumerable is included on that class and
# assuming that the class iterates elements with an each method
module MyEnumerable

  # all? method checks if a given block returns true
  # for all the elements when applied
  def all?(&block)
    each { |e| return false unless block.call(e) }
    true
  end 
  
  # any? method checks if the block
  # returns true for at least one element 
  def any?(&block)
    each { |e| return true if block.call(e) }
    false
  end

  # filter method creates a new array containing elements
  # which the block returns true  
  def filter(&block)
    result = []
    each { |e| result << e if block.call(e) }
    result
  end
end
