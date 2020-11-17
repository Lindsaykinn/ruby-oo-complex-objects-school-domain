class School
attr_accessor :roster, :name
    def initialize(name)
        @name=name

        @roster = {}

    end

    def add_student(name, grade)    
        
        # a ||= b is a conditional assignment operator. It means if a is undefined or falsey, then evaluate b and set a to the result. Equivalently, if a is defined and evaluates to truthy, then b is not evaluated, and no assignment takes place.


        @roster[grade] ||=[]
        @roster[grade] << name
    end
   
    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, student|
            sorted_roster[grade] = student.sort
        end
        sorted_roster
    end
    
   
end
