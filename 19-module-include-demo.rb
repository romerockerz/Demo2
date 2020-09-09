require "digest"
# this will be in a separate file
module Encryption 
    def encrypt(str)
        Digest::SHA2.hexdigest(str)     
    end

    def decrypt(estr)
    end
end

module HackEncryption 
    def encrypt(str)
        Digest::SHA2.hexdigest(str) 
        puts "you are hacked"    
    end

    def decrypt(estr)
    end
    def salt
        Time.now
    end

end

class Base
end


class Person < Base
    include Encryption
    include HackEncryption
    # this will add to instance method
    extend HackEncryption
    # this will override if methods
    # are same as in ecryption
    # but main reason is its like multiple inheritance
    # 


    # can also be in seperate file
    # using include will include all methods 
    # it copies and pastes all the method
    # doesnt need to inherit

    # we can also use extend :
    # it will add to the class method
    #def self.encrypt(str)
     #   Digest::SHA2.hexdigest(str) 
      #  puts "you are hacked"    
    #end

    #def self.decrypt(estr)
    #end
    #def self.salt
      #  Time.now
    #end

end

rajesh = Person.new
p rajesh.encrypt("some message encrypted")
p rajesh.salt

p Person.salt

