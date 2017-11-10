class Node
    @@node_struct = Struct.new(:value, :next, :prev)
    attr_reader :node
    def initialize(value)
        @node = @@node_struct.new(value, nil, nil)
    end
end

class List
    attr_reader :head, :tail
    def initialize()
        @head = nil
        @tail = nil
    end
   
    def  put_left(new_node)
        if (@head == nil && @tail == nil) then
            @head = new_node
            @tail = new_node
        else
            @head.node[:prev] = new_node
            new_node.node[:next] = @head
            @head = new_node
        end
    end
    
    def  put_right(new_node)
        if (@head == nil && @tail == nil) then
            @head = new_node
            @tail = new_node
        else
            @tail.node[:next] = new_node
            new_node.node[:prev] = @tail
            @tail = new_node
        end
    end
end