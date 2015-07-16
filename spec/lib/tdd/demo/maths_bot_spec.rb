module Tdd
  module Demo
    describe MathsBot do
      context 'Addition' do
        it 'knows that 2 + 3 is 5' do
          expect(MathsBot.add 2, 3).to eq 5
        end

        it 'knows that 5 + 3 is 8' do
          expect(MathsBot.add 5, 3).to eq 8
        end
      end
    end
  end
end
