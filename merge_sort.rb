# frozen_string_literal: true

def merge_sort(array)
  return array if array.length < 2

  ar1 = merge_sort(array.slice!(0, array.length / 2))
  ar2 = merge_sort(array)
  merge_sort_loop(ar1, ar2)
end

def merge_sort_loop(ar1, ar2, return_array = [])
  loop do
    return_array << (ar1[0] < ar2[0] ? ar1.slice!(0) : ar2.slice!(0))
    return return_array += ar2 if ar1.empty?
    return return_array += ar1 if ar2.empty?
  end
end

def gen_array(len = 100)
  (1..len).each_with_object([]) do |_i, a|
    a << rand(100)
  end
end

10.times do
  array = gen_array(10)
  array_sorted = merge_sort(Array.new(array))
  puts "#{array.to_s.ljust(40)} :SORT: #{array_sorted.to_s.ljust(41)}"
end

# count = 0
# name = :merge_sort
# TracePoint.trace(:call) do |t|
#   count += 1 if t.method_id == name
# end

# print "Merge Sort [5, 2, 1, 3, 6, 4] = #{merge_sort([5, 2, 1, 3, 6, 4])}"
# print "\n", 'Recursion Calls = ', count, "\n", "\n"
# count = 0
# print "Merge Sort [5, 2, 1, 3, 6, 4, 7, 8] = #{merge_sort([5, 2, 1, 3, 6, 4, 7, 8])}", "\n"
# print "\n", 'Recursion Calls = ', count, "\n", "\n"
# count = 0
# print "Merge Sort [10, 9, 5, 7, 2, 1, 8, 3, 6, 4] = #{merge_sort([10, 9, 5, 7, 2, 1, 8, 3, 6, 4])}"
# print "\n", 'Recursion Calls = ', count, "\n", "\n"
# count = 0
# print "Merge Sort [10, 9, 5, 7, 2, 12, 1, 8, 3, 6, 4, 11] = #{merge_sort([10, 9, 5, 7, 2, 12, 1, 8, 3, 6, 4, 11])}"
# print "\n", 'Recursion Calls = ', count, "\n", "\n"
# count = 0
# print "Merge Sort [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0] = "
# print "#{merge_sort([14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0])}"
# print "\n", 'Recursion Calls = ', count, "\n", "\n"
# count = 0
