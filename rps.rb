class RPS
    attr_writer :seed

    def initialize(guess:)
        @guess = guess.capitalise
    end        