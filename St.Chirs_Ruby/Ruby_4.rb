class Student
  def initialize stid, stname
    @student_id = stid
    @student_name = stname
  end

  def show
    puts "===================="
    puts "|id sinh vien |#{@student_id} ten la |#{@student_name}|"
  end
end

Student.new(1, "Hiep").show
Student.new(2, "Long").show
Student.new(3, "Thuan").show
Student.new(4, "Huy").show
Student.new(5, "Minh").show
Student.new(6, "Duc").show
Student.new(7, "Tham").show
