require "spec_helper"

RSpec.describe Nutrients do
  it "has a version number" do
    expect(Nutrients::VERSION).not_to be nil
  end
  describe Food do
    
    before(:all) do
      @chocolate = Food.new("chocolate", 5.3, 47.0, 30.0)
      @test_array = [Lacto_Ovo.new("Fried Egg", 14.1, 0.0, 19.5),
      Lacto_Ovo.new("Cow Milk", 3.3, 4.8, 3.2),
      Lacto_Ovo.new("Yoghurt", 3.8, 4.9, 3.8),
      Meat_Product.new("Pork", 21.5, 0.0, 6.3),
      Meat_Product.new("Veal", 21.1, 0.0, 3.1),
      Meat_Product.new("Chicken", 20.6, 0.0, 5.6),
      Fish.new("Cod", 17.7, 0.0, 0.4),
      Fish.new("Tunna", 21.5, 0.0, 15.5),
      Fish.new("Salmon", 19.9, 0.0, 13.6),
      Fatty_Food.new("Olive Oil", 0.0, 0.2, 99.6),
      Fatty_Food.new("Butter", 0.7, 0.0, 83.2),
      Fatty_Food.new("Chocolate", 5.3, 47.0, 30.0),
      Carb_Rich.new("Sugar", 0.0, 99.8, 0.0),
      Carb_Rich.new("Rice", 6.8, 77.7, 0.6),
      Carb_Rich.new("Lentils", 23.5, 52.0, 1.4),
      Carb_Rich.new("Potato", 2.0, 15.4, 0.1),
      Vegetable.new("Tomato", 1.0, 3.5, 0.2),
      Vegetable.new("Onion", 1.3, 5.8, 0.3),
      Vegetable.new("Pumpkin", 1.1, 4.8, 0.1),
      Fruit.new("Apple", 0.3, 12.4, 0.4),
      Fruit.new("Banana", 1.2, 21.4, 0.2),
      Fruit.new("Pear", 0.5 ,12.7, 0.3)]
    end
    
    it "is named" do
      expect(@chocolate.name).not_to be nil
    end
    
    it "has a proteins value" do
      expect(@chocolate.proteins).not_to be nil
    end
    
    it "has a carbs value" do
      expect(@chocolate.carbs).not_to be nil
    end
    
    it "has a lipids value" do
      expect(@chocolate.lipids).not_to be nil
    end
    
    it "stores and displays name" do
      expect(@chocolate.name).to eq("chocolate")
    end
    
    it "stores and displays proteins" do
      expect(@chocolate.proteins).to eq(5.3)
    end
    
    it "stores and displays carbs" do
      expect(@chocolate.carbs).to eq(47.0)
    end
    
    it "stores and displays lipids" do
      expect(@chocolate.lipids).to eq(30.0)
    end
    
    it "displays class formatted" do
      expect(@chocolate.to_s).to eq("chocolate: 5.3g proteins, 47.0g carbs, 30.0g lipids")
    end
    
    it "calculates energetic value" do
      expect(@chocolate.energy).to eq(479.2)
    end
    
    it "is comparable" do
      @olive_oil = Saturated_Fats.new("Olive Oil", 0.0, 0.2, 99.6)
      @fried_egg = Egg_Based.new("Fried Egg", 14.1, 0.0, 19.5)
      expect(@chocolate == @chocolate).to be true
      expect(@olive_oil > @fried_egg).to be true
      expect(@chocolate < @olive_oil).to be true
      expect(@chocolate <= @chocolate).to be true
      expect(@fried_egg <= @chocolate).to be true
      expect(@fried_egg >= @fried_egg).to be true
      expect(@olive_oil >= @chocolate).to be true
    end
    
    describe Lacto_Ovo do
      describe Egg_Based do
        before(:all) do
          @fried_egg = Egg_Based.new("Fried Egg", 14.1, 0.0, 19.5)
        end
        
        it "has the correct class" do
          expect(@fried_egg.class).to eq(Egg_Based)
        end
        
        it "has the correct superclass" do
          expect(@fried_egg.class.superclass).to eq(Lacto_Ovo)
        end
        
        it "is part of a hierarchy" do
          expect(@fried_egg.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@fried_egg.respond_to?(:energy)).to eq(true)
        end
      end
  
      describe Dairy do
        before(:all) do
          @cow_milk = Dairy.new("Cow Milk", 3.3, 4.8, 3.2)
        end
    
        it "has the correct class" do
          expect(@cow_milk.class).to eq(Dairy)
        end
    
        it "has the correct superclass" do
          expect(@cow_milk.class.superclass).to eq(Lacto_Ovo)
        end
    
        it "is part of a hierarchy" do
          expect(@cow_milk.class.ancestors.include?(Food)).to eq(true)
        end
        
        it "responds to superclass methods" do
          expect(@cow_milk.respond_to?(:energy)).to eq(true)
        end
      end
    end
    
    describe Meat_Product do
      describe Meat do
        before(:all) do
          @pork = Meat.new("Pork", 21.5, 0.0, 6.3)
        end
    
        it "has the correct class" do
          expect(@pork.class).to eq(Meat)
        end
    
        it "has the correct superclass" do
          expect(@pork.class.superclass).to eq(Meat_Product)
        end
    
        it "is part of a hierarchy" do
          expect(@pork.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@pork.respond_to?(:energy)).to eq(true)
        end
      end
    end
    
    describe Sea_Product do
      describe Fish do
        before(:all) do
          @cod = Fish.new("Cod", 17.7, 0.0, 0.4)
        end
    
        it "has the correct class" do
          expect(@cod.class).to eq(Fish)
        end
    
        it "has the correct superclass" do
          expect(@cod.class.superclass).to eq(Sea_Product)
        end
    
        it "is part of a hierarchy" do
          expect(@cod.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@cod.respond_to?(:energy)).to eq(true)
        end
      end
    end
    
    describe Fatty_Food do
      describe Saturated_Fats do
        before(:all) do
          @olive_oil = Saturated_Fats.new("Olive Oil", 0.0, 0.2, 99.6)
        end
    
        it "has the correct class" do
          expect(@olive_oil.class).to eq(Saturated_Fats)
        end
    
        it "has the correct superclass" do
          expect(@olive_oil.class.superclass).to eq(Fatty_Food)
        end
    
        it "is part of a hierarchy" do
          expect(@olive_oil.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@olive_oil.respond_to?(:energy)).to eq(true)
        end
      end
    end
    
    describe Carb_Rich do
      describe Sugary do
        before(:all) do
          @sugar = Sugary.new("Sugar", 0.0, 99.8, 0.0)
        end
    
        it "has the correct class" do
          expect(@sugar.class).to eq(Sugary)
        end
    
        it "has the correct superclass" do
          expect(@sugar.class.superclass).to eq(Carb_Rich)
        end
    
        it "is part of a hierarchy" do
          expect(@sugar.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@sugar.respond_to?(:energy)).to eq(true)
        end
      end
      describe Grain do
        before(:all) do
          @rice = Grain.new("Rice", 6.8, 77.7, 0.6)
        end
    
        it "has the correct class" do
          expect(@rice.class).to eq(Grain)
        end
    
        it "has the correct superclass" do
          expect(@rice.class.superclass).to eq(Carb_Rich)
        end
    
        it "is part of a hierarchy" do
          expect(@rice.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@rice.respond_to?(:energy)).to eq(true)
        end
      end
      describe Tuber do
        before(:all) do
          @potatoes = Tuber.new("Potatoes", 2.0, 15.4, 0.1)
        end
    
        it "has the correct class" do
          expect(@potatoes.class).to eq(Tuber)
        end
    
        it "has the correct superclass" do
          expect(@potatoes.class.superclass).to eq(Carb_Rich)
        end
    
        it "is part of a hierarchy" do
          expect(@potatoes.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@potatoes.respond_to?(:energy)).to eq(true)
        end
      end
    end
    
    describe Vegetable do
      describe Bulb do
        before(:all) do
          @onion = Bulb.new("Onion", 1.3, 5.8, 0.3)
        end
    
        it "has the correct class" do
          expect(@onion.class).to eq(Bulb)
        end
    
        it "has the correct superclass" do
          expect(@onion.class.superclass).to eq(Vegetable)
        end
    
        it "is part of a hierarchy" do
          expect(@onion.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@onion.respond_to?(:energy)).to eq(true)
        end
      end
      
      describe Berry do
        before(:all) do
          @pumpkin = Berry.new("Pumpkin", 1.1, 4.8, 0.1)
        end
    
        it "has the correct class" do
          expect(@pumpkin.class).to eq(Berry)
        end
    
        it "has the correct superclass" do
          expect(@pumpkin.class.superclass).to eq(Vegetable)
        end
    
        it "is part of a hierarchy" do
          expect(@pumpkin.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@pumpkin.respond_to?(:energy)).to eq(true)
        end
      end
    end
    
    describe Fruit do
      describe Tropical do
        before(:all) do
          @banana = Tropical.new("Banana", 1.2, 21.4, 0.2)
        end
    
        it "has the correct class" do
          expect(@banana.class).to eq(Tropical)
        end
    
        it "has the correct superclass" do
          expect(@banana.class.superclass).to eq(Fruit)
        end
    
        it "is part of a hierarchy" do
          expect(@banana.class.ancestors.include?(Food)).to eq(true)
        end
        it "responds to superclass methods" do
          expect(@banana.respond_to?(:energy)).to eq(true)
        end
      end
    end
    
  end
  
end