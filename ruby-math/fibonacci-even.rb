def fib_even
  # Euler problems #2
  # Find sum of all even fibonacci numbers less than or equal to 4 million
  sum=0
  current=1
  last=1
  next_num=2
  
  # While the next fib number is <= 4 million
  # Add the current and last numbers
  # Move forward through the numbers
  while next_num <= 4000000
    next_num = current + last
    last = current
    current = next_num
    if next_num.even?
      sum += next_num
    end
  end
  puts sum
end
fib_even
