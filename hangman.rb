word = "christy".chars
letters_inserted = []
result = []

loop do
  print "Give me a letter:"
  letter = gets.chomp.downcase

  letter_present = letters_inserted.include?(letter)
  if letter_present
    puts "You've tried this before!"
    letters_inserted.uniq
  else
    letters_inserted.push(letter)
  end
  print letters_inserted

  letter_present = word.include?(letter)
  if letter_present
    puts "You got it!"
    result.push(letter_present)
    print result
    if (word-result).empty? and (result-word).empty?
      puts "Success!"
      break 
    end
  else
    print "Try it again!"
  end
end

