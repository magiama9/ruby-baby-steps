# Return the nth prime number.

# By listing the first four prime numbers (2,3,5,7) we can see that the fourth prime is 7.
# Write a function to return the 10,001st prime number.

require "prime"

# Doing this in Ruby with built in methods is basically cheating.

def nth_prime(n)
  return Prime.take(n).last
end

p nth_prime(10001)