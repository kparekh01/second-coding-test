=begin
Bonus: subsets

Attempt this after you have the other two problems working.

Write a method that, given an array of unique items, finds all the subsets of items:

subsets(["a", "b", "c"]) == [
  [], # note that the empty set counts!
  ["a"], ["a", "b"], ["a", "b", "c"], ["a", "c"],
  ["b"], ["b", "c"],
  ["c"]
=end
def subsets(array)
  subs = [] # for results of substring
  idx1 = 0
  while idx1 < array.length
    idx2 = 1
    while (idx1 + idx2) <= array.length
      substring1 = array.slice(idx1, idx2)
      subs << substring1
      idx2 += 1
    end
    idx1 += 1
  end #The first and the last of a substring array never unite when slicing.
  subs << (subs.first + subs.last) #first and last sub_string joined together <<
  subs << [] # a blank one representing the empty array left
  subs.sort #displays the subs in order.
end
subsets(["a", "b", "c"])
subsets(["a", "b", "c", "d", "e"])