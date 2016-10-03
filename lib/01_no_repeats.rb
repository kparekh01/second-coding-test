def no_repeats(year_start, year_end)
  blank = []
  year_start.upto(year_end).each{|each_year| blank << each_year if no_repeat?(each_year)}
  return blank
end
def no_repeat?(year) #helper method to help determine if a year has any repeat numbers in it (like 1977)
  already_here = []
  year.to_s.split("").each do |number|# turns the year in to a string and splits it ot each number
    return false if already_here.include?(number)#if already_here array has that number in it, then return false because year has repeat #'s
    already_here << number #other wise send all the numbers to already_here
  end
  return true #then return true , and notice we don't do anything for the already_here array, we just let it sit there, this is called a
end           #helper method and will help identify a unique numbered year, see above.