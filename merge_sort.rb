# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize
def merge_sort(array)
  # if n < 2
  #    return
  # else
  #    sort left half of elements
  #    sort right half of elements
  #    merge sorted halves

  return array if array.length < 2

  a1 = merge_sort(array.slice!(0, array.length / 2))
  a2 = merge_sort(array)

  # l_t = a1.length + a2.length

  # (0..l_t).each_with_object([]) do |_i, a|
  #   a << (a1[0] < a2[0] ? a1.slice!(0) : a2.slice!(0))
  # end

  a1[0] < a2[0] ? a1 + a2 : a2 + a1

  # if array.length == 2
  #   array[0] < array[1] ? array : [array[1], array[0]]
  # else
  #   a1 = merge_sort(array.slice!(0, array.length / 2))
  #   a2 = merge_sort(array)
  #   a1[0] < a2[0] ? a1 + a2 : a2 + a1
  # end

  # array1 = merge_sort(array.slice!(0, array.length / 2))
  # array2 = merge_sort(array)
  # array3 =
end
# rubocop:enable Metrics/AbcSize

puts "Merge Sort [5, 2, 1, 3, 6, 4] = #{merge_sort([5, 2, 1, 3, 6, 4])}"
