require_relative 'list'

# STEP FOUR: INSTANTIATION AND TESTING
# create list object
list = MyList.new(1, 2, 3, 4)

# checks if elements are less or greater than 5
puts(list.all? { |e| e < 5 }) # true
puts(list.all? { |e| e > 5 }) # false

# checks if elements equals to 2 or 5
puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false

# filters elements based on the block condition (&:even?) 
puts(list.filter(&:even?)) # [2, 4]
