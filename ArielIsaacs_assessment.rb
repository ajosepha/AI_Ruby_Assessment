#1. Arrays
array = ["Blake", "Ashley", "Jeff"]
# Add a element to an array
array.push("Bob")
#pring array
print array
# Write a statement to print out all the elements of the array.
array[1]
#Return the index for the value "Jeff".
array.index("Jeff")

#2 Hashes

nstructor = {:name=>"Ashley", :age=>27}
# Add a new key for location and give it the value "NYC".
instructor[:location] = "NYC"
# Write a statement to print out all the key/value pairs in the hash
print instructor
#Return the name value from the hash.
instructor[:name]
#Return the key name for the value 27.
instructor.key(27)

#3 Nest Structures

school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}
#Add a key to the school hash called "founded_in" and set it to the value 2013.
school[:founded_in] = 2013
#b. Add a student to the school's students' array.
school[:students]<<{:name=>"Rhonda" :grade=> "D"}
#c. Remove "Billy" from the students' array.
school[:students].delete_at(1)
#d. Add a key to every student in the students array called "semester" and assign it the value "Summer".
school[:students].each{ |x| x[:semester]="Summer"}
#e. Change Ashley's subject to "being almost better than Blake"
school[:instructors].each do |instructors|
  if instructors[:name] == "Ashley"
     instructors[:subject] = "being better than blake"
  end
end
#f. Change Frank's grade from "A" to "F".
school[:students].each do |students|
 if students[:name]=="Frank"
  students[:grade] = "F"
 end
end      
#g. Return the name of the student with a "B".
school[:students].each do |students|
  if students[:grade]=="B"
    print students[:name]
  end
end   
#h. Return the subject of the instructor "Jeff".
school[:instructors].each do |instructors|
  if instructors[:name] == "Jeff"
    print instructors[:subject]
   end
end 

# 4 Methods

school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

#Create a method to return the grade of a student, 
#given that student's name. ii. Then use it to refactor your work in 3.i.
def grade(name, schoolvar)
    schoolvar[:students].each do |students|
		if students[:name]==name
		print students[:grade]
		end
	end
end

grade("Sophie", school)			

#Create a method to udpate a instructor's subject given 
#the instructor and the new subject. ii. Then use it to update 
#Blake's subject to "being terrible".	

def subject(instructor, upsubj, schoolvar)
	schoolvar[:instructors].each do |instructors|
		if instructors[:name] == instructor
			instructors[:subject] = upsubj 
		end
	end	
end	

subject("Blake", "being terrible", school)

#Create a method to add a new student to the schools student array. ii. 
#Then use it to add yourself to the school students array.
def addstudent(newname, schoolvar)
	schoolvar[:students]<<{:name=>newname}
end
addstudent("Ariel", school)	

# Create a method that adds a new key at the top level of the school hash, 
#given a key and a value. ii. Then use it to add a "Ranking" key with the value 1.

def newkey(key, value, schoolvar)
	schoolvar[key] = value 
end
newkey(:ranking, 1, school)

school[:founded_in] = 2013

# 5. Object Orientation

class School
	SCHOOLS = [ ]

	attr_accessor :name, :location, :instructors, :students
	attr_reader :ranking

	def initialize (name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = []
		@instructors = []
		SCHOOLS.push self
	end

	def rankmethod(value)
		ranking = value
	end

	#e. Create a method to add a student to the school, given a name, a grade, and a semester.
	def addstudent(name, grade, semester)
		@students.push(:name=>name, :grade=>grade, :semester=>semester)
	end	
	def removestudent(name, grade, semester)
		@students.delete({:name => name, :grade =>grade, :semester => semester})
	end	

	def reset
	SCHOOLS.clear
	end

end	

Flatrion = School.new("Flatiron", "NYC", 1, 4, 2)
rankmethod(3)
Flatiron.addstudent("Bob", 20, "Summer")	
Flatiron.removestudent("BOb", 20, "Summer")
Flatiron.reset

#6. Classes

class Student

    attr_accessor :name, :grade, :semester
    def initialize (name, grade, semester)
        @name = name
        @grade = grade
        @semester = semester
    end
end  

class School
    SCHOOLS = [ ]

    attr_accessor :name, :location, :instructors, :students
    attr_reader :ranking

    def initialize (name, location, ranking, students, instructors)
        @name = name
        @location = location
        @ranking = ranking
        @students = []
        @instructors = []
        SCHOOLS.push self
    end

    def rankmethod(value)
        ranking = value
    end

    def addstudent(student)
        @students.push(student)
    end
    
    def removestudent(name, grade, semester)
        @students.delete([name, grade, semester])
    end

    def reset
    SCHOOLS.clear
    end

end 

   
#Test
Ariel = Student.new("Ariel", "A", "Fall")
Flatiron = School.new("Flatiron", "NYC", 1, 14, 3)
print Flatiron

#7 Self

#a.  "Hello" then the name of the class (in this case, "student")
#b.  student
#c.   I'm not sure about this one.  I think it would put Student
#d.  the class student
#e.  goodbye


