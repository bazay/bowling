module Bowling
  class ScoreCalculator
    attr_reader :sum, :frames, :score

    SPARE = '/'.freeze
    STRIKE = 'X'.freeze
    FRAME_TOTAL = (1..10).to_a
    FRAME_BONUS = (11..12).to_a
    FRAME_TURNS = (1..2).to_a

    def initialize(score)
      @score = score
      @sum = 0
      @frames = nil
    end

    def calculate
      @frames = parse_scorecard_into_frames
      frames.each_with_index do |frame, index|
        if index < 10
          if frame.chars.include?(STRIKE)
            # strike
          elsif frame.chars.include?(SPARE)
            # spare
          else
            # regular
          end
          # sum += parse_turn(turn, turns[index+1..index+2])
        elsif index == 10
          # handle 11th frame
          sum += parse_turn(turn, [turns[index+1], 10])
        else
          sum += 30# handle 12th frame
        end
      end
      sum
    end

    private

    def parse_scorecard_into_frames
      score.split(" ").each_with_index.map do |frame|
        frames.gsub(/(.{2})(?=.)/, '\1 \2').split(" ")
      end
    end

    def parse_frames_into_turns(frames)
      frames.flatten
    end

    def parse_turn(turn, )
      case turn
      when 'X'
        25
      when '-'
        0
      when '/'
        10
      else
        turn.to_i
      end
    end
  end
end
