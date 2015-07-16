module Tdd
  module Demo
    describe TestDrive do
      context 'Comparisons' do
        it 'knows that 3 is bigger than 2' do
          expect(TestDrive.is_bigger 3, 2).to eq true
        end

        it 'knows that 4 is smaller than 7' do
          expect(TestDrive.is_bigger 4, 7).to eq false
        end

        it 'knows that 2 is smaller than 19' do
          expect(TestDrive.is_bigger 2, 19). to eq false
        end

        it 'knows that Z is bigger than A' do
          expect(TestDrive.is_bigger 'Z', 'A'). to eq true
        end
      end
    end
  end
end
