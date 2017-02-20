def solveMeFirst (a, b)
  # Hint: Type return a+b below
  a + b
end
val1 = gets.to_i
val2 = gets.to_i
sum = solveMeFirst(val1,val2)
print (sum)

# Input (stdin)
# 2
# 3

# Your Output (stdout)
# 5

# Expected Output
# 5

# ----------- #
# Given an array of N integers, can you find the sum of its elements?

#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

result = arr.inject('+')

print (result)

# ------------- #

# Compare the triplets

a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i


set_a = [a0, a1, a2]
set_b = [b0, b1, b2]

set_a_result = 0
set_b_result = 0

until set_a.empty? && set_b.empty?
  if set_a[0] > set_b[0]
    set_a_result += 1
  elsif set_a[0] < set_b[0]
    set_b_result += 1
  end
  set_a.shift
  set_b.shift
end

print(set_a_result, " ", set_b_result)

#----------------------#

#A Very Big Sum
# Print a single value equal to the sum of the elements in the array.


n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

print(arr.inject'+')

# #-------------------#
# #Diagonal Difference


def diagonal_diff
  n = 3
  a = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
  diag_1 = []
  diag_2 = []

  for i in 0...n
    diag_1 << a[i][i]
  end

  x = n -1

  for i in 0...n
    diag_2 << a[i][x]
    x -= 1
  end
  print((diag_1.inject('+') - diag_2.inject('+')).abs)
end
