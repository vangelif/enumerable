require_relative 'enumerable'

class MyList
  include MyEnumerable
  
# initialize method takes a variable number of elements
# it then stores them in @list  
  def initialize(*elements)
    @list = elements
  end

# each method iterates over the elements of the @list  
# &block is a block parameter, and converts to a proc upon calling of each method - see documentation  
  def each(&block)
    @list.each(&block)
  end
end
