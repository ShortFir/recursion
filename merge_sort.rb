# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
def merge_sort(array, return_array = [])
  # if n < 2
  #    return
  # else
  #    sort left half of elements
  #    sort right half of elements
  #    merge sorted halves
  return array if array.length < 2

  a1 = merge_sort(array.slice!(0, array.length / 2))
  a2 = merge_sort(array)
  loop do
    return_array << (a1[0] < a2[0] ? a1.slice!(0) : a2.slice!(0))
    if a1.empty?
      return_array += a2
      break
    elsif a2.empty?
      return_array += a1
      break
    end
  end
  return_array
end
# rubocop:enable Metrics/MethodLength

count = 0
name = :merge_sort
TracePoint.trace(:call) do |t|
  count += 1 if t.method_id == name
end

print "Merge Sort [5, 2, 1, 3, 6, 4] = #{merge_sort([5, 2, 1, 3, 6, 4])}", "\n", 'Recursion Calls = ', count, "\n", "\n"
count = 0
print "Merge Sort [5, 2, 1, 3, 6, 4, 7, 8] = #{merge_sort([5, 2, 1, 3, 6, 4, 7, 8])}", "\n", 'Recursion Calls = ', count, "\n", "\n"
count = 0
print "Merge Sort [10, 9, 5, 7, 2, 1, 8, 3, 6, 4] = #{merge_sort([10, 9, 5, 7, 2, 1, 8, 3, 6, 4])}", "\n", 'Recursion Calls = ', count, "\n", "\n"
count = 0
print "Merge Sort [10, 9, 5, 7, 2, 12, 1, 8, 3, 6, 4, 11] = #{merge_sort([10, 9, 5, 7, 2, 12, 1, 8, 3, 6, 4, 11])}", "\n", 'Recursion Calls = ', count, "\n", "\n"
count = 0
print "Merge Sort [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0] = #{merge_sort([14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0])}", "\n", 'Recursion Calls = ', count, "\n", "\n"
count = 0
