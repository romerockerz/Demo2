# a simple method
# every method in ruby takes an implicit block of
#code as parameter
def hug (message)# no explicit parameter
    puts message
    puts "{"
    yield "yeild hi" # now this block of code is executed
    puts "}"
    yield "yield bye","seeyou"
end

hug "hello "do |message,message2| # passing through implicit block 
    # invoke the method
    #this statement below is return type
    puts "Thank you #{message} - #{message2}"
end
# every method created takes implicitly block params

#proc
my_proc = proc do
    # any valid ruby code
    puts "I am in a proc"
end
# to call a proc method you need to explicitly use call
my_proc.call # manually calling a proc

# & will convert proc to block method
hug "custom message",&my_proc