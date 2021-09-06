class RPS

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
    end

    def sys_guess
        srand rand_algo
        sys_guesses = %w{Rock Paper Scissors}
        sys_guesses.sample
    end

    def winner_is
        if rule_engine [sys_guess].include? @guess
          'Computer wins'
        elsif rule_engine[@guess].include? sys_guess
          'You win!'
        else
          'Tie'
        end
    end
