class Experiment
    attr_reader :people
    def initialize(people_)
        @people = people_
    end
end

class Person
    attr_reader :foods
    def initialize(foods_)
        @foods = foods_
    end
end