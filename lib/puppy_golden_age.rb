=begin
puppy_golden_age

Each year, the Census Bureau records the change in the population of puppies. In year zero, if 10 puppies are born and 5 die (sad!), there are 5 more puppies. In year one, if 10 puppies are born and 13 die, there are 3 fewer puppies. An array of changes in puppy populations would look like [5, -3, ...].

I give you an array of annual changes in the puppy population. I want to find the Puppy Golden Age, the years in which the cumulative change in the puppy population was greatest. For instance, if the array is [100, -101, 200, -3, 1000], the Puppy Golden Age existed between years 2 and 4 (representing [200, -3, 1000]), since that's the time period during which the most puppies were born.

Write a method, puppy_golden_age, which should return the start and end indices of the Puppy Golden Age:

puppy_golden_age([100, -101, 200, -3, 1000]) == [2, 4]
puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5]
Do not worry about the speed of your solution.
Hints: iterate through all the subarrays; compute the sum of each subarray and compare to the best Puppy Golden Age seen so far. A subarray is defined by its start index and end indices, so iterate through all pairs of indices. You should probably use two loops, one nested inside the other.
=end

def puppy_golden_age(array)
  result = []
  subs = []
  sum = []
  idx1 = 0
  while idx1 < array.length
    length = 1
    while (idx1 + length) <= array.length
      substring = array.slice(idx1, length)
      subs << substring
      sum << substring.inject(:+)
      length += 1
    end
    idx1 += 1
  end #below is an illustration for example 1
 # p subs hold all substring --> [[100], [100, -101], [100, -101, 200], [100, -101, 200, -3], [100, -101, 200, -3, 1000], [-101], [-101, 200], [-101, 200, -3], [-101, 200, -3, 1000], [200], [200, -3], [200, -3, 1000], [-3], [-3, 1000], [1000]]
 # p sum  hold all the totals of substring --> [100, -1, 199, 196, 1196, -101, 99, 96, 1096, 200, 197, 1197, -3, 997, 1000]
 # p sum.max #1197 -- the greatest total from sum
  subs.each do |arr|
    if arr.length > 1 && arr.inject(:+) == sum.max # if each array in subs has a length > 1  and it's total == the sum.max
      result << array.index(arr.first) #then push the array's index location of that first number in arr that == sum.max
      result << array.index(arr.last)  #same as above except it pushes the last number.
    end
  end
  p result
end


puppy_golden_age([100, -101, 200, -3, 1000]) #== [2, 4] --example 1
puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) #== [0, 5]   --example 2