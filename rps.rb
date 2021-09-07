class RPS

    def initialize(guess:)  
        @guess = guess.capitalize
    end        

    def rule_engine 
        {
            'Rock': ['Scissors'],
            'Paper': ['Rock'],
            'Scissors': ['Paper']
        }
    end

    def sys_guess
        rand 12345
        sys_guesses = %w{Rock Paper Scissors}
        sys_guesses.sample
    end

    def winner_is 
         puts sys_guess.to_s
         puts @guess.to_s

        if rule_engine[sys_guess].include? @guess
           puts "Computer wins"
         elsif rule_engine[@guess].include? sys_guess
           puts "You win!"
         else
           puts "Tie"
         end
    end
end

rps = RPS.new(guess: gets)
rps.winner_is