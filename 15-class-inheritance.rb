class Animal
    attr_accessor :kingdom
    def initialize
        puts "animal class is reached"
        #if the variable name is incorrect then it will
        # not be accessed by the accessor
        # it will create its own get and set for different variable     
        @kingdom = "jungle"   
    end
    def eat
        puts "I am hungry"
    end

    def walk
        puts "I am strolling"
    end
end

animal = Animal.new
animal.eat

class Cat < Animal
end
class Dog < Animal
    #overrides the walk parent method
    def initialize
        # ALWAYS CALL SUPER
        # now the kingdom is not created
        # contructor is override of the animal
        puts "dog class is created"
        # to call the parent constructor call using suoer
        # now it will also be created
        super
    end

    def walk 
        puts "Hmm..I dont want to walk"
        super # calling the parent method original
    end
end

cat1 = Cat.new
cat1.walk
puts cat1.kingdom

grumpy_dog = Dog.new
grumpy_dog.eat
grumpy_dog.walk
puts grumpy_dog.kingdom