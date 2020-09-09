# proc don't care about the missing arguments
# but lambda care about them
# First Difference
proc1 = Proc.new {|name,age| "your name is #{name} - #{age}"}
# this will always run even if we dont pass any argument
# it returns nil to those not passed
p proc1.call("Cat")

lamda1 =  lambda {|name , age| "Your name is #{name} -#{age}"}
p lamda1.call("Tiger",12)

# Second Difference
# The return values (behaviour is different)

def dietproc 
    status = Proc.new { return "You gave in"}
    #after this return in proc rest of the code
    # is not executed
    # so never give explicit return as it would skip rest of code
    p status.call
    "You completed the diet"
end

result_proc = dietproc
p result_proc

def dietlamda
    status = lambda {return "You gave in"}
    # this returns to the function not skip it
    # so it is useful than proc
    p status.call
    "You completed the diet"
end

result_lamda = dietlamda
p result_lamda