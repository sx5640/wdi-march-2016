number = 10

def sum(a, b)
  return result = a + b
  puts "The sum is #{result}"

  result
end

sum(10, 20) # => 30


def sum10(a, b = 10)
  a + b
end

sum10(100) # => 110
sum10(100, 200) # => 300


def square(number)
  result = 0

  while true
    result += number
    return if result == number * number
  end

  # puts "we did it!"
  # result
end
