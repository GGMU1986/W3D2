class Board
    LETTERS = ("A".."Z").to_a
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

    def random_letters
        rand = []
        8.times do 
            rand << LETTERS.sample
        end
        rand
    end

    # def populate
    #     i = 0

    #     while i < random_letters.length
    #         pos = [] 
    #         pos << (0..3).to_a.sample 
    #         pos << (0..3).to_a.sample
            
    #     end
    # end

    def populate
        (0...grid.flatten.length).each do |i|
            self.count { |self[i]| self[i] } > 3
            self[i] = random_letters.sample 
        end
    end

    
end

