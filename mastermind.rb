# Contains the logic for checking guesses and giving feedback
module Checks

end

# Contains the logic for creating the code
class CodeCreator

end

# Contains the logic for breaking the code
class CodeBreaker

end

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
