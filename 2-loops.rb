# Simple loop
#loop do
    #infinite loop
    #puts "This will run forever. Press ctrl+c "
#end
# how to exit from loop conditionally
# similar to for loop
i =0 
loop do 
    #puts i
    i+=1
    if i ==10
        break
    end
end

#skipping codes like continue
i=0
loop do 
i+=2
if i==4
    next # skip rest of the code below it
end
puts i

if i ==10
    break
end
end

# while loop 
# gets doesnt remove new line character 
# chomp removes it
puts "Enter your age :"
#age = gets
#gets takes input as string
#age = gets.chomp
#age  = age.to_i
age =5;
# converts into integer
puts age

while age>=0
    puts age
    age= age-1
end
puts "done!"
#reverse of while loop : until loop
# makes it more readable
puts "Until loop"
age = 5
until age <0
    puts age
    age-=1
end
puts "done!"

# Do while loop
# loop is executed atleast once
loop do 
    puts "Atleast runs once"
    puts "Do you want to continue?"
    answer = gets.chomp
    if answer !="y"
        break
    end
end

nums = [1,2,3,4,5]
puts ="For loop"
for i in nums do
    puts i
end



