class RPS
    attr_writer :seed

    def initialize(guess:)
        @guess = guess.capitalise
    end        

    def rand_algo
        rand 12345
    end

    def rule_engine
        {
            "Rock" => ["Scissors"],
            "Paper" => ["Rock"],
            "Scissors" => ["Paper"]
        }
    def sys_guess
        srand (@random || rand_algo)
        sys_guesses = %w{Rock Paper Scissors}
        sys_guesses.sample
    end