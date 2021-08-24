class Card
    attr_reader :face_value, :face_up
    def initialize(face_value)
        @face_value = face_value
        @face_up = @face_value
    end

    def hide 
        @face_up = false
    end

    def reveal
        @face_up = true
    end
    

end