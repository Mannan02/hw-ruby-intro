# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each{|a| total += a}
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  max_arr = arr.max(2)
  return max_arr[0] + max_arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if n == nil
    return false
  end
  if arr.length < 2
    return false
  end
  for i in 0..arr.length-1 do
    for j in i+1..arr.length-1 do
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ''
    return false
  end
  vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
  if s[0].match(/[a-zA-Z]/)
    return !vowels.include?(s[0])
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''
    return false
  end
  if s.match(/^[10]*00$/)
    return true
  elsif s.match(/^0$/)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn == ''
      raise ArgumentError.new("ISBN is an empty string")
    elsif price <= 0
      raise ArgumentError.new("Price is less than or equal to 0")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(i)
    @isbn= i
  end
  
  def price=(p)
    @price = p
  end
  
  def price_as_string
    return '$%.2f' % @price
  end
  
end