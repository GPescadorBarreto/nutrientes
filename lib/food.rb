class Food
    attr_reader :name, :proteins, :carbs, :lipids
    def initialize(name, proteins, carbs, lipids)
        @name = name
        @proteins = proteins
        @carbs = carbs
        @lipids = lipids
    end
    
    def to_s()
        return String.new(@name + ": " + @proteins.to_s + "g proteins, " + @carbs.to_s + "g carbs, " + @lipids.to_s + "g lipids")
    end
    
end