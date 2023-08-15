# Contains the logic for checking guesses and giving feedback
module Checks
  def game_over?(code, guess)
    code.join == guess
  end

  def feedback(code, guess)
    # Provide Feedback
    feedback_string = ''
    4.times do |num|
      if code.include?(guess[num])
        if code[num] == guess[num]
          feedback_string += 'B'
        else
          feedback_string += 'W'
        end
      end
    end
    feedback_string
  end
end

# Contains the logic for playing as the Code Breaker
class Game
  extend Checks
  def self.introduction
    puts 'The Mastermind has generated a random 4 letter code!'
    sleep(3)
    puts 'Your job is to crack this code within 12 guesses'
    sleep(3)
    puts 'To make a guess, type the four colors you want to choose, no spaces'
    sleep(4)
    puts 'For example: YGRB'
    sleep(4)
    puts 'After your guess, the Mastermind will give you feedback'
    sleep(3)
    puts 'Each B in its feedback means a correct color in the correct spot'
    sleep(3)
    puts 'Each W in its feedback means a correct color in the incorrect spot'
    sleep(4)
    puts 'For example, BW means you got one color perfectly correct, one in the wrong spot, and two wrong'
    sleep(5)
    puts 'Good luck!'
    sleep(5)
  end

  def self.play
    code = 4.times.map { %w[R B G Y O P].sample }
    p code
    # introduction
    round_count = 0
    while round_count < 12
      puts 'The valid colors are R B G Y O P'
      sleep(2)
      puts 'Please enter your guess'
      guess = gets.chomp
      break if game_over?(code, guess)

      puts feedback(code, guess)
      round_count += 1
    end
    if round_count < 12
      puts "#{guess} was correct! You win!"
    else
      puts 'You reached the maximum round count. You lose'
    end
  end
end


Game.play
