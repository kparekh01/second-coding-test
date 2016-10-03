def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    (arr.length - 1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  arr
end


=begin ***************THE INTERNALS OF A SORT METHOD, HOW IT IS WRITTEN TO FUNCTION.
def bubble_sort(arr)
  sorted = false                                   # set sorted to false
  until sorted                                     # until sorted (false)
    sorted = true                                  #sets the above to true
    (arr.count - 1).times do |i|                   #(arr,length(5) -1)== 4.times do
      if arr[i] > arr[i + 1]                       #if arr[0](5) > arr[1](4)
        arr[i], arr[i + 1] = arr[i + 1], arr[i]    #then reverse their order 5,4 = 4,5
        sorted = false                             #set variable back to false so it goes back to the beginning
      end                                          #until true.
    end
  end
  arr
end
=end

p bubble_sort([2,4,5,6,3,9])