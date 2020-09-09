class ActiveRecord
    # p self
    # static kind of variable
    @table_name ="Active record"
    def self.table_name
      @table_name
    end
    # alterante way to create multiple static/class methods

    #rather than using self.all
    class << self
        def all
            puts "Fetch all records.."
        end
        def find_by (criteria, value)
            puts "Find by #{criteria} - #{value}"
        end
    end

    def get_table_name 
      # p self
      # p self.class
  
      # Here # self will instance object
      # From instance grab the class and then invoke the method
      self.class.table_name
  
    end
  
  class User < ActiveRecord 
    # self => User
    # p self 
  
    # class instance variables
    @table_name = "users"
  end
  
  class Address < ActiveRecord 
    @table_name = "address"
  end
  
  #this will create an instance of them and then
  # this variable will be pointed to self/own class
  # so it is inherited like a static variable
  # but the output value would be for that class instance
  # only. So it is static less more instance
  puts User.new.get_table_name  # users
  puts Address.new.get_table_name  # address
  
  # 3.times do  
  #   p User.new.get_table_name 
  #   p Address.new.get_table_name
  # end

p ActiveRecord.all
p ActiveRecord.find_by("mumbia",52985)
  #puts User.table_name
end
