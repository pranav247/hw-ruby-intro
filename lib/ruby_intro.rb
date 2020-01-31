# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE 
  sum_arr = 0
  arr.each do |t|
    sum_arr += t
  end
  return sum_arr 
end

def max_2_sum arr
  # YOUR CODE HERE
  arr_sort = arr.sort.reverse
  if arr.length == 0
  	return 0
  elsif arr.length == 1
	  return arr_sort[0]
  else
	  return arr_sort[0]+arr_sort[1] 	
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length<=1
    return false
  end
  temp_arr = arr.sort
  front_pointer = 0
  back_pointer  = arr.length-1
  temp_sum      = 0
  
  loop do
      
    temp_sum = temp_arr[front_pointer] + temp_arr[back_pointer]
    if temp_sum > n
      back_pointer  -= 1
    elsif temp_sum < n
      front_pointer += 1
    elsif temp_sum == n
      return true
    end
    break if front_pointer >= back_pointer

  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  result = false
  first_s = s[0]
  if first_s=~/[a-zA-Z]/
    unless first_s=~/[AEIOUaeiou]/
      result = true
    end
  end
  
  return result
end

def binary_multiple_of_4? s
 
 return true if s=~/^[0]+$/ || s=~/^[01]*00$/
 return false

end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(temp_isbn, temp_price)
    raise ArgumentError if temp_isbn.empty? or temp_price <=0
    @isbn  = temp_isbn
    @price = temp_price
  end
  def price_as_string
    return "\$%.2f" % @price
  end

end
