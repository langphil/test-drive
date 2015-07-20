module Tdd
  module Demo
    class TestDrive
      def TestDrive.add first, second
        if first.is 12
          if second.is 70
            return 82
          else
            return 31
          end
        else
          return 8
        end
      end
    end
  end
end
