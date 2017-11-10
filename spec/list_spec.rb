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
    
    describe List do
        before(:all) do
            @nodeA = Node.new(0)
            @list = List.new()
        end
        
        it "can store data as content (has head and tail node(s))" do
            @list.put_left(@nodeA)
            expect(@list.head).to_not be nil
            expect(@list.tail).to_not be nil
        end
        
        it "can add several nodes by the left" do
            @list.put_left(@nodeB)
            expect(@list.head).to be @nodeB
            expect(@list.tail).to be @nodeA
            expect(@nodeB.node[:next]).to be @nodeA
            expect(@nodeA.node[:prev]).to be @nodeB
        end
    end
end