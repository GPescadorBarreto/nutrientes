class Node
    @@node_struct = Struct.new(:value, :next, :prev)
    attr_reader :node
    def initialize(value)
        @node = @@node_struct.new(value, nil, nil)
    end
end