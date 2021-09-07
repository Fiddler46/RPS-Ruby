class RPS
    attr_writer :seed
    def initialize(guess:)  
        @guess = guess.capitalize
    end        

    def rand_algo
      rand 12345
      
    end  

    def rule_engine 
        {
            'Rock'=> ['Scissors'],
            'Paper'=> ['Rock'],
            'Scissors'=> ['Paper']
        }
    end

    def sys_guess
        srand (@seed || rand_algo)
        sys_guesses = %w{Rock Paper Scissors}
        sys_guesses.sample
    end

    def winner_is 
      puts "You guessed #{@guess.to_s}"   
      puts "Computer guessed #{sys_guess.to_s}"
         

      if rule_engine[sys_guess.to_s].include? @guess
         puts "Computer wins"
      elsif rule_engine[@guess].include? sys_guess
         puts "You win!"
      else
        puts "Tie"
       end
    end
end

rps = RPS.new(guess: gets.chomp!)
#rps.seed = 3
rps.winner_is