module Enumerable
  # Your code goes here
  def my_each_with_index
    tmp = 0
    while tmp < self.length
      yield(self[tmp], tmp)
      tmp += 1
    end
    self
  end

  def my_select
    res = []
    my_each { |elem| res.push(elem) if yield(elem) }
    res
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for elem in self
      yield(elem)
    end
    self
  end
end
