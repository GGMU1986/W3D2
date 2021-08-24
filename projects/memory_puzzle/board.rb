require_relative "./card.rb"

class Board

    attr_reader :size
    
    def initialize(n)
        @grid = Array.new(n) { Array.new(n) }
        @size = n * n
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
        
        (0...@grid.length).each do |i|
            (0...@grid.length).each do |j|
                pos = [i, j]
                self[pos] = cards[i][j].face_value
            end
        end

    end

    def render
        puts "  0 1 2 3"
        @grid.each_with_index do |row, i|
            puts "#{i} " + row.join(" ")
        end
    end

    def won?
        (0...@grid.length).all? do |i|
            (0...@grid.length).all? do |j|
                pos = [i, j]
                self[pos].face_value
            end
        end)


    
end

