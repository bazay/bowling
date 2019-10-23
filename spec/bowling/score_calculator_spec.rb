require "bowling/score_calculator"
require "pry"

RSpec.describe Bowling::ScoreCalculator do
  subject(:calculator) { described_class.new }

  describe '#calculate' do
    subject(:calculate) { calculator.calculate(score) }

    context "when score = 'X X X X X X X X X X X X'" do
      let(:score) { 'X X X X X X X X X X X X' }

      it { is_expected.to eq 300 }
    end

    context "when score = '9- 9- 9- 9- 9- 9- 9- 9- 9- 9-'" do
      let(:score) { '9- 9- 9- 9- 9- 9- 9- 9- 9- 9-' }

      it { is_expected.to eq 90 }
    end

    context "when score = '5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/5'" do
      let(:score) { '5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/5' }

      fit { binding.pry;is_expected.to eq 150 }
    end
  end
end
