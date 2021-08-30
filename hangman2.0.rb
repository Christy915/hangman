word_box = ["Christy", "Ruby", "wolf", "ball", "lamby", "English"]

word = word_box.sample.downcase
result = []
letter_box = []
print "The word you are guessing has #{word.length} letters."

loop do
print "Now insert a letter:"
letter_inserted = gets.chomp.downcase

if letter_box.include? letter_inserted
  letter_box.uniq
  puts "You have tried this letter before. Try another one!"
  next
end
letter_box.push(letter_inserted)
puts "The letter(s) you have inserted is(are) #{letter_box}."

if word.include? letter_inserted
  puts "You got it!"
  result.push(letter_inserted)
  dif = word.split(//).difference(result)
  if dif.length > 0
    puts "You have only #{dif.length} letters left."
  else
    puts "Success! The answer is #{word}!"
  end
else
  puts "What about trying another letter?"
end

break  if word.split(//).sort == result.sort
end