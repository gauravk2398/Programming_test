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
print "hi"       #diff. between print and puts is that print stays in the same line and puts moves to the next line.

name='Gaurav'

puts 'hello '+ name

#CHOMP
math=gets
method= gets.chomp         #chomp is used to remove the space made by the "enter" key. 
puts '2 '+method + ' 3'
puts '2 '+ math + ' 3'


#CONVERSIONS
to_a  #To Array
to_i  #To Integer
to_s  #To String




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




#STRING MANIPULATION
da_man = 'Mr. T'
big_T
= da_man[4]   		#String can be used as array only.
puts big_T
puts ?T 			#"?" is used for checking.	basically for comparisons
puts 84.chr			#this method is used for finding char at given index.


#Another
puts 'Enter your name'
getName=gets.chomp
if(getName[0]==?c)       #or you can directly write getName[0]=='c'. 
    puts "hello #{getName},how are you"
else
    puts "you are not authorized"
end

#SUBSTRING of the String.
puts getName[1,3]       
puts getName[1,4]       #1-starting index,4- Numbers of characters to be taken(including last one as well).
puts getName[1..5]		#it includes the last index as well.(print all the numbers in the range)

#NOTE:INDEXING FROM BACKSIDE OF THE STRING STARTES FROM -1 AND PROCEDES FURTHER.
puts getName[-3..-1] 




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


 #String manipulation ques
list= 'abgownsdlkwefcwf'
lists=list.split("").sort
puts lists


#String to Array and sorting them.
list= 'abgownsdlk'
listArr=[]
listArr.push(list.split("").sort)
puts listArr.join

#Using a variable in Double quotes.
name= "Gaurav"
puts "hello #{name}"  			#This can only be done in double quotes only.Single quotes change it to normal statement.




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

#Giving Array input and Sorting Array using inbluit method.
arr=[3,9,5,1,8]
def willsort arr
    arr.sort.join(",")
end

puts willsort(arr)





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



#TIME CLASS
time=Time.new
puts time


#HASH CLASS
new_Hash=Hash.new		#it is used to store key,value pairs.

#Example of Hash class
dict_array = []			    # array literal; same as Array.new
dict_hash ={}				# hash literal;
dict_array[0] = 'candle'
dict_array[1] = 'glasses'
dict_array[2] = 'truck'
dict_array[3] = 'Alicia'
dict_hash[' shia-a'] = 'candle'
dict_hash[' shaya' ] = 'glasses'
dict_hash[' shasha'] = 'truck'
dict_hash[' shasha'] = 'Alicia'
dict_array.each do |word|
puts word
end
dict_hash.each do |c_word, word|
puts "#{c_word}:#{word}"
end


#RANGE CLASS
allowed= 'A'..'S'             #This is how we define range.


#NOTE: IF WE USE 3 DOTS INSTEAD OF TWO DOTS, THEN IT EXCLUDES THE LAST ELEMENT OF THE RANGE.

#Example
name= 'B'
range='A'..'C'
if range.include?(name)
    puts "working fine"
else
    puts "working but not in the range"
end


#One full example with few more methods
#This is your range literal.
letters = 'a'..'c'
#Convert range to array.
puts(['a','b','c'] == letters.to_a)
#Iterate over a range:
('A'..'Z').each do |letter|
print letter
end
puts
god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979 ))
puts(god_bless_the_70s.include?(1980 ))
puts(god_bless_the_70s.include?(1974.5))



#HOPING IN INTEGER CLASS
class Integer
def to_eng
    if self == 5            # "self" is used to call the object on which the method is called on. 
        english = 'five'
    else
        english = 'forty-two'
    end
    english
end
end
puts 5.to_eng
puts 42.to_eng
puts 7.to_eng


#CREATING THE CLASS and making it's object.
class Check
    def f_pro sel
        if(sel == 5)
            puts 'yes,things are fine.'
        else
            puts 'still working fine.'
        end
    end
end

you=Check.new
ans=you.f_pro(5)



#INSTANCE VARIABLE=- variables which are object variables(and not method variables) and lasts till the object exists. 
class Die										#They are created using "@" sign in front of them.
	def roll
		@number_showing = 1 + rand(6)			#"@number_showing" is the instance variable.
	end
	def showing
		@number_showing
	end
end
die = Die.new
die.roll
puts die.showing




#INITIALIZE---almost lke constructor in java. As soon as object is created, it automatically gets called.
class Die
	def initialize					#CONSTRUCTOR.
		roll
	end
	def roll
		@number_showing = 1 + rand(6)
	end
	def showing
		@number_showing
	end
end
puts Die.new.showing


#BLOCKS AND PROCS
#BLOCK-- take a block of code between "do" and "end"
#PROC--  wrap the block of code with the object. This object is known as "PROC".

#Sytnax
toast = Proc.new do 		#Initialization of Procs
puts 'Cheers!' 				#DO-END is the block 
end
toast.call					#calling a PROC using a call method.
toast.call
toast.call


#PARAMETERIZED BLOCKS
name=Proc.new do |yourName|
    puts " hey #{yourName}, how are you."
end
name.call 'Gaurav'
