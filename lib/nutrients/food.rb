class Food
    include Comparable
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
    
    def energy()
        return (@proteins * 4 + @carbs * 4 + @lipids * 9)
    end
    
    def <=>(other)
        comparison = energy <=> other.energy
        if comparison == 0
            comparison = proteins <=> other.proteins
            if comparison == 0
                comparison = carbs <=> other.carbs
                if comparison == 0
                    comparison = lipids <=> other.lipids
                end
            end
        end
        return comparison
    end
    
end

class Lacto_Ovo < Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Egg_Based < Lacto_Ovo
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Dairy < Lacto_Ovo
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Meat_Product < Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Meat < Meat_Product
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Meat_Derivate < Meat_Product
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Sea_Product < Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Fish < Sea_Product
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Shellfish < Sea_Product
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Fatty_Food < Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Saturated_Fats < Fatty_Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Carb_Rich < Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Sugary < Carb_Rich
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Grain < Carb_Rich
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Tuber < Carb_Rich
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Vegetable < Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Bulb < Vegetable
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Berry < Vegetable
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Fruit < Food
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end

class Tropical < Fruit
    def initialize(name, proteins, carbs, lipids)
        super(name, proteins, carbs, lipids)
    end
end