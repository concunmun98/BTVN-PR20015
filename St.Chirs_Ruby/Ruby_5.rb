class School
	@@no_of_students = 650
end
class V #School
	@@no_of_students = 75
end
class VI #School
	@@no_of_students = 80
end

puts School.class.eval("@@no_of_students")
puts V.class.eval("@@no_of_students")
puts VI.class.eval("@@no_of_students")	
