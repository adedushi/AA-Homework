  class LRUCache
    def initialize(n)
        @buckets = Array.new
        @max_length = n
    end

    def count
        @buckets.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if buckets.include?(el)
        buckets.delete(el)
        buckets << el
      else
        if count < max_length
            buckets << el
        else
            buckets.shift
            buckets << el
        end
      end
    end

    def show
      print buckets
    end

    private
    attr_accessor :buckets
    attr_reader :max_length

  end


  
  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]