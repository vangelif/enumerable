require_relative 'enumerable'

class MyList

  # STEP THREE: UPDATE CLASS TO INCLUDE MODULE
  # after building the module MyEnumerable
  # make sure to include within the class MyList
  #!!! this allows MyList instances to use MyEnumerable methods
  include MyEnumerable

  

# STEP ONE: BUILD CLASS 
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
