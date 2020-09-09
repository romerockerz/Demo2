# this class is also an object
# ruby does'nt have a constructor
class Gadget
    # to create constructor def initialize mthod
    # instance variables @ -> reference for instance variables
    def initialize
        @gadget_type = "electronics"
        @production_no = rand(1..1000)
    end
    #to override to string method
    def to_s
        "Gadget = #{@gadget_type} having serial = #{@production_no}"
    end

    #getter methods
    def gadget_type #getter method explicit
        # to get instance variable
        @gadget_type
    end
    def production_no
        @production_no
    end

    #setter methods
    def gadget_type=(type) #dont give any space
        @gadget_type = type
    end

    #this over rides the to string method of basic object 
end
#.new is used to create an instance of a class
phone = Gadget.new #instance of gadget class
p phone.to_s 

laptop = Gadget.new
p laptop.to_s

p laptop.gadget_type #it looks for method named gadget tyoe
# not instance variable
p laptop.production_no # there are directing to setter methods

laptop.gadget_type = "latpop"

p laptop