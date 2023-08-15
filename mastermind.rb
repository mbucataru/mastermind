# Contains the logic for checking guesses and giving feedback
module Checks
  def game_over?(code, guess)
    code == guess
  end

  def feedback(code, guess)
    if game_over?(code, guess)
      # End the game
    else
      # Provide Feedback
    end
  end
end

# Contains the logic for playing as the Code Creator
class CodeCreator
  include Checks
  def self.play

  end
end

# Contains the logic for playing as the Code Breaker
class CodeBreaker
  include Checks
  def self.play
    code = 4.times.map { %w[R B G Y O P].sample }
  end
end

# Includes the logic for the interface (main will call Game.play)
class Game
  # Flow of game:
  #   Create a code - Ex: Red, Red, Blue, Green
  #   Flow of round:
  #     Guess Code - Ex: Red, Red, Green, Yellow
  #     Provide Feedback: 1 Black Peg for every perfect guess, 1 White for
  #     a guess that was the correct color but in the wrong spot
  #     Feedback here: 2 Black (for the matching Red), 1 White
  #   Repeat until the code is broken
end
