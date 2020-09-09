# Create arrays
fruits = ["orange","banana","mango","chickoo"]

puts fruits[1] #puts banana
puts fruits.first #orange
puts fruits.last #chickoo

# pop method -> remove last item
puts fruits.pop
puts ""
puts "remaining fruits"
puts fruits

#adding the element at the last using push
fruits.push("grapes")
puts fruits.last
# second way to add at the last
fruits << "papaya"
puts fruits.last
# .shift removes the first element

fruits << "watermelon"
p fruits
p fruits.shift
puts "orange removed"
p fruits

p fruits.reverse # we get a new reverse array back
# original array is not mutated
p fruits

# if we get nested array (matrix) we get flatten it into
# a simple array
s = [1,2,3,4]
t = [4,5,6,[7,8]]
a = [s,t,9,10]
p a.flatten
# learnt about ! and ? type methods
# ! means destructive type methods
# ? boolean return type methods
puts "shuffle"
p fruits
p fruits.shuffle
p fruits.shuffle
p fruits.shuffle! #it will mutate the array permanently
 
puts "Map Methods"

fruits2 = fruits.map do | fruit|
    fruit.to_sym # datatype in array is transformed
    # to sym covnerts to symbol from string
    # it is changed to symbol type
    # last expression is returned
end
p "Fruits 2 : ", fruits2

# hash = {key1 :"val1" , key2:"val2" }
nums = [1,2,3,4,5,6]
p nums
squares = nums.map.with_index do |n , index|
      # returns a hash   
     {index: n*n}
end
p squares

p squares[0][:index] # accessing the key but each has same key name
# this is an array of hashmaps
# maps will have equal number of output elements
# as they are in input ,so size of array is reserved

# using select we can reduce the array 
numbers = [1,2,3,4,5,6,7,8,9,10]
#greater_4 = numbers.select do |n|
   # n>4
#end
greater_4 = numbers.select {|n| n>4}
#when we have a one line condition same as above
p greater_4
# select return array of conditioned size

mat = [[1,2,3],[4,5,6],[7,8,9]]
sub = mat[1].sum
#sub = mat.column(1)
p sub
