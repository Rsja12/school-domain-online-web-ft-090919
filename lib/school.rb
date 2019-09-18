

class School 
  
  attr_accessor :grade, :name 
  attr_reader :roster
  
  def initialize(name)
    @school_name = name 
    @roster = {}
  end 
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end
  
  def grade(grade)
    @roster[grade] 
  end
  
  def sort
    @roster.sort_by(value)
  end
  
end




