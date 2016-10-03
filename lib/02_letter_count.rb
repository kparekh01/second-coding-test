def letter_count(str)
  hash_count = Hash.new(0)#creates a new hash with a zero count{"" => 0} any key not entered will have a 0 value auto.
  str.delete(" ").each_char.sort.map do |letter| #delete the spaces in str, split the letters, sort and map them
    hash_count[letter] += 1 # where letter will be the new key and count will be new value in the hash_count hash.
  end #Ex: "there" hash_count = {"e"=>2, "h"=>1, "r"=>1, "t"=>1}
  hash_count
end

#point of reference I used .map on this code , the code would work just as well with .each and .select

