# frozen_string_literal: true

# CodeBreaker class handles player guesses
class CodeBreaker
  def initialize
    puts 'CodeBreaker initialized'
  end

  def make_guess
    loop do
      print 'Enter your guess (4 digits, numbers 1-6): '
      guess = gets.chomp.split('').map(&:to_i)

      return guess if valid_guess?(guess)

      puts 'Invalid input. Please enter exactly 4 numbers between 1 and 6.'
    end
  end

  private

  def valid_guess?(guess)
    guess.length == 4 && guess.all? { |num| (1..6).include?(num) }
  end
end
