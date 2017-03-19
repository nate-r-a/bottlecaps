
@b = Bottlecap.new

puts "Beer?"
@b.name = gets.chomps

puts "Brewery?"
@b.brewery = gets.chomp

puts "Picture #?"
num = gets.chomp
#file location from string

puts "Tags?"
tags = gets.chomp
@b.tag_list.add(tags, parse: :true)

@b.save