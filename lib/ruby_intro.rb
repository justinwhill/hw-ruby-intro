# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each { |val|
    total += val
  }
  total
end

def max_2_sum arr
  total = 0
  if arr.length == 1
    total = arr[0]
  elsif arr.length > 1
    max_1 = -1.0/0.0
    max_2 = -1.0/0.0
    arr.each { |val|
      if val > max_1
        max_2 = max_1
        max_1 = val
      elsif val > max_2
        max_2 = val
      end
    }
    total = max_1 + max_2
  end
  total
end

def sum_to_n? arr, n
  arr.each_with_index { |val, i|
    visit = arr.length - 1
    while visit != i
      if val + arr[visit] == n
        return true
      end
      visit -= 1
    end
  }
  false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  s =~ /\A[b-df-hj-np-tv-z].*/i
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  mult = 1
  value = 0
  s.reverse.split('').each { |digit|
    if !(digit =~ /[01]/)
      return false
    end
    value += mult * digit.to_i
    mult *= 2
  }
  if value % 4 == 0
    return true
  end
  false
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    raise ArgumentError.new('invalid isbn') unless isbn =~ /\d+/
    raise ArgumentError.new('zero or negative price') unless price.to_f > 0
    @isbn = isbn
    @price = price.to_f
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    '$%.2f' % @price
  end

end
