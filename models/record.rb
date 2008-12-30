module Jugti
  module Models
    class Record < Default
      many_to_one :trick, :class => Jugti::Models::Trick

      def date_str
        self.date.strftime("%Y-%m-%d")
      end
    end
  end
end
