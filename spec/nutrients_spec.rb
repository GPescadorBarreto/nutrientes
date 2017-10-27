require "spec_helper"

RSpec.describe Nutrients do
  it "has a version number" do
    expect(Nutrients::VERSION).not_to be nil
  end
  describe Food do
    
    before(:all) do
      @chocolate = Food.new("chocolate")
    end
    
    it "is named" do
      expect(@chocolate.name).not_to be nil
    end
    
  end
end
