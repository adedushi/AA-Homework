OCTO = ['fish', 
'fiiish', 
'fiiiiish', 
'fiiiish', 
'fffish', 
'ffiiiiisshh', 
'fsh', 
 'fiiiissshhhhhh'].freeze
def sluggish
    longest = ""
    (0...OCTO.length).each do |i|
        (i + 1...OCTO.length).each do |j|
            if OCTO[j].length > OCTO[i].length
                longest = OCTO[j]
            end
        end
    end

    longest
end

# puts sluggish

def dominant(arr)
    return arr if arr.length <= 1
    mid = arr.length/2
    left = arr[0...mid]
    right = arr[mid..-1]

    sorted = merge(dominant(left), dominant(right))
end

def merge(left, right)
    merged = []
    while !left.empty? && !right.empty?
        if left[0].length > right[0].length
            merged << right.shift
        else
            merged << left.shift
        end
    end

    merged.concat(left)
    merged.concat(right)
    merged
end

# print dominant(OCTO)[-1]

def clever
    longest = ""
    OCTO.each {|word| longest = word if word.length > longest.length}
    longest
end

# puts clever

TILES_ARRAY = ["up", 
"right-up", 
"right", 
"right-down",
"down", 
"left-down", 
"left", 
 "left-up"].freeze

def slow_dance(direction, tiles)
    tiles.each_with_index { |tile, idx| return idx if tile == direction}
end

# puts slow_dance("right-down", TILES_ARRAY)

TILES_HASH = {"up" => 0, 
"right-up" => 1, 
"right" => 2, 
"right-down" => 3,
"down" => 4, 
"left-down" => 5, 
"left" => 6, 
 "left-up" =>7 }

def fast_dance(direction, tiles)
    tiles[direction]
end

puts fast_dance("right-down", TILES_HASH)