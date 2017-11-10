require "spec_helper"

RSpec.describe Nutrients do
  it "has a version number" do
    expect(Nutrients::VERSION).not_to be nil
  end
  describe Food do
    
    before(:all) do
      @chocolate = Food.new("chocolate", 5.3, 47.0, 30.0)
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
      end
    end
  end
  
end