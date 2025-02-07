# frozen_string_literal: true

# The CodeMaker class generates a secret code and evaluates guesses
class CodeMaker
  attr_reader :secret_code

  CODE_LENGTH = 4
  CODE_RANGE = (1..6).freeze

  def initialize
    @secret_code = generate_code
  end

  def evaluate_guess(guess)
    exact_matches, remaining_secret, remaining_guess = find_exact_matches(guess)
    partial_matches = find_partial_matches(remaining_secret, remaining_guess)

    { exact: exact_matches, partial: partial_matches }
  end

  private

  def find_exact_matches(guess)
    exact = 0
    remaining_secret = []
    remaining_guess = []

    guess.each_with_index do |num, index|
      if num == secret_code[index]
        exact += 1
      else
        remaining_secret << secret_code[index]
        remaining_guess << num
      end
    end

    [exact, remaining_secret, remaining_guess]
  end

  def find_partial_matches(remaining_secret, remaining_guess)
    partial = 0

    remaining_guess.each do |num|
      if remaining_secret.include?(num)
        partial += 1
        remaining_secret.delete_at(remaining_secret.index(num))
      end
    end

    partial
  end

  def generate_code
    Array.new(CODE_LENGTH) { rand(CODE_RANGE) }
  end
end
