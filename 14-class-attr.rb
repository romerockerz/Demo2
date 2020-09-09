# this class is also an object
# ruby does'nt have a constructor
class Gadget
    #macro methods inbuild type for setter and getter
    #meta programming
    #dynamically creates getter and setter
    
    attr_reader :production_no
    #attr_writer will only right into the value
    #attr_accessor will create both set and get
    attr_accessor :gadget_type
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
    #this over rides the to string method of basic object 
end
#.new is used to create an instance of a class
phone = Gadget.new #instance of gadget class
#p phone.to_s 

laptop = Gadget.new
#p laptop.to_s

#getting the values
p laptop.gadget_type #it looks for method named gadget tyoe
# not instance variable
p laptop.production_no # there are directing to setter methods

#setting the values
laptop.gadget_type = "dellpc" 

phone.gadget_type = "xiaomi"

p laptop
p phone