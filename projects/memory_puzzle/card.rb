class Card

    LETTERS = ("A".."Z").to_a
    
    attr_reader :face_value, :face_up

    def self.get_random_cards
        array = LETTERS.shuffle.take(8)
        doubled = array += array
        doubled.shuffle.map { |face_value| Card.new(face_value) }
    end

    def initialize(face_value)
        @face_value = face_value #letter
        @face_up = false
    end

    def hide 
        @face_up = false
    end

    def reveal
        @face_up = true
    end
    
    def ==(other_card)
        self.face_value == other_card.face_value
    end

    def to_s
        if face_up == true 
            @face_value
        else
            ""
        end
    end

end