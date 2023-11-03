class Stack

  def initialize
    @ivar = Array.new
  end

  def push(el)
    @ivar << el
  end

  def pop
    @ivar[0..-2]
  end

  def peek
    @ivar[-1]
  end
end

class Queue
    def initialize
        @queue = Array.new
    end
    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end
end

class Map
    def initialize
      @map = Array.new  
    end

    def set(key, value)
        if @map.none? { |pairs| pairs[0] == key}
            @map << [key, value]
        else @map.each_with_index do |pairs, idx|
            if pairs[0] == key
                pairs[1] = value
            end
        end
        end

    end

    def get(key)
        @map.each do |pairs|
            if pairs[0] == key
                return pairs[1]
            end
        end

        nil
    end

    def delete(key)
        @map.each_with_index do |pairs, idx|
            if pairs[0] == key
                @map.delete_at(idx)
            end
        end

        nil        
    end

    def show
        print @map
    end

end

# a = Map.new
# p a
# a.set(4,3)
# p a
# a.set(4,2)
# a.set(5,3)
# p a
# p a.get(4)
# a.delete(4)
# p a
# a.show