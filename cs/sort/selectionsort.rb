#!/usr/bin/env ruby


array = [4,5,2,3,1]
p array
def selection_sort(array)
  n = array.length - 1
  puts "n: #{n} , n.times: #{n.times.to_a}"
  puts
  n.times do |i|
    min_index = i
    puts "at times i:#{i}, min_index=#{min_index}"
    for j in (i + 1)..n #if i is [0], then from [1] to [4] 
      if array[j] < array[min_index]
        puts "at times min_index_pos:#{j}"
        puts "at times v_j:#{array[j]}, v_min_index:#{array[min_index]}"
        min_index = j 
      end
    end
    if min_index != i
      puts "at times v_j:#{array[i]}, v_min_index:#{array[min_index]}"
      array[i], array[min_index] = array[min_index], array[i] 
      p array
    end
    puts
  end
  array
end

p selection_sort(array)


#NOTE:
# from i:0 to n-1:
#   at i:0, value is 4.
#   set min_index at i:0,
#   search from j:1 to n, for min_index:
#      if j_value < array[min_index]
#          set min_index = j 
#   if min_index has changed:
#       swap i and min_index
# for the first set, 
# [4,5,2,3,1]-=, 4 and 1 will be swapped
# resulting 1,5,2,3,4
# [1,2,5,3,4]
# [1,2,3,5,4]
# [1,2,3,4,5]