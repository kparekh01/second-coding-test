def ordered_vowel_words(str)
  words = str.split(" ") #split the string of words given

  ordered_vowel_words = words.select do |word| #select words that have ordered vowels already
    ordered_vowel_word?(word)#store those words in ordered_vowel_words variable(SELECT STORES THE WORDS)
  end

  ordered_vowel_words.join(" ")#join the words in ordered_vowel_words together.
end

def ordered_vowel_word?(word) #helper method to tell if a word's vowels are in order or not.
  vowels = %w[a e i o u] #array of vowels, typed out separately!!!!!

  letters_arr = word.split("")#word split in to individual letters and stored in letters_arr variable
  vowels_arr = letters_arr.select { |l| vowels.include?(l) }#vowels letters_arr stored in vowels_arr variable

  (0...(vowels_arr.length - 1)).all? do |i| #(0..(how ever many vowels that were in the word(vowels_arr.length)))
    vowels_arr[i] <= vowels_arr[i + 1]#for each number if the first vowel is less then or == second vowel return true else false
  end
end
=begin
vowels = %w[a e i o u]
letters_arr = %w[t h i s i s a t e s t]
vowels_arr = letters_arr.select { |l| vowels.include?(l)}
["i", "i", "a", "e"]  -----> stored in vowels_arr with using SELECT
vowels_arr1 = letters_arr.map { |l| vowels.include?(l)}
[false(t), false(h), true(i), false(s), true(i), false(s), true(a), false(t), true(e), false(s), false(t)] stored in vowels_arr with using MAP
vowels_arr2 = letters_arr.each { |l| vowels.include?(l)}
["t", "h", "i", "s", "i", "s", "a", "t", "e", "s", "t"] ---> stored in vowels_arr with using EACH
Moral of the story when checking something with .include? always use SELECT! Please study the other results.
=end