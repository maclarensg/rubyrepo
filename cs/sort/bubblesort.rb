#!/usr/bin/env ruby


array = [4,5,2,3,1]

def bubble_sort(array)
  return array if array.size <= 1
  swap = true
  while swap # Do until swap is false
    swap = false # if swap never happens, this will cause while loop to exit
    
    (array.length - 1).times do |x|
      puts "at #{x}: "
      if array[x] > array[x+1]
        array[x], array[x+1] = array[x+1], array[x]
        swap = true # Swap has happen, continue while loop
      end
    end
  end
  array
end

p bubble_sort(array)

# loop = true
# while loop
#   loop = false
#  iterate array.length - 1:
#    if item > item+1, swap, loop = true

