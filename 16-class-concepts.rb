class ActiveRecord
    # $ use a global variable accessible from anywhere
    $everywhere = "I am global"

    # @@ for creating static variables /class level
    @@count = 1

    p self #calls itslef
    puts "Hmm.. It is Strange..." # it is like macro method
    attr_accessor :name , :record
    def initialize (name)
        @record = ["mumbai","delhi"]
        @name = name
        @@count = @@count +1
    end

    def self.count=(value) #setter to access the static varibales
        @@count = value
    end

    def self.count # getter to access the static variable
        @@count
    end

    # this is how we create a STATIC method
    # use self.method
    def self.all  #now it is static/class method
        p self # will print the instance reference
        puts "find all record"
    end
    # while parsing the code it actually see puts
    # and is executed
    # even the class is not initiated while loading 
    # of the class the macro methods are also loaded
    # macro methods are powerful
    def save 
        @record << self.name
        puts "save instance method"
    end
end
class User < ActiveRecord	
end

class Post < ActiveRecord
end


ar = ActiveRecord.new("comments")
ActiveRecord.all
ar.save 
p ar.record

p ActiveRecord.count

p User.count

post = Post.new("posts")
Post.count=100
p User.count

