# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_val = 0
  arr.each {|x| sum_val += x}
  return sum_val
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  elsif arr.length == 2
    return arr[0] + arr[1]
  else
    # sort from big to small
    arr_s = arr.sort {|x,y| y <=> x }
    return arr_s[0] + arr_s[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return FALSE
  else
    for i in 0...(arr.length - 1)
      for j in (i + 1)...arr.length
        #puts "i=#{i} j=#{j} #{arr[i]} + #{arr[j]}"
        if arr[i] + arr[j] == n
          #puts "TRUE"
          return TRUE
        end
      end
    end
    return FALSE
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name.to_str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  char = s.to_str.chr.downcase
  return !(char =~ /[a-z]/).nil? && (char =~ /[aeiou]/).nil?
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  str = s.to_str
  if (str =~ /^[01]+$/).nil?
    return FALSE
  else
    return str == '0' || str.end_with?('00')
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    
    raise(ArgumentError, 'invalid ISBN') if isbn == ''
    raise(ArgumentError, 'invalid price') if !price.real? || price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return sprintf('$%.2f',price)
  end
  
end
