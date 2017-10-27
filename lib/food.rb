class Food
    attr_reader :name, :proteins, :carbs
    def initialize(name, proteins, carbs)
        @name = name
        @proteins = proteins
        @carbs = carbs
    end
end