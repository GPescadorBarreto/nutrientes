class Node
    @@node_struct = Struct.new(:value, :next, :prev)
    attr_reader :node
    def initialize(value)
        @node = @@node_struct.new(value, nil, nil)
    end
end

class List
    include Enumerable
    attr_reader :head, :tail
    def initialize()
        @head = nil
        @tail = nil
    end
    
    def each
        aux_node = @head
        while aux_node != nil do
            yield aux_node
            aux_node = aux_node.node[:next]
        end
    end
   
    def  put_first(new_node)
        if (@head == nil && @tail == nil) then
            @head = new_node
            @tail = new_node
        else
            @head.node[:prev] = new_node
            new_node.node[:next] = @head
            @head = new_node
        end
    end
    
    def  put_last(new_node)
        if (@head == nil && @tail == nil) then
            @head = new_node
            @tail = new_node
        else
            @tail.node[:next] = new_node
            new_node.node[:prev] = @tail
            @tail = new_node
        end
    end
    
    def del_first()
        if (@head != @tail)
            @head = @head.node[:next]
            @head.node[:prev] = nil
        else
            @head = nil
            @tail = nil
        end
    end
    
    def del_last()
        if (@head != @tail)
            @tail = @tail.node[:prev]
            @tail.node[:next] = nil
        else
            @head = nil
            @tail = nil
        end
    end
end