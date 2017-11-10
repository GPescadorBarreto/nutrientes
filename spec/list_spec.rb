require "spec_helper"

RSpec.describe Node do
    before(:all) do
       @nodeA = Node.new(0)
    end
    
    it "has a value" do
        expect(@nodeA.node[:value]).not_to be nil
    end
end

