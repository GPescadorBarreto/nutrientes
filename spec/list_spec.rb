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
            @list.put_first(@nodeB)
            expect(@list.head).to_not be nil
            expect(@list.tail).to_not be nil
        end
        
        it "can add several nodes by the left" do
            @list.put_first(@nodeA)
            expect(@list.head).to be @nodeA
            expect(@list.tail).to be @nodeB
            expect(@nodeA.node[:next]).to be @nodeB
            expect(@nodeB.node[:prev]).to be @nodeA
        end
        
        it "can add nodes by the right" do
            @list.put_last(@nodeC)
            expect(@list.tail).to be @nodeC
            expect(@list.head).to be @nodeA
            expect(@nodeC.node[:prev]).to be @nodeB
            expect(@nodeB.node[:next]).to be @nodeC
        end
        
        it "can delete first node" do
            @aux_node = @list.head
            @list.del_first()
            expect(@list.head).to be @aux_node.node[:next]
        end
        
        it "can delete last node" do
            @aux_node = @list.tail
            @list.del_last()
            expect(@list.tail).to be @aux_node.node[:prev]
        end
        
        it "is enumerable" do
            expect(@list.all? { |node| node.node[:value] >= 0}).to be true 
        end
    end
end