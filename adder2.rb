def to_b(str)
  str.downcase!
  if ["true","yes","y"].include?(str)
    return true
  elsif ["false","no","n"].include?(str)
    return false
  end
end

def new_cap
  puts "Drink?"
  drink = gets.chomp
  
  puts "Maker?"
  maker = gets.chomp
  
  puts "Unique?"
  unique = gets.chomp
  
  # puts "Picture #?"
  # num = gets.chomp
  # #file location from string
  
  puts "Tags?"
  tags = gets.chomp
  
  new_entry = "\nBottlecap.create(drink: \"#{drink}\", maker: \"#{maker}\", unique: #{to_b(unique)}, tag_list: \"#{tags}\")"
  
  open('db/seeds.rb', 'a') do |f|
    f << new_entry
  end
  
  puts "Another?"
  if ["n", "no"].include?(gets.chomp)
    exit
  else
    new_cap
  end
end

new_cap