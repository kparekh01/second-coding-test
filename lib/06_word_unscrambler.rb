def word_unscrambler(str, words)
    blank = []
    str_sorted = str.split("").sort #stores the given dictionary word sorted! "cat" stored as ["a", "c", "t"]
    words.each{|word| blank << word if word.split("").sort == str_sorted}
    #splits words in to separate words and sorts each word like above
    #and compares them to str_sorted and sends them to blank array if they match
    #displays all the words that match the letters in the original word.
    blank
end


