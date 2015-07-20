module Tdd
  module Demo
    describe TestDrive do
      context 'Addition' do
        it 'knows that 3 plus 5 is 8' do
          expect(TestDrive.add 3, 5).to eq 8
        end

        it 'knows that 12 plus 19 is 31' do
          expect(TestDrive.add 12, 19).to eq 31
        end
      end
    end
  end
end
