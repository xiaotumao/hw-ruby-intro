# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? (arr, n)
 #(arr.empty? && n.zero?) || arr.permutation(2).any? { |a,b| a+b ==n}
 return false if arr.length == 0
return true if arr.empty? && n.zero?
arr.combination(2).any? {|a, b| a + b == n } 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
 str = "Hello, "+ name
 return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s.length==0)
    return false
  end
  reg_1 =/[a-z]/
  reg_2 =/[^ aeiou]/
  if (reg_1 === s [0] .downcase && reg_2 === s [0] .downcase) #Determine whether the first digit is an English letter that is not a vowel
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
if (s) == "0"
    return true
end
if /^[01]*(00)$/.match(s) #|| /^0$/.match(s)
    return true
else
    return false
end
end
# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
        raise ArgumentError if isbn.empty? || price <= 0    
        @isbn=isbn
        @price=price
    end

    def price_as_string
        format("$%.2f",@price)
    end

    attr_accessor:isbn
    attr_accessor:price
end