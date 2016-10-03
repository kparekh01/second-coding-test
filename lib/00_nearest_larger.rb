def nearest_larger(arr, idx)
  arr.each do |number| # for each number
    original_number = arr[idx] # represents the number given
    behind_original = arr[idx-1] # represents the number behind the number given
    after_original = arr[idx+1] # represents the number after the number given
     if number > original_number #if number in each is greater than the original nunber
       return arr.index(number) #then return the index of that number
     elsif behind_original > original_number && behind_original > after_original
       return arr.index(behind_original)#otherwise if behind_original is greater than both original and after_original
     end #than return the index of behind_original.
  end
  nil #if none of the above return nil
end
