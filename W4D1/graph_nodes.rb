class GraphNode
    attr_reader :neighbors, :value
    attr_writer :neighbors

    def initialize(value)
        @value = value
        @neighbors = Array.new
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]


# print a.neighbors
# print c.neighbors
# print e.neighbors
# print f.neighbors

def bfs(starting_node, target_value)
    queue = []
    queue << starting_node

    while queue.length > 0
        queue.each do |node|
            return node.value if queue.first.value == target_value
            queue.shift
            queue += node.neighbors
        end
    end

    return nil
end

puts bfs(a, "b")