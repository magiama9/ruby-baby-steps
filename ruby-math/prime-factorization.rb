require 'prime'

# Return the largest prime factor of a number
# This is using the built in Ruby method to check if a number is prime
def largest_prime_factor(num)
  test = 2
  largest = 0

  # Keep checking divisors of the number.
  # If the number is evenly divisible by the test and the test is prime
  # Set that number to the largest prime factor, and rerun the test with the divided number
  # Otherwise iterate the test by 1
  while test <= num
    if ((num % test == 0) && Prime.prime?(test))
      largest = test
      num = num/test
    end
    test += 1
  end
  
  # print the largest
  p largest
end

largest_prime_factor(600851475143)