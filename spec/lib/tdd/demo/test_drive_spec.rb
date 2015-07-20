module Tdd
  module Demo
    describe TestDrive do
      context 'Comparisons' do
        it 'knows that 3 plus 5 is 8' do
          expect(TestDrive.add 3, 5).to eq 8
        end
      end
    end
  end
end
