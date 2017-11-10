class Node
    @@node_struct = Struct.new(:value)
    attr_reader :node
    def initialize(value)
        @node = @@node_struct.new(value)
    end
end