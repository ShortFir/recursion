# frozen_string_literal: true

def fibs(num)
  (0..num).each_with_object([]) do |index, array|
    array << (index > 1 ? array[index - 1] + array[index - 2] : index)
  end
end

# def fib_hash(num)
#   (0..num).each_with_object({}) do |index, hash|
#     hash[index => (index > 1 ? hash[index - 1] + hash[index - 2] : index)]
#   end
# end

def fibs_rec(num)
  num > 1 ? fibs_rec(num - 1) + fibs_rec(num - 2) : num
end

puts '--------------------', 'Fibonacci Iteration', '--------------------'
(0..10).each { |num| puts "fibs #{num.to_s.rjust(2)} = #{fibs(num)}" }
puts '--------------------', 'Fibonacci Recursion', '--------------------'
(0..10).each { |num| puts "fibs_rec #{num.to_s.rjust(2)} = #{fibs_rec(num)}" }

# (0..10).each { |num| puts "fibs hash #{num.to_s.rjust(2)} = #{fib_hash(num)}" }
