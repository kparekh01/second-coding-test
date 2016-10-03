=begin
combine_arrays

Write a method that takes two sorted arrays and produces the sorted array that combines both.

Restrictions:

Do not call sort anywhere.
Do not in any way modify the two arrays given to you.
Do not circumvent (2) by cloning or duplicating the two arrays, only to modify the copies.
Hint: you will probably need indices into the two arrays.

combine_arrays([1, 3, 5], [2, 4, 6]) == [1, 2, 3, 4, 5, 6]
=end
def combine_arrays(arr1, arr2)
  arr3 = arr1 + arr2                        #arr3[1,3,5,2,4,6]
  (0..(arr3.length-1)).each do |i| # i = 0  #sorted[] #unsorted[#[1,3,5,2,4,6]
    element = arr3[i] #arr3[0] = 1
        index = i # index = 0
        while index > 0 && arr3[index - 1] > element #(0 > 0 && arr[-1] > element)
        arr3[index] = arr3[index - 1]                #false statement
        index = index - 1              #arr3[1,3,5,2,4,6]
        arr3[index] = element          #new - sorted[1] #unsorted[#[3,5,2,4,6]
        end
  end
  p arr3
end
combine_arrays([1, 3, 5], [2, 4, 6])
=begin
(0..(arr3.length-1)).each do |i| # i = 1     #arr3[1,3,5,2,4,6]
  element = arr3[i] #arr3[1] = 3             #sorted[1] #unsorted[#[3,5,2,4,6]
  index = i # index = 1
    while(index > 0 && arr3[index - 1] > element)#(1 > 0 && arr[0](1) > 3)
    arr3[index] = arr3[index - 1]                #false statement
    index = index - 1              #arr3[1,3,5,2,4,6]
    arr3[index] = element          #new - sorted[1,3] #unsorted[#[5,2,4,6]
    end
*************************NEXT STEP*****************************************
(0..(arr3.length-1)).each do |i| # i = 2     #arr3[1,3,5,2,4,6]
  element = arr3[i] #arr3[2] = 5             #sorted[1,3] #unsorted[#[5,2,4,6]
  index = i # index = 2
    while(index > 0 && arr3[index - 1] > element)#(2 > 0 && arr[1](3) > 5)
    arr3[index] = arr3[index - 1]                #false statement
    index = index - 1              #arr3[1,3,5,2,4,6]
    arr3[index] = element          #new - sorted[1,3,5] #unsorted[#[2,4,6]
    end
*************************NEXT STEP IMPORTANT!!************************************

(0..(arr3.length-1)).each do |i| # i = 3     #arr3[1,3,5,2,4,6]
  element = arr3[i] #arr3[3] = 2             #sorted[1,3,5] #unsorted[#[2,4,6]
  index = i # index = 3
    while(index > 0 && arr3[index - 1] > element)#(3 > 0 && arr3[2](5) > 2)
    arr3[index] = arr3[index - 1] # arr3[3](2) = arr3[2](5)     # True statement
    index = index - 1 # 2 takes the index of 5
    arr3[index] = element #2 goes back in to loop as element
    end           until while statement is false
                                                    #arr3[1,3,5,2,4,6]
                                        #newsorted[1,2,3,5]  #unsorted[#[4,6]

=end