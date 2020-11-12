class Person
    attr_accessor :name, :height, :weight
    attr_reader :dob

    def initialize
        @dob = Time.now
    end
end