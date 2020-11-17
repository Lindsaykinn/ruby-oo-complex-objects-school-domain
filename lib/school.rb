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
   
    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, student|
            sorted_roster[grade] = student.sort
        end
        sorted_roster
    end   
   
end

# Flatiron Solution
# class School
#     attr_accessor :name, :roster
  
#     def initialize(name)
#       @name = name
#       @roster = {}
#     end
  
#     def add_student(student_name, grade)
#       roster[grade] ||= []
#       roster[grade] << student_name
#     end
  
#     def grade(student_grade)
#       roster[student_grade]
#     end
  
#     # this method should arrange the students in each grade by alphabetical order
#     def sort
#       sorted = {}
#       roster.each do |grade, students|
#         sorted[grade] = students.sort
#       end
#       sorted
#     end
#   end
  
