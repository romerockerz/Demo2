menu = {"burger":3, "taco":5,"chips":9}
#keys are stored as symbols
p menu
#second way to create a hash
menu1 = {:coke=> 4 , :pepsi=> 5}
p menu1
#third way to create hash
menu2 = {dosa: 10 , idili:3}
p menu2 

p menu[:burger]
p menu1[:pepsi]

menu1[:pepsi] =10
p menu1[:thumsup]
p menu1.fetch(:thumsup,"not in stock yet")
#this will create a key value pair at the runtime
#while fetching
p menu2.fetch(:dosa)
#there are many inbuil methods
cities = {mumbai:2.2, delhi: 2.3, chennai: 2.5 }
#loop through the hash
# two permanent enumerables are array and hash
cities.each do |key,value|
    puts "#{key} = #{value}"
end
# loop through only keys
cities.each_key do |key|
    puts key
end
# loop through each value
cities.each_value do |value|
    puts value
end
# using index as well
cities.each_with_index do |(key,value),index|
    puts "index : #{index} | key: #{key} | value: #{value}"
end


