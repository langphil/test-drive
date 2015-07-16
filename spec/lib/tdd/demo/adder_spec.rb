module Tdd
  module Demo
    describe Adder do
      it 'knows that 2 + 3 is five' do
        expect(Adder.add 2, 5).to eq 5
      end
    end
  end
end
