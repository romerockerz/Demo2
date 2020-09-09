# curly brac syntax
#  wew can also use do end syntax
# to initiate a proc we neeed .new
squares_proc = Proc.new { |number| number*number }
squares_lambda = lambda { |number| number*number}
p squares_proc.call(4)
# map is used to transform an array
# for every element the proc would be called
# map method need a block so need to convert proc to block
p [1,2,3].map(&squares_proc)
p [1,2,3].map(&squares_lambda)

#shortcut to create a lambda
twice = -> (x) {2 * x}
p twice.call(20)

root_proc = Proc.new do |num| 
    num ** 0.5
end
root  = -> (y) {y**0.5} 
p [1,634,151352].map(&root_proc)
p [141,41351,1634].map(&root)