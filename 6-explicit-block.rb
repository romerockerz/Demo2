#&block is explicity block
# this & will convert a block to proc
def hug (message, config, &myblock)
    puts message, config
    p myblock
    # p block is a proc
    puts "{"
    #yield "hello" this will print the same as below one
    # as it will call the implicit block
    #yield "hello" if block_given?
     #optional block
    myblock.call
    puts "}"
end


hug "meet me today","food studio" do 
    puts "sure, welcome!"
end
# do is passing and creating a block 
# block is not an object in ruby
# proc is an object