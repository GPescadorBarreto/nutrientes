class Food
    attr_reader :name, :proteins, :carbs, :lipids
    def initialize(name, proteins, carbs, lipids)
        @name = name
        @proteins = proteins
        @carbs = carbs
        @lipids = lipids
    end
end