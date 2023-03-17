#concating  full name and returning the numbers of characters.
puts 'first name '
first_name=gets.chomp
puts 'middle name'
middle_Name=gets.chomp
puts 'last name'
lastName=gets.chomp
puts 'hello Mr.' + first_name +' '+ middle_Name +' ' + lastName + " ! hope you are having great time."
len=first_name.length+ middle_Name.length+ lastName.length
puts 'did you know that your name have ' + len.to_s + ' number of characters.' 