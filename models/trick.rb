module Jugti
  module Models
    class Trick < Default
      one_to_many :records, :class => Jugti::Models::Record

      def max_catches
        self.records.map{|record|
          record.catches
        }.max
      end
    end
  end
end
