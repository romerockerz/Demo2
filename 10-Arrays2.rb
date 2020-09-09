fruits = ["apple","orange","mango","pineapple"]

#destructuring
#break an array and store it into variables
first, *rest = ["apple","oragne","mango","pineapple" ]
puts first, rest.inspect

#ignore rest of teh paramteres
first, * =fruits
puts first

first, *, last =fruits
puts first, last # printed in next line
