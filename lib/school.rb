class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
    end
    def grade(num)
        @roster.collect do |grade, students|
            if grade == num
                return students
            end
        end
    end
    def sort
        sorted_hash = {}
        @roster.each do |grade, student|
            sorted_hash[grade] = student.sort
        end
        sorted_hash
    end
end