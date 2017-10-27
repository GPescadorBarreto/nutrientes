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
    
  end
end
