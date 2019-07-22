class BoatingTest
    attr_reader
    attr_accessor :student, :testname, :teststatus, :instructor
    @@all = []

    def initialize(student, testname, teststatus, instructor)
        @student = student
        @testname = testname
        @teststatus = teststatus
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
