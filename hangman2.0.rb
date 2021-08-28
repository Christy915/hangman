print "Insert a letter:"
letter_inserted = gets.chomp.downcase

letter_box = []
letter_box.push(letter_inserted)
letter_box.each do
  puts "The letters you have inserted are #{letter_box}."
end
 