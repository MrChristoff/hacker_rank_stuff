# def solveMeFirst (a, b)
#   # Hint: Type return a+b below
#   a + b
# end
# val1 = gets.to_i
# val2 = gets.to_i
# sum = solveMeFirst(val1,val2)
# print (sum)
#
# # Input (stdin)
# # 2
# # 3
#
# # Your Output (stdout)
# # 5
#
# # Expected Output
# # 5
#
# # ----------- #
# # Given an array of N integers, can you find the sum of its elements?
#
# #!/bin/ruby
#
# n = gets.strip.to_i
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)
#
# result = arr.inject('+')
#
# print (result)
#
# # ------------- #
#
# # Compare the triplets
#
# a0,a1,a2 = gets.strip.split(' ')
# a0 = a0.to_i
# a1 = a1.to_i
# a2 = a2.to_i
# b0,b1,b2 = gets.strip.split(' ')
# b0 = b0.to_i
# b1 = b1.to_i
# b2 = b2.to_i
#
#
# set_a = [a0, a1, a2]
# set_b = [b0, b1, b2]
#
# set_a_result = 0
# set_b_result = 0
#
# until set_a.empty? && set_b.empty?
#   if set_a[0] > set_b[0]
#     set_a_result += 1
#   elsif set_a[0] < set_b[0]
#     set_b_result += 1
#   end
#   set_a.shift
#   set_b.shift
# end
#
# print(set_a_result, " ", set_b_result)
#
# #----------------------#

#A Very Big Sum
# Print a single value equal to the sum of the elements in the array.


# n = gets.strip.to_i
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)
#
# print(arr.inject'+')

# # #-------------------#
# # #Diagonal Difference


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


# --------------------------- #

# Plus Minus

# Given an array of integers, calculate which fraction of its elements are positive,
# which fraction of its elements are negative, and which fraction of its elements are zeroes

# n = gets.strip.to_i
# arr = gets.strip
# arr = arr.split(' ').map(&:to_i)

 arr = [1, 2, -1, -2, 0, 0, 5, 3]
n = arr.length

arr_positive = []
arr_negative = []
arr_zero = []

# #positive? didn't work in hackerrank env
arr.each do |x|
    case
    when x == 0
        arr_zero << x
    when x > 0
        arr_positive << x
    when x < 0
        arr_negative << x
    end
end

positive_result = (arr_positive.length / n.to_f)
negative_result = (arr_negative.length / n.to_f)
zero_result = (arr_zero.length / n.to_f)


# print(positive_result, "\n", negative_result, "\n", zero_result)


# Staircase
# Consider a staircase of size : 4
#
#     #
#    ##
#   ###
#  ####
#  Observe that its base and height are both equal to 4, and the image is drawn using # symbols and spaces. The last line is not preceded by any spaces.

#  Write a program that prints a staircase of size n .

def staircase
  n = 4
  frame = []
  result = ""

  n.times do
    frame << []
  end

  frame.each_with_index do |step, idx|
    idx += 1
    insert = n - idx

    insert.times do
      step << " "
    end

    idx.times do
      step << "#"
    end
    result << step.join
    result << "\n"

  end

  print(result)

end

# Time conversion
# conver a single string of time "hh:mm:ssAM||PM" to 24hour display
# 12:00:00AM = 00:00:00
# 12:00:00PM = 12:00:00

def time_conversion
  time = "07:12:00PM"

  case
  when time[0..1] == "12" && time[-2] == "A"
    result = time.sub("12", "00")
    result = result.chomp("AM")
  when time[0..1] == "12" && time[-2] == "P"
    result = time.chomp("PM")
  when time[-2] == "A"
    result = time.chomp("AM")
  else
    hour = (time[0..1].to_i + 12).to_s
    result = (time.sub(/\d\d/, hour)).chomp("PM")

  end
  print(result, "\n")
end

time_conversion
