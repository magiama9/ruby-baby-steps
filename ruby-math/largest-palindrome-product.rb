# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
def palindrome(num)
  rev = 0
  r = num
  while r != 0
    i= r%10
    rev = rev*10 + i
    r /=10
  end
  if rev == num
    return true
  end
  return false
end


def palindrome_product
  number1 = 100
  
  largest = 0
  while number1 < 1000
    (100..999).each do |i|
      total = number1 * i
     if (palindrome(total) && total > largest)
        largest = total
     end
    end
  number1 +=1
  end
  p largest
end

palindrome_product