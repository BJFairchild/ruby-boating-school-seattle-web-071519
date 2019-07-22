class Instructor
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

    def pass_student(student, testname)
        test_to_pass = BoatingTest.all.find do |test|
            test.testname == testname && test.student == student
        end
            if test_to_pass
                test_to_pass.teststatus = "passed"
            else 
            BoatingTest.new(student, testname, "passed", self)
            end

            test_to_pass
    end


    def fail_student(student, testname)
        test_to_pass = BoatingTest.all.find do |test|
            test.testname == testname && test.student == student
        end
            if test_to_pass
                test_to_pass.teststatus = "failed"
            else 
            BoatingTest.new(student, testname, "failed", self)
            end

            test_to_pass
    end
end

