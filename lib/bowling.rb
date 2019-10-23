require_relative "bowling/version"
require_relative "bowling/score_calculator"

module Bowling
  class Error < StandardError; end

  def self.run(score)
    puts ScoreCalculator.new.calculate(score).to_s
  end
end
