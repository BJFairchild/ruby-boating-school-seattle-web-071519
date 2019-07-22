class Student
    attr_reader
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(testname, teststatus, instructor)
        BoatingTest.new(self, testname, teststatus, instructor)
    end

    def find_student(name)
        self.all.find do |student|
            student.name == name
        end
    end

    def grade_percentage
        passed_tests = self.tests.select do |test|
            test.teststatus == "passed"
        end
        percentage = passed_tests.length.to_f / self.tests.length.to_f
        percentage.to_f


    end

    def tests
        BoatingTest.all.select do |test|
            test.student == self
            
        end
        
    end



end
