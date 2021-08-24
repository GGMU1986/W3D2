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

    # def random_letters
    #     rand = []
        
    #     while rand.length < 8
    #         rand << LETTERS.sample
    #         rand = rand.uniq
    #     end
    #     rand
    # end
require "byebug"
    def populate 
        randarr = random_letters.dup  
        debugger
        while randarr.all? {|ele| @grid.count "#{ele}" != 2} 
        debugger  
            i = 0
            while i < randarr.length
                debugger
                pos = [] 
                pos << (0..3).to_a.sample 
                pos << (0..3).to_a.sample
                self[pos] = randarr[i]  
                i += 1 
            end
            debugger
        end
        self
    end

    # def populate
    #     (0...@grid.flatten.length).each do |i|
    #         random_letter = random_letters.sample
    #         self[i] = random_letter unless @grid.count "#{random_letter}" == 2 
    #     end
    #     self
    # end

    
end

# @grid.count do |i|
#     random_letters.all? {|ele| ele.count }
# end