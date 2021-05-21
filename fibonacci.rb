# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
def fibs(num)
  (0..num).each_with_object([]) do |index, array|
    if index.zero?
      num1 = 0
      num2 = 0
    elsif index == 1
      num1 = 1
      num2 = 0
    else
      num1 = array[index - 1]
      num2 = array[index - 2]
    end
    array << num1 + num2
  end
end
# rubocop:enable Metrics/MethodLength

def fibs_rec(num)
  num > 1 ? fibs_rec(num - 1) + fibs_rec(num - 2) : num
end

puts '--------------------', 'Fibonacci Iteration', '--------------------'
(0..10).each { |num| puts "fibs #{num.to_s.rjust(2)} = #{fibs(num)}" }
puts '--------------------', 'Fibonacci Recursion', '--------------------'
(0..10).each { |num| puts "fibs_rec #{num.to_s.rjust(2)} = #{fibs_rec(num)}" }
