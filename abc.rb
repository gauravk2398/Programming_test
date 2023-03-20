##############--------------------------------------------RUBY BASICS-----------------
#PUTS = used for printing. 
#GETS = taking input from user.
puts 'hours in a year:' 
puts 365*24

puts 24*60*365*10

puts "age in seconds:"
puts 24*3600*365*24

puts "hello's how are you"+' I am fine.'

puts "hi"*4

name='Gaurav'

puts 'hello '+ name

#CHOMP
math=gets
method= gets.chomp         #chomp is used to remove the space made by the "enter" key. 
puts '2 '+method + ' 3'
puts '2 '+ math + ' 3'


#ANGRY BOSS PROBLEM
state=gets.chomp
puts 'WHATDYYA MEAN, '+ state + "?!. You're FIRED."



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


#.centre/.rjust/.ljust methods
width=70
check='the test for centre'
puts (check.ljust(width))
puts (check.ljust(width)+check.rjust(width) )



#RANDOM NUMBERS

srand 2					#    here "srand" stands for seed random. it saves all the random numbers and 
puts rand(50)			#    repeats only when the "srand" no. is given the same.
puts rand(23)
puts rand(54)
puts rand(19)
puts ' '
srand 2
puts rand(54)
puts rand(23)
puts rand(50)
puts rand(19)




#IF-ELSE STATEMENTS
puts  "Enter your name:"
name=gets.chomp
if(name=='Gaurav')
	puts("works")
elsif(name=='Kumar')
	puts 'else-if executed'
else
	puts 'not expecting that'
end							# end is used to tell that the conditions are executed properly. It is must to write. 


# #PROBLEM STATEMENT:Deaf grandma. Whatever you say to Grandma (whatever you type in), she should respond with this:
# HUH?!SPEAK UP, SONNY!
# unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back:
# NO, NOT SINCE 1938!

puts 'you says:'
ques=gets.chomp
while true								#WHILE LOOP
	if(ques!=ques.upcase)
		puts 'Grannie says: HUH?! SPEAK UP, SONNY!'
		ques=gets.chomp
	else 
		puts 'Grannie: NO, NOT SINCE 1938!'
		break
	end 
end



#FEW STRING METHODS
letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters



#LEAP YEAR

puts 'starts:'
starting=gets.chomp.to_i

puts 'ending:'
ending=gets.chomp.to_i

puts 'LEAP YEARS IN BETWEEN THE RANGE ARE:'

while true
	if starting>ending
		break
	elsif starting%400==0 && starting<ending
		puts starting
		starting=starting+4
	elsif starting%100==0 && starting<ending
		starting=starting+4
	elsif starting%4==0 && starting<ending
		puts starting
		starting=starting+4
		
	end
end


#ARRAY with EACH method. 
name=['deepak','gaurav','himanshu']
name.each do |names|			#| names| is the variable assigned to the elements of array. for(int i:name), Like "i".
	puts names+' kumar'
end



#DO
3.times do 
	puts "HIP,HIP,HURRAH"
end


#ARRAY AND ITS METHODS
name=[10,5,2,15,18,3,4]
 puts name.sort
 puts name.last     #returns the last element of the array
 puts name.push 4   	# pushes the element in the last of the array.
 puts name.pop      	# removes and return the last element of the array. 
 puts name.length		# returns the length of the array.
 puts name.join(',')	#joins the elements of the array depending on the parameter passed to it.



 #DEFINE NEW METHOD
 def  say_Heloo			#defining the method. 
 	puts 'hello'
 end 
 say_Heloo				#calling it here.



 #New method with PARAMETERS
 def say_Hi number,sum_times			#here NUMBER,SUM_TIMES are the parameters.
	times=number+sum_times
    ans='hi'*times
    puts ans
	
end
say_Hi 2,5


							#RECURSION
#factorial ques
def facto num
    if num<0
        false
    elsif num==1
        1
    else
        num*facto(num-1)
    end
end
puts facto 5


#Counting the islands in the ocean problem
M='land'
o = 'water'
world = [[o,o,o,o,o,o,o,o,o,o,o],
        [o,o,o,o,M,M,o,o,o,o,o],
        [o,o,o,o,o,o,o,o,M,M,o],
        [o,o,o,M,o,o,o,o,o,M,o],
        [o,o,o,M,o,M,M,o,o,o,o],
        [o,o,o,o,M,M,M,M,o,o,o],
        [o,o,o,M,M,M,M,M,M,M,o],
        [o,o,o,M,M,o,M,M,M,o,o],
        [o,o,o,o,o,o,M,M,o,o,o],
        [o,M,o,o,o,M,o,o,o,o,o],
        [o,o,o,o,o,o,o,o,o,o,o]]

def count_islands world,x,y
    
    count=1
    
    if(world[y][x]!='land')
        return 0
    end
    world[y][x]='counted'

        count=count+count_islands(world,x,y-1)
        count=count+count_islands(world,x,y+1)
        count=count+count_islands(world,x+1,y-1)
        count=count+count_islands(world,x-1,y-1)
        count=count+count_islands(world,x+1,y)
        count=count+count_islands(world,x-1,y)
        count=count+count_islands(world,x-1,y+1)
        count=count+count_islands(world,x+1,y+1)
    
    return count

end
puts  count_islands(world,5,5)
 

