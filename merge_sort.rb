# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid...arr.length])
  merge(left, right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    sorted << if left.first <= right.first
                left.shift
              else
                right.shift
              end
  end

  sorted + left + right
end

puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).inspect
