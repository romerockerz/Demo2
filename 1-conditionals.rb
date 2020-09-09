# this is how we create an array
result = ["heads","tails"].sample 
# .sample selects a random value from this array
p result
# how you create an array in js and ruby
if result == "heads"
    puts " the coin toss up head"
else 
    puts "the coin is tails"
end


age=19

status = if age<18
    :minorhood
else
    :adulthood
end
# ternary operator      
p status
status = age<18 ? :minor : :adult
p status

#symbols and strings are substitutable
shirt_size = :hello
label =  if shirt_size ==:hello
    "small"
elsif shirt_size== :m
    "medium"
else 
    "large"
end
puts "the shirt size is #{label}"

age =20
case age # its switch case in ruby
when 18,19,20  #passing multiple values for check
    puts "You are an adult now!"
when 10
    puts "still a kid lol!" 
else 
    puts "let me guess!" 
end          
# Only print age if the value is 20
puts "Age is #{age}" if age==20 # makes the code consice

