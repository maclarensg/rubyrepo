#!/usr/bin/env ruby


array = [4,5,2,3,1]
  
def insertion_sort(array)
  (array.length).times do |j|
    puts "at times j:#{j}"
    while j > 0
      puts "at while j-1:#{array[j-1]}, j: #{array[j]}"
      if array[j-1] > array[j]
        array[j], array[j-1] = array[j-1], array[j]
        puts "if swap j-1:#{array[j-1]}, j: #{array[j]}"
      else
        break
      end
      j-=1
    end
    p array
    puts
  end
  array
end


p insertion_sort(array)

# notes:
# j0: do nothing
# j1: swap [1] and [0] if  [1] > [0]
# j2: 
#     swap [2] and [1] if  [2] > [1]
#     swap [1] and [0] if  [1] > [0]
# j3:
#     swap [3] and [2] if  [3] > [2] 
#     swap [2] and [1] if  [2] > [1]
#     swap [1] and [0] if  [1] > [0]
# ...
# j5: