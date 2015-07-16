module Tdd
  module Demo
    describe TestDrive do
      context 'Comparisons' do
        it 'knows that 3 is bigger than 2' do
          expect(TestDrive.is_bigger 3, 2).to eq true
        end
      end
    end
  end
end
