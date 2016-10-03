def morse_encode(str)
  morse_code_hash = {
      "a" => ".-",
      "b"	=> "...",
      "c" => "-.-.",
      "d"	=> "..",
      "e" => ".",
      "f" => "..-.",
      "g"	=> "--.",
      "h" => "....",
      "i" => "..",
      "j" => ".---",
      "k" => "-.-",
      "l"	=> ".-..",
      "m" => "--",
      "n" => "-.",
      "o" => "---",
      "p"	=> ".--.",
      "q" => "--.-",
      "r" => ".-.",
      "s"	=> "...",
      "t" => "-",
      "u"	=> "..-",
      "v" => "...-",
      "w"	=> ".--",
      "x" => "-..-",
      "y" => "-.--",
      "z" => "--.."
  }
  result = str.each_char.map {|each| morse_code_hash[each]}
  result.join(" ")
end
=begin
p morse_encode("q") #["--.-"]
p morse_encode("cat") #["-.-.", ".-", "-"]
p morse_encode("cat in the hat") #["-.-.", ".-", "-", nil, "..", "-.", nil, "-", "....", ".", nil, "....", ".-", "-"]
upon mapping the results via result = str.each_char.map {|each| morse_code_hash[each]}, please see above what is actually stored
inside of results before we join it.
If you notice, there is already a space after each letter and a nil followed by a space after each word
when we join the results with a space .join(" "), the space between each letter is kept as is and the nil is replaced by a " "
and is added to the space that followed nil originally to make a ("  ") double space after each word as per test request.  Below shows you the
result.join(" ")
p morse_encode("q")# "--.-"
p morse_encode("cat")# "-.-. .- -"
p morse_encode("cat in the hat")# "-.-. .- -  .. -.  - .... .  .... .- -"
=end
