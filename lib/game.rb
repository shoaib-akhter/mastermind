# frozen_string_literal: true

require_relative 'code_maker'
require_relative 'code_breaker'

# Game class controls overall game flow
class Game
  def initialize
    @code_maker = CodeMaker.new
    @code_breaker = CodeBreaker.new
    display_welcome_message
    puts "Generated Code: #{@code_maker.secret_code}" # Temporary output for testing
  end

  def play
    puts "Let's play! You have #{MAX_ATTEMPTS} attempts to crack the code."

    MAX_ATTEMPTS.times do |attempt|
      play_round(attempt)
    end

    puts "Game over! The secret code was #{@code_maker.secret_code}."
  end

  private

  def play_round(attempt)
    puts "\nAttempt ##{attempt + 1}:"
    guess = @code_breaker.make_guess
    feedback = @code_maker.evaluate_guess(guess)

    puts "You guessed: #{guess}"
    display_feedback(feedback)

    return unless feedback[:exact] == 4

    puts "Congratulations! You cracked the code in #{attempt + 1} attempts!"
    exit
  end

  def display_feedback(feedback)
    puts "Feedback: #{feedback[:exact]} exact match(es), #{feedback[:partial]} partial match(es)"
  end

  def display_welcome_message
    puts 'Welcome to the game!'
  end
end
