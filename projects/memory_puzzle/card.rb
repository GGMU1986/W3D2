class Card
    attr_reader :face_value, :face_up
    def initialize(face_value, face_up)
        @face_value = face_value
        @face_up = false
    end

    def card_value
        if @face_up
            @face_value
        else
            "_"
        end
    end
end