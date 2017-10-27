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
  end
end
