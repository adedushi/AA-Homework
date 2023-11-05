require 'set'
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
    visited = Set.new()


    while queue.length > 0
        node = queue.shift
        while !visited.include?(node)
            return node.value if node.value == target_value
            visited.add(node)
            queue += node.neighbors
        end
    end

    return nil
end

puts bfs(a, "b")
puts bfs(a, "f")