class RPS
    attr_writer :seed # Seed attribute to control what the system guesses
    def initialize(guess:)  
        @guess = guess.capitalize
    end        

    def rand_algo # Randomisation algorithm 
      rand 12345
      
    end  

    def rule_engine # Hash that contains key-value pairs of possible winning combinations for RPS
        {
            'Rock' => ['Scissors'],
            'Paper' => ['Rock'],
            'Scissors' => ['Paper']
        }
    end

    def sys_guess # Takes in a control seed to guess the same value or randomly selects one from the given array
        srand (@seed || rand_algo)
        sys_guesses = %w{Rock Paper Scissors}
        sys_guesses.sample
    end

    def winner_is # Checks and compares input vs system guess to see who won or lost or if it's a tie
      sg = sys_guess
      puts "You guessed #{@guess}"   
      puts "Computer guessed #{sg}"

      if rule_engine.key?(@guess)
        if rule_engine[sg].include? @guess
          puts "Computer wins"
        elsif rule_engine[@guess].include? sg
          puts "You win!"
        else
          puts "Tie"
        end
      else
        puts "Incorrect guess, try again!"
      end
    
    end
  
  end

rps = RPS.new(guess: gets.chomp!)
#rps.seed = 2 
rps.winner_is
  

  