require "spec_helper"

RSpec.describe Node do
    before(:all) do
       @nodeA = Node.new(0)
       @nodeB = Node.new(1)
       @nodeC = Node.new(1)
    end
    
    it "has a value" do
        expect(@nodeA.node[:value]).not_to be nil
    end
    
    it "has a next and a prev" do
        @nodeA.node[:prev] = @nodeB
        @nodeA.node[:next] = @nodeC
        expect(@nodeA.node[:next]).not_to be nil
        expect(@nodeA.node[:prev]).not_to be nil
    end
end

