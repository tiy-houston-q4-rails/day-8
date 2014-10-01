require 'pry'

### List out all the students
### Find specific student

class Student

  attr_accessor :name


  # attr_accessor creates the following code FOR YOU BOOM
  # def name
  #   @name
  # end
  #
  # def name=(other)
  #   @name = other
  # end


  @@students = []

  def self.all
    @@students
  end

  def self.find_by_name(name)
    @@students.each do |student|
      if student.name == name
        return student
      end
    end
  end

  def self.find_by_name(name)
    @@students.find { |student| student.name == name }
  end

  def initialize(name)
    @name = name
    @@students << self
  end
end

Student.new "Astrid"
Student.new "Jarod"
Student.new "Kevin"
Student.new "Kirt"
Student.new "Thanh"
Student.new "Thanh"
Student.new "Bharvi"

p Student.all
p Student.find_by_name "Thanh"
