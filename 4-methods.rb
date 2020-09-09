# creating methods in ruby

def greeting (message)
    "hello #{message}" # last expression is automatically return
end

p greeting("sir ji") # parenthisis are optional

def write(file,data,mode="w")
    #mode ="w" is default paramter
    puts "#{data} is being written to #{file} in #{mode} mode"
end

write("hello.txt","welcome message")
# if we pass nothing through argument it must return nil
# for that argument. but ruby shows an error

# for multiple arguments 
def sum(*args)
    puts args.inspect
    result =0
    args.each do |item|
        result = result +item
    end
    puts result
end
sum(1,2)
sum(1,2,3,4)
sum(1,2,3,4,5,6,7)
