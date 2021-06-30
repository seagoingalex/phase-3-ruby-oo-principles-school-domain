require "pry"

class School
    attr_accessor :school_name, :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_students = roster.map do |grade, student|
            roster[grade].sort
        end
        sorted_students
    end

    # def sort
    #     sorted_grade = roster.each do |grade, student|
    #         # grade.sort
    #         student = student.sort
    #     end
    #     sorted_grade
    # end

    # def sort
    #     sorted_students = roster.map {|grade, students| 
    #     puts grade
    #     students.sort}
    #     sorted_students
    #     # puts roster.map {|grade, students| students.sort}
    #     # roster[grade].map {|student| student.sort}
    # end
end

school = School.new("Bayside High School") 
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)

binding.pry