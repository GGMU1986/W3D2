require_relative "./card.rb"

class Board
    
    def initialize(n)
        @grid = Array.new(n) { Array.new(n) }
    end

    def valid?(pos)
        (0..3).to_a.include?(pos[0]) && (0..3).to_a.include?(pos[1])
    end

    def [](pos)
        @grid[pos[0]][pos[1]]
    end

    def []=(pos, value)
        @grid[pos[0]][pos[1]] = value
    end

    # def flatten
    #     @grid.flatten
    # end

    def populate 
        cards = Card.get_random_cards
        
        (0...@grid.flatten!.length)

    end
    
end

